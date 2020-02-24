function [ ] = eventTrackingCargo( ip )
%% Event tracking - Cargo mode
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

fprintf('\nTracking events...\n')
% Migrate input parameters
restoreR0 = ip.R0;
restoreR = ip.R;
restoreSamplePre = ip.samplePre;
restoreSamplePost = ip.samplePost;
restoreStartTimeScan = ip.startTimeScan;
restoreZSearchDistance = ip.zSearchDistance;

nExperiments = length(ip.allExperiments);

cd (char(ip.mdp))
load 'masks.mat'; %#ok<*LOAD>
default_objectMask = masks.d6.object; %#ok<NASGU>
default_localbgMask = masks.d6.localbg; %#ok<NASGU>
default_objectMask_restore = masks.d6.object;
default_localbgMask_restore = masks.d6.localbg;

nEvents = 0;
allEvents = cell(0);
cd (char(ip.dataDir));

% Create struct containing all events to be tracked
% Create cell array list of all events to be analyzed
for ee = 1:nExperiments
    pw = [ip.dataDir filesep ip.allExperiments{ee}];
    cd (char(pw))
    if ip.trackAll_TS == 1
        dirData = dir; % Get the data for the current directory
        dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
        dirData(strncmp({dirData.name}, '~', 1)) = [];
        dirIndex = [dirData.isdir];  % Find the index for directories
        tsDirs = {dirData(dirIndex).name}';
        tsDirsField = tsDirs;
    elseif ip.trackAll_TS == 0
        dirData = dir; % Get the data for the current directory
        idx = 1;
        for ii = 1:length(dirData) % Include only selected files
            if (dirData(ii).name(length(dirData(ii).name)) == '#') == 1
                tsDirs(idx,1) = {dirData(ii).name};
                tsDirsField(idx,1) = {dirData(ii).name(1:(length(dirData(ii).name)-1))};
                idx = idx+1;
            end
        end
    end
    
    switch ip.skipValidated_tracking.Value
        case 'yes'
            dirData2 = dir; % Get the data for the current directory
            dirData2(strncmp({dirData2.name}, '.', 1)) = []; % Remove false files
            dirData2(strncmp({dirData2.name}, '~', 1)) = [];
            dirIndex = [dirData2.isdir];  % Find the index for directories
            tsDirs2 = {dirData2(dirIndex).name}';
            cd (char(tsDirs2(1)));
            cd 'eventKey';
            
            eventKey = readtable('eventKey_curated.csv', 'Delimiter', 'comma', 'ReadVariableNames', 0);
            if size(eventKey,2) < 5 || size(eventKey,2) > 7
                eventKey = readtable('eventKey_curated.csv', 'Delimiter', ';', 'ReadVariableNames', 0);
            end
            if size(eventKey,2) < 5 || size(eventKey,2) > 7
                fprintf('\nCould not load eventKey_curated.csv. Delimiter settings not correct.\n')
                continue
            end
            cd (['..' filesep '..'])
    end
    
    nTsEvents = 0;
    for ts = 1:length(tsDirs)
        cd (char(tsDirs(ts)));
        cd 'eventMetadata'
        clear dir
        dirData = dir; % Get the data for the current directory
        dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
        dirData(strncmp({dirData.name}, '~', 1)) = [];
        dirIndex = [dirData.isdir];  % Find the index for directories
        cellDirs = {dirData(dirIndex).name}';
        
        for kk = 1:length(cellDirs)
            cellDir = cellDirs{kk};
            if (cellDir(length(cellDir)) == '#') == 1
                cellDirsField(kk) = {cellDir(1:length(cellDir)-1)}; %#ok<*AGROW>
            else
                cellDirsField(kk) = {cellDir};
            end
        end
        
        for iCellDirs = 1:length(cellDirs)
            cd (char(cellDirs(iCellDirs)));
            clear dir
            if ip.trackAll_events == 1
                dirData = dir; % Get the data for the current directory
                dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
                dirData(strncmp({dirData.name}, '~', 1)) = [];
                dirIndex = [dirData.isdir];  % Find the index for directories
                cellEvents = {dirData(dirIndex).name}';
                cellEventsField = cellEvents;
            elseif ip.trackAll_events == 0
                dirData = dir; % Get the data for the current directory
                idx = 1;
                for ii = 1:length(dirData) % Include only selected files
                    if (dirData(ii).name(length(dirData(ii).name)) == '#') == 1
                        cellEvents(idx,1) = {dirData(ii).name};
                        cellEventsField(idx,1) = {dirData(ii).name(1:(length(dirData(ii).name)-1))};
                        idx = idx+1;
                    end
                end
            end
            if exist('cellEvents','var') == 0
                cd (['..' filesep])
                continue
            end
            
            for iCellEvents = 1:length(cellEvents)
                
                switch ip.skipValidated_tracking.Value
                    case 'yes'
                        indexMat_TS = strcmp(eventKey.Var2, tsDirsField(ts));
                        indexMat_cell = strcmp(eventKey.Var3, cellDirsField(iCellDirs));
                        indexMat_event = strcmp(eventKey.Var4, cellEventsField(iCellEvents));
                        indexSum = indexMat_TS + indexMat_cell + indexMat_event;
                        keyIndex = find(indexSum == 3);
                        task = str2double(eventKey.Var5{keyIndex});
                        
                        if isnan(task)
                            task = eventKey.Var5{keyIndex};
                            if strcmpi(task,'OK') == 1 %exclude
                                continue
                            end
                        else % if number, eg last valid frame
                            continue
                        end
                end
                
                cd (char(cellEvents(iCellEvents)))
                load 'eventMetadata.mat';
                
                nTsEvents = nTsEvents + 1;
                nEvents = nEvents + 1;
                
                allEvents(nEvents, 1 ) = {char(ip.allExperiments(ee))};
                allEvents(nEvents, 2 ) = {char(tsDirs(ts))};
                allEvents(nEvents, 3 ) = {char(cellDirs(iCellDirs))};
                allEvents(nEvents, 4 ) = {char(cellEvents(iCellEvents))};
                allEvents(nEvents, 5 ) = {char(tsDirsField(ts))};
                allEvents(nEvents, 6 ) = {char(cellDirsField(iCellDirs))};
                cd (['..' filesep])
            end %cellEvents
            clear cellEvents cellEventsField
            cd (['..' filesep])
        end % cellDirs
        cd (['..' filesep '..'])
    end % tsDirs
    cd (['..' filesep])
    clear tsDirs
end % nExperiments

% CAPTURE BATCH ANALYSIS LOOP
% Loop-analyze all captures listed above
% Load data and metadata of current capture
for iEvents = 1:size(allEvents,1)
    fprintf('.')
    for ee = 1:nExperiments
        if  ~contains(allEvents(iEvents,1), char(ip.allExperiments(ee))) == 0
            allChannels = ip.allChannels.(char(ip.allExperiments(ee)));
            emWavelengths = ip.emWavelengths.(char(ip.allExperiments(ee)));
            nChannels = length(allChannels);
        end
    end
    
%   Create variables for even metadata parameters
    exp = cell2mat(allEvents(iEvents, 1));
    ts = cell2mat(allEvents(iEvents, 2));
    CELL = cell2mat(allEvents(iEvents, 3));
    event = cell2mat(allEvents(iEvents, 4));
    tsField = cell2mat(allEvents(iEvents, 5)); %#ok<NASGU>
    cellField = cell2mat(allEvents(iEvents, 6));
    
    if ip.trackAll_events == 1
       cellEventsPath = event;
    elseif ip.trackAll_events == 0
        cellEventsPath = event(1:length(event)-1);
    end
    
    %   Load eventMetadata  Load manTrack    
    pw = [ip.dataDir filesep exp filesep ts filesep 'eventMetadata' filesep CELL filesep event];
    cd (char(pw));
        
     if exist('manTrack.mat','file') == 2
         load 'manTrack.mat'
         load('eventMetadata.mat')
     else
        keepDir = pwd;
        fprintf('\nCould not find manTrack-file %s %s, skipping...\n', ts, event)
        pw = [ip.dataDir filesep exp filesep ts];
        cd (char(pw));
        destination = 'cargoTrackingdata';
        if ~exist(destination,'dir')
            mkdir(destination);
        end
        cd 'cargoTrackingdata';
        
        if (CELL(length(CELL)) == '#') == 1
            CELL = CELL(1:length(CELL)-1);
        end
        destination = char(CELL);
        if ~exist(destination,'dir')
            mkdir(destination);
        end
        cd (char(CELL));
        
        if (event(length(event)) == '#') == 1
            event = event(1:length(event)-1);
        end
        destination = char(event);
        if ~exist(destination,'dir')
            mkdir(destination);
        end
        cd (char(event));
        trackingdata.t0_not_found = [];
        trackingdata.t0 = 31;
        
        filepath = [ip.dataDir filesep exp filesep ts filesep 'eventROIs' filesep cellField filesep cellEventsPath filesep 'eventROI.mat'];
        center_z = floor(size(filepath,3)/2);
        center_y = floor(size(filepath,1)/2);
        center_x = floor(size(filepath,2)/2);
        nPlanes = size(filepath,3);
        nTimes = size(filepath,4);
        nChannels = size(filepath,5);
        coordinates = zeros(nTimes,4);
        for iTime = 1:nTimes
            coordinates(iTime,1) = center_x;
            coordinates(iTime,2) = center_y;
            coordinates(iTime,3) = center_z;
            coordinates(iTime,4) = iTime;
        end
        trackingdata.coordinates.data = coordinates;
        
        tracksFrame = zeros(size(filepath,1),size(filepath,2));
        positions = [center_y center_x];
        text = 'No manTrack';
        tracksFrame = insertText(tracksFrame,positions,text, 'AnchorPoint', 'Center', 'BoxColor', 'black', 'TextColor', 'white','BoxOpacity', 0);
        tracksFrame = im2bw(tracksFrame); %#ok<*IM2BW>
        tracksFrame = tracksFrame*2^16;
        
        tracks = zeros(size(filepath));
        for iTimes = 1:nTimes
            for iPlanes = 1:nPlanes
                tracks(:,:,iPlanes,iTimes) = tracksFrame;
            end
        end
        
        files = {'trackingdata' 'tracks'};
        for iFiles = 1:length(files)
            if ~exist(files{iFiles},'file') == 0
                delete(files{iFiles})
            end
            save(files{iFiles}, files{iFiles})
        end
        clear 'trackingdata' 'tracks'
        cd (keepDir)
        continue
    end

%   Load eventROI    
    pw = [ip.dataDir filesep exp filesep ts filesep 'eventROIs' filesep cellField filesep cellEventsPath];
    cd (char(pw));
    load('eventROI.mat')
    load('roiMetadata.mat')  
    
    fn = fieldnames(roiMetadata);
    for ii = 1:length(fn)
        if isnan(roiMetadata.(char(fn(ii)))) == 1 %#ok<*COMPNOP>
            roiMetadata = rmfield(roiMetadata,(char(fn(ii))));
        end
    end
    
    cd (char(ip.fdp))
    [corrROI, corrMetadata] = chromCorrection(ip,eventROI,roiMetadata,nChannels,emWavelengths); %#ok<*ASGLU>
    eventROI_noCorr = eventROI; %#ok<NASGU>
    eventROI = corrROI; 
    
    if nChannels == 2
        if strcmp(ip.channelOrder.primary,'channel_B') == 1
            permROI = zeros(size(eventROI));
            permROI(:,:,:,:,1) = eventROI(:,:,:,:,2);
            permROI(:,:,:,:,2) = eventROI(:,:,:,:,1);
            eventROI = permROI;
        end
        
    elseif nChannels == 3
        if strcmp(ip.channelOrder.primary,'channel_A') == 1
            if strcmp(ip.channelOrder.secondary,'channel_C') == 1
                 permROI = zeros(size(eventROI));
                 permROI(:,:,:,:,1) = eventROI(:,:,:,:,1);
                 permROI(:,:,:,:,2) = eventROI(:,:,:,:,3);
                 permROI(:,:,:,:,3) = eventROI(:,:,:,:,2);
                 eventROI = permROI;
            end
            
        elseif strcmp(ip.channelOrder.primary,'channel_B') == 1
            if strcmp(ip.channelOrder.secondary,'channel_A') == 1
                 permROI = zeros(size(eventROI));
                 permROI(:,:,:,:,1) = eventROI(:,:,:,:,2);
                 permROI(:,:,:,:,2) = eventROI(:,:,:,:,1);
                 permROI(:,:,:,:,3) = eventROI(:,:,:,:,3);
                 eventROI = permROI;                
                
            elseif strcmp(ip.channelOrder.secondary,'channel_C') == 1
                 permROI = zeros(size(eventROI));
                 permROI(:,:,:,:,1) = eventROI(:,:,:,:,2);
                 permROI(:,:,:,:,2) = eventROI(:,:,:,:,3);
                 permROI(:,:,:,:,3) = eventROI(:,:,:,:,1);
                 eventROI = permROI;                     
            end
            
        elseif strcmp(ip.channelOrder.primary,'channel_C') == 1
            if strcmp(ip.channelOrder.secondary,'channel_B') == 1
                 permROI = zeros(size(eventROI));
                 permROI(:,:,:,:,1) = eventROI(:,:,:,:,3);
                 permROI(:,:,:,:,2) = eventROI(:,:,:,:,2);
                 permROI(:,:,:,:,3) = eventROI(:,:,:,:,1);
                 eventROI = permROI;                  
                
            elseif strcmp(ip.channelOrder.secondary,'channel_A') == 1
                 permROI = zeros(size(eventROI));
                 permROI(:,:,:,:,1) = eventROI(:,:,:,:,3);
                 permROI(:,:,:,:,2) = eventROI(:,:,:,:,1);
                 permROI(:,:,:,:,3) = eventROI(:,:,:,:,2);
                 eventROI = permROI;    
            end
        end  
    end
    
    
    
%%%
           
%   Define parameters of the current event
    nTimes = size(eventROI, 4); %#ok<*NODEF>
    xDim = {roiMetadata.xEnd - roiMetadata.xLim + 1}; 
    yDim = {roiMetadata.yEnd - roiMetadata.yLim + 1};
    nPlanes = roiMetadata.nPlanes;
     xCC = roiMetadata.xCC; %+ corrMetadata.shift_x;
     yCC = roiMetadata.yCC; %+ corrMetadata.shift_y;
    tCC = roiMetadata.tCC;
    trackingdata.tStartROI = roiMetadata.tStart;
    trackingdata.tEndROI = roiMetadata.tEnd;
    
    
    % Calculate data subset-generating parameters from properties of the
    % loaded masks. o- = object; d- = donut; -UL = Up&Left; -DR = Down&Right
    default_objectMask = default_objectMask_restore;
    default_localbgMask = default_localbgMask_restore;
    if isfield(roiMetadata, 'default_objectMask') == 1
        default_objectMask = masks.(sprintf('d%d',roiMetadata.default_objectMask)).object;
        default_localbgMask = masks.(sprintf('d%d',roiMetadata.default_objectMask)).localbg;
    end
    % OBJECT MASK
    % Odd px width
    if mod(length(default_objectMask), 2) == 1
        oUL = 0.5*(length(default_objectMask) -1);
        oDR = oUL;
        % Even px width
    elseif mod(length(default_objectMask), 2) == 0
        oUL = (0.5*length(default_objectMask)) -1;
        oDR = oUL+1;
    end
    
    % DONUT MASK
    % Odd px width
    if mod(length(default_localbgMask), 2) == 1
        dUL = 0.5*(length(default_localbgMask) -1);
        dDR = dUL;
        
        % Even px width
    elseif mod(length(default_localbgMask), 2) == 0
        dUL = (0.5*length(default_localbgMask)) -1;
        dDR = dUL+1;
    end
    
%   Preallocate tracks-struct
%   Create struct with same number of zeros-array as timepoints
%   in capture
    clear tracks
    tracks = zeros(cell2mat(yDim),cell2mat(xDim), nPlanes, nTimes);  
        
%   Restore search radius parameters to general setup values
    ip.R0 = restoreR0;
    ip.R = restoreR;
    ip.startTimeScan = restoreStartTimeScan;
    ip.zSearchDistance = restoreZSearchDistance;
    nSTD = ip.t0_STD;
    
    if isfield(roiMetadata, 'scanPre') == 1
       ip.startTimeScan = roiMetadata.scanPre;
    end
        
    if isfield(roiMetadata, 'searchDistance') == 1
       ip.R0 = roiMetadata.searchDistance;
    end
       
    if isfield(roiMetadata, 'trackingDistance') == 1
       ip.R = roiMetadata.trackingDistance;
    end
    
    if isfield(roiMetadata, 'zSearchDistance') == 1
       ip.zSearchDistance = roiMetadata.zSearchDistance;
    end
    
    if isfield(roiMetadata, 't0_STD') == 1
       nSTD = roiMetadata.t0_STD;
    end
            
%   Determine maximum number of allowed pre-event and post-event 
%   sampling timepoints. If event is located within 25 timepoints 
%   from start of capture or 55 timepoints from end of capture, 
%   sample from\to first or last z-Stack instead. First restore values
%   from previuos event to general setup values
    ip.samplePre = restoreSamplePre;
    ip.samplePost = restoreSamplePost;
    if ip.samplePre >= tCC
       ip.samplePre = (tCC-1);
    end

    if tCC + ip.samplePost > nTimes
       ip.samplePost = (nTimes - tCC);
    end
        
%   Preallocate array for data used to identify time of event (t0)
%   (arbitrary size)
    d_t0_Data = zeros(nPlanes, nTimes);

%   DETERMINE TIME OF THE EVENT [t0]
%   Setup 'Identify t0-coordinates loop' parameters
%   Enter 'Identify t0-coordinates loop'
%   Define object search distance (square search, 0.5 x side length)    
    if ip.startTimeScan > ip.samplePre
       ip.startTimeScan = ip.samplePre;       
    end
    
    
    t0found = 0;
    for iTime = (tCC-ip.startTimeScan):(tCC+ip.samplePost)
          if t0found == 1
             break
          end
%         Find maximum intensity fit of object mask in each z-Plane
          for iPlane = 1:nPlanes     
              findMax = 0;
              data = eventROI(:,:,iPlane,iTime,1);
              for iY = (yCC-ip.R0):(yCC+ip.R0)
              for iX = (xCC-ip.R0):(xCC+ip.R0)
                  subset = data((iY-oUL):(iY+oDR), (iX-oUL):(iX+oDR));
                  maskedObject = subset.*default_objectMask;
                  meanMaskValue = sum(sum(maskedObject)) / ...
                  length(default_objectMask(default_objectMask==1));
                  if  meanMaskValue > findMax
                      findMax = meanMaskValue;
                  end
              end % iX
              end % iY 
%             Log z-Plane max mean pixel value in d_t0_Data
              d_t0_Data(iPlane, (iTime-(tCC-ip.startTimeScan)+1)) = findMax;
          end

%         Determine if significant Galectin recruitment has occured. If so, the while loop will end
          if (iTime-(tCC-ip.startTimeScan)+1) >= ip.minTimpoints_preEvent
             preEvent_maxData = max(d_t0_Data(:,(1:(iTime-(tCC-ip.startTimeScan))))); %%%%%%%%%%%%%%%%
             MEAN = mean(preEvent_maxData);
             STD = std(preEvent_maxData);

             if max(d_t0_Data(:,iTime-(tCC-ip.startTimeScan)+1)) > MEAN + nSTD*STD %%%%%%%%%%%%%
                conf_t0 = iTime;

%               Find ULQ-coordinates of max mask fit in conf_t0 z-stack
                findMax = 0;
                for iPlane = 1:nPlanes     
                    data = eventROI(:,:,iPlane,conf_t0,1);
                    for iY = (yCC-ip.R0):(yCC+ip.R0)
                    for iX = (xCC-ip.R0):(xCC+ip.R0)
                        subset = data((iY-oUL):(iY+oDR), (iX-oUL):(iX+oDR));
                        maskedObject = subset.*default_objectMask;
                        meanMaskValue = sum(sum(maskedObject)) / ...
                        length(default_objectMask(default_objectMask==1));      
                        if  meanMaskValue > findMax
                            findMax = meanMaskValue;
                            zCC_t0 = iPlane;
                            yCC_StackMax = iY;
                            xCC_StackMax = iX;
                        end
                    end
                    end
                end
                yCC_Fit = yCC_StackMax;
                xCC_Fit = xCC_StackMax;
                yCC_Fit_init = yCC_StackMax;
                xCC_Fit_init = xCC_StackMax;

%               Confirm if true t0 or not: Check confirmTimes number of timepoints post-Event
                isDism = 0;
                for tConf = (conf_t0+1):(conf_t0+ip.confirmTimes)
                      if isDism == 1
                         break
                      end
                      findStackMax = 0;
                      for iPlane = 1:nPlanes     
                      findPlaneMax = 0;
                      try data = eventROI(:,:,iPlane,tConf,1);
                      catch
                          break
                      end
                      for iY = (yCC_Fit-ip.R):(yCC_Fit+ip.R)
                      for iX = (xCC_Fit-ip.R):(xCC_Fit+ip.R)
                          
%                         Constrain scanning to within eventROI                          
                          if iY-dUL < 1 
                              iY = dUL +1; %#ok<*FXSET>
                          elseif iY+dDR > size(eventROI,1)
                              iY = iY-dDR;
                          end
                          if iX-dUL < 1 
                              iX = dUL +1;
                          elseif iX+dDR > size(eventROI,1)
                              iX = iX-dDR;
                          end
                           
                          subset = data((iY-oUL):(iY+oDR), (iX-oUL):(iX+oDR));
                          maskedObject = subset.*default_objectMask;
                          meanMaskValue = sum(sum(maskedObject)) / ...
                          length(default_objectMask(default_objectMask==1)); 
                          if  meanMaskValue > findPlaneMax
                              findPlaneMax = meanMaskValue;
                              yCC_PlaneMax = iY;
                              xCC_PlaneMax = iX;
                              zCC_PlaneMax = iPlane;
                          end
                      end % iX
                      end % iY
                      if findPlaneMax > findStackMax
                         findStackMax = findPlaneMax;
                         yCC_StackMax = yCC_PlaneMax;
                         xCC_StackMax = xCC_PlaneMax;
                         zCC_StackMax = zCC_PlaneMax;
                      end
                      end % for iPlane

                      if findStackMax > MEAN + nSTD*STD %%%%%%%%%%%%%%%
      %                  Propagate ULQ-coordinates to next image
                         yCC_Fit = yCC_StackMax;
                         xCC_Fit = xCC_StackMax;
                         if tConf == conf_t0+ip.confirmTimes
                            t0found = 1;
                         end
                      else
                         isDism = 1;
                         t0found = 0;
                      end
               end % for tConf   
             end  % if > MEAN + 3*STD 
          end % if iTime >= scan
    end % for iTime
    
    if t0found == 1
       t0 = conf_t0;
    else
        fprintf('\nCould not find t0 tracking %s %s, skipping...\n', ts, cellEventsPath)
        pw = [ip.dataDir filesep exp filesep ts];
        cd (char(pw));
        destination = 'cargoTrackingdata';
        if ~exist(destination,'dir')
            mkdir(destination);
        end
        cd 'cargoTrackingdata';
        
        if (CELL(length(CELL)) == '#') == 1
            CELL = CELL(1:length(CELL)-1);
        end
        destination = char(CELL);
        if ~exist(destination,'dir')
            mkdir(destination);
        end
        cd (char(CELL));
        
        if (event(length(event)) == '#') == 1
            event = event(1:length(event)-1);
        end
        if ~exist(event,'dir')
            mkdir(event);
        end
        cd (char(event));
        trackingdata.t0_not_found = [];
        trackingdata.t0 = 31;
        
        center_z = floor(size(eventROI,3)/2);
        center_y = floor(size(eventROI,1)/2);
        center_x = floor(size(eventROI,2)/2);
        nPlanes = size(eventROI,3);
        nTimes = size(eventROI,4);
        nChannels = size(eventROI,5);
        coordinates = zeros(nTimes,4);
        for iTime = 1:nTimes
            coordinates(iTime,1) = center_x;
            coordinates(iTime,2) = center_y;
            coordinates(iTime,3) = center_z;
            coordinates(iTime,4) = iTime;
        end
        trackingdata.coordinates.data = coordinates;
        
        tracksFrame = zeros(size(eventROI,1),size(eventROI,2));
        positions = [center_y center_x];
        text = 'Event not detected';
        tracksFrame = insertText(tracksFrame,positions,text, 'AnchorPoint', 'Center', 'BoxColor', 'black', 'TextColor', 'white','BoxOpacity', 0);
        tracksFrame = im2bw(tracksFrame); %#ok<*IM2BW>
        tracksFrame = tracksFrame*2^16;
        
        for iTimes = 1:nTimes
            for iPlanes = 1:nPlanes
                tracks(:,:,iPlanes,iTimes) = tracksFrame;
            end
        end
        
        files = {'trackingdata' 'tracks'};
        for iFiles = 1:length(files)
            if ~exist(files{iFiles},'file') == 0
                delete(files{iFiles})
            end
            save(files{iFiles}, files{iFiles})
        end
        clear 'trackingdata' 'tracks'
        continue
    end
    
%  Determine object size and optimal mask size
   findCentroidDistance = 15;
   maxPlaneCentroid = 0;
   maxStackCentroid = 0;
   zMin = zCC_StackMax-ip.zSearchDistance;
   zMax = zCC_StackMax+ip.zSearchDistance;
   if zMin < 1
      zMin = 1;
   end
   if zMax > nPlanes
      zMax = nPlanes;
   end
   for iPlane = zMin:zMax
       
       data = eventROI(:,:,iPlane,t0+ip.confirmTimes,1);
       gaussData = imgaussfilt(data,3);
       for iY = (yCC_Fit-findCentroidDistance):(yCC_Fit+findCentroidDistance)
       for iX = (xCC_Fit-findCentroidDistance):(xCC_Fit+findCentroidDistance)
           
%                         Constrain scanning to within eventROI                          
                          if iY-dUL < 1 
                              iY = dUL +1;
                          elseif iY+dDR > size(eventROI,1)
                              iY = iY-dDR;
                          end
                          if iX-dUL < 1 
                              iX = dUL +1;
                          elseif iX+dDR > size(eventROI,1)
                              iX = iX-dDR;
                          end
           
           if  gaussData(iY,iX) > maxPlaneCentroid
               maxPlaneCentroid = gaussData(iY,iX);
               yCC_PlaneMax = iY;
               xCC_PlaneMax = iX;
               zCC_PlaneMax = iPlane; 
           end
       end
       end
       if maxPlaneCentroid > maxStackCentroid
          maxStackCentroid = maxPlaneCentroid;
          yCC_Centroid = yCC_PlaneMax;
          xCC_Centroid = xCC_PlaneMax;
          zCC_Centroid = zCC_PlaneMax;
       end

   end %iPlane
   
   d_BackgroundData = d_t0_Data(zCC_Centroid,1:size(d_t0_Data,2));
   MEAN = mean(d_BackgroundData);
   STD = std(d_BackgroundData);
   threshold = MEAN + ip.objectMaskThresh*STD; %%%%%%%%%% size threshold
   allMasks = fieldnames(masks);
   
   for iMasks = 1:length(allMasks)
       objectMask = masks.(char(allMasks(iMasks))).object;
       if mod(length(objectMask), 2) == 1
          oUL = 0.5*(length(objectMask) -1);
          oDR = oUL;
%      Even px width
       elseif mod(length(objectMask), 2) == 0
              oUL = (0.5*length(objectMask)) -1;
              oDR = oUL+1;
       end
       data = eventROI(:,:,zCC_Centroid,t0+ip.confirmTimes,1);
       if yCC_Centroid - oUL < 1
           yCC_Centroid = oUL +1;
       elseif yCC_Centroid + oDR > size(data,1)
              yCC_Centroid = size(data,1)-oDR;
       end
       if xCC_Centroid - oUL < 1
           xCC_Centroid = oUL +1;
       elseif xCC_Centroid + oDR > size(data,1)
              xCC_Centroid = size(data,1)-oDR;
       end
       subset = data((yCC_Centroid-oUL):(yCC_Centroid+oDR), (xCC_Centroid-oUL):(xCC_Centroid+oDR));
       core = bwmorph(objectMask,'thin',1);
       shell = objectMask.*imcomplement(core);
       maskedShell = subset.*shell;
       meanShellValue = sum(sum(maskedShell)) / ...
       length(shell(shell==1));
   
       if meanShellValue < threshold
          optMask = iMasks -1;
          if optMask == 0
             optMask = 1;
          end
          break
       elseif iMasks == length(allMasks)
          optMask = iMasks;
          break
       end
   end
   
% Use predetermined or estimated optimal object mask size    
   if ip.predetObjectMask ~= 0
       objectMask = masks.(char(sprintf('d%d',ip.predetObjectMask))).object;
       localbgMask = masks.(char(sprintf('d%d',ip.predetObjectMask))).localbg;
       trackingdata.optMask = char(sprintf('d%d',ip.predetObjectMask));
   else
       objectMask = masks.(char(allMasks(optMask))).object;
       localbgMask = masks.(char(allMasks(optMask))).localbg;
       trackingdata.optMask = char(allMasks(optMask));
   end
   
   if mod(length(objectMask), 2) == 1
       oUL = 0.5*(length(objectMask) -1);
       oDR = oUL;
       % Even px width
   elseif mod(length(objectMask), 2) == 0
       oUL = (0.5*length(objectMask)) -1;
       oDR = oUL+1;
   end
   
%  DONUT MASK
%  Odd px width
   if mod(length(localbgMask), 2) == 1
       dUL = 0.5*(length(localbgMask) -1);
       dDR = dUL;
       
%  Even px width
   elseif mod(length(localbgMask), 2) == 0
       dUL = (0.5*length(localbgMask)) -1;
       dDR = dUL+1;
   end
   
   SD = size(localbgMask,1);
   SO = size(objectMask,1);
   ds = (SD-SO)/2;
   mergeMask = zeros(SD);
   mergeMask(ds+1:ds+SO, ds+1:ds+SO) = objectMask;
   mergeMask = mergeMask + localbgMask;

%   FIND ULQ-COORDINATES OF MAX MASK FIT IN T0 Z-STACK       
    findMax = 0;
    for iPlane = 1:nPlanes     
        data = eventROI(:,:,iPlane,t0,1);
        for iY = (yCC_Fit_init-ip.R0):(yCC_Fit_init+ip.R0)
        for iX = (xCC_Fit_init-ip.R0):(xCC_Fit_init+ip.R0)
            subset = data((iY-oUL):(iY+oDR), (iX-oUL):(iX+oDR));
            maskedObject = subset.*objectMask;
            meanMaskValue = sum(sum(maskedObject)) / ...
            length(objectMask(objectMask==1)); 
            if  meanMaskValue > findMax
                findMax = meanMaskValue;
                zCC_t0 = iPlane;
                yCC_t0 = iY;
                xCC_t0 = iX;
            end
        end % iX
        end % iY
    end % iPlane

    ip.samplePre = restoreSamplePre;
    ip.samplePost = restoreSamplePost;
    manTrack_time = manTrack(:,1); %#ok<*USENS>
    ip.samplePre = length(manTrack_time(manTrack_time<t0));
%     if ip.samplePre >= t0
%        ip.samplePre = (t0-1);
%     end

    if t0 + ip.samplePost > nTimes
       ip.samplePost = (nTimes - t0);
    end
    trackingdata.samplePre = ip.samplePre;
    trackingdata.samplePost = ip.samplePost;
    
%   Number of extracted timepoints in final data        
    allProcessedTimes = ip.samplePre+ip.samplePost+1;
        
%   Preallocate arrays
    stackdata.object_mean.primary = zeros(nPlanes, allProcessedTimes);
    stackdata.object_mean.secondary = zeros(nPlanes, allProcessedTimes);
    stackdata.donut_mean.primary = zeros(nPlanes, allProcessedTimes);
    stackdata.donut_mean.secondary = zeros(nPlanes, allProcessedTimes);
    
    stackdata.object_median.primary = zeros(nPlanes, allProcessedTimes);
    stackdata.object_median.secondary = zeros(nPlanes, allProcessedTimes);
    stackdata.donut_median.primary = zeros(nPlanes, allProcessedTimes);
    stackdata.donut_median.secondary = zeros(nPlanes, allProcessedTimes);
    
    stackdata.object_STD.primary = zeros(nPlanes, allProcessedTimes);
    stackdata.donut_STD.primary = zeros(nPlanes, allProcessedTimes);
    
    stackdata.object_STD.secondary = zeros(nPlanes, allProcessedTimes);
    stackdata.donut_STD.secondary = zeros(nPlanes, allProcessedTimes);
       
    if nChannels == 3
       stackdata.object_mean.tertiary = zeros(nPlanes, allProcessedTimes);
       stackdata.donut_mean.tertiary = zeros(nPlanes, allProcessedTimes);
       
       stackdata.object_median.tertiary = zeros(nPlanes, allProcessedTimes);
       stackdata.donut_median.tertiary = zeros(nPlanes, allProcessedTimes);
       
       stackdata.object_STD.tertiary = zeros(nPlanes, allProcessedTimes);
       stackdata.donut_STD.tertiary = zeros(nPlanes, allProcessedTimes);
    end

%   Preallocate vectors
    vectordata.object_mean.primary = zeros(1,allProcessedTimes);
    vectordata.object_mean.secondary = zeros(1,allProcessedTimes);
    vectordata.donut_mean.primary = zeros(1,allProcessedTimes);
    vectordata.donut_mean.secondary = zeros(1,allProcessedTimes);
    
    vectordata.object_median.primary = zeros(1,allProcessedTimes);
    vectordata.object_median.secondary = zeros(1,allProcessedTimes);
    vectordata.donut_median.primary = zeros(1,allProcessedTimes);
    vectordata.donut_median.secondary = zeros(1,allProcessedTimes);
    
    vectordata.object_STD.primary = zeros(1,allProcessedTimes);
    vectordata.donut_STD.primary = zeros(1,allProcessedTimes);
    
    vectordata.object_STD.secondary = zeros(1,allProcessedTimes);
    vectordata.donut_STD.secondary = zeros(1,allProcessedTimes);
    
    if nChannels == 3
       vectordata.object_mean.tertiary = zeros(1,allProcessedTimes);
       vectordata.donut_mean.tertiary = zeros(1,allProcessedTimes);
       
       vectordata.object_median.tertiary = zeros(1,allProcessedTimes);
       vectordata.donut_median.tertiary = zeros(1,allProcessedTimes);
       
       vectordata.object_STD.tertiary = zeros(1,allProcessedTimes);
       vectordata.donut_STD.tertiary = zeros(1,allProcessedTimes);
    end
    
    trackingdata.coordinates.data = zeros(allProcessedTimes,4);
    trackingdata.coordinates.labels = {'x', 'y', 'z' 't'};
    trackingdata.t0 = t0;
     
%   Extract from and including (t0) to and including (t0+samplePost),
%   using object tracking-based data extraction
%   Propagate t0 coordinates for data extraction
    yCC_Fit = yCC_t0;
    xCC_Fit = xCC_t0;
    zCC_Fit = zCC_t0;
    %for iTime = (t0+1):(t0+ip.samplePost)
    for iTime = (t0):(t0+ip.samplePost)
        findStackMax = 0;
        zMin = zCC_Fit-ip.zSearchDistance;
        zMax = zCC_Fit+ip.zSearchDistance;
        if zMin < 1
           zMin = 1;
        end
        if zMax > nPlanes
           zMax = nPlanes;
        end

        for iPlane = zMin:zMax   
            findPlaneMax = 0;
            data = eventROI(:,:,iPlane,iTime,1);

            for iY = (yCC_Fit-ip.R):(yCC_Fit+ip.R)
            for iX = (xCC_Fit-ip.R):(xCC_Fit+ip.R)
                
                if iY <= dUL
                    iY = dUL + 1;
                elseif iY+dDR > size(data,1)
                    iY = size(data,1) - dDR;
                end
                if iX <= dUL
                    iX = dUL + 1;
                elseif iX+dDR > size(data,1)
                    iX = size(data,1) - dDR;
                end
                
                subset = data((iY-oUL):(iY+oDR), (iX-oUL):(iX+oDR));
                maskedObject = subset.*objectMask;
                meanMaskValue = sum(sum(maskedObject)) / ...
                length(objectMask(objectMask==1)); 
            
                maskedObject(maskedObject==0) = NaN;
                maskedObject=maskedObject(:);
                medianMaskValue = nanmedian(maskedObject);
                             
                if  meanMaskValue > findPlaneMax
                    findPlaneMax = meanMaskValue;
                    findPlaneMedian = medianMaskValue;
                    findMaskedObject = maskedObject;
                    yCC_PlaneMax = iY;
                    xCC_PlaneMax = iX;
                    zCC_PlaneMax = iPlane;
                end
            end % iX
            end % iY
            
%           Save mean object mask primary channel pixel value to matrix
%           (time-(t0-samplePre)+1)) generates numbers 1 to last
            writeTo = iTime-(t0-ip.samplePre)+1;
            stackdata.object_mean.primary(iPlane, writeTo) = findPlaneMax;
            stackdata.object_median.primary(iPlane, writeTo) = findPlaneMedian;
            stackdata.object_STD.primary(iPlane, writeTo) = nanstd(findMaskedObject);

%           Extract primary channel donut
            subset = data((yCC_PlaneMax-dUL):(yCC_PlaneMax+dDR), (xCC_PlaneMax-dUL):(xCC_PlaneMax+dDR));
            maskedObject = subset.*localbgMask;
            meanMaskValue = sum(sum(maskedObject)) / ...
            length(localbgMask(localbgMask==1));  
          
            maskedObject(maskedObject==0) = NaN;
            maskedObject=maskedObject(:);
            medianMaskValue = nanmedian(maskedObject);
          
            stackdata.donut_mean.primary(iPlane, writeTo) = meanMaskValue;
            stackdata.donut_median.primary(iPlane, writeTo) = medianMaskValue;  
            stackdata.donut_STD.primary(iPlane, writeTo) = nanstd(maskedObject);

%           Extract secondary channel object
            data = eventROI(:,:,iPlane,iTime,2); 
            subset = data((yCC_PlaneMax-oUL):(yCC_PlaneMax+oDR), (xCC_PlaneMax-oUL):(xCC_PlaneMax+oDR));
            maskedObject = subset.*objectMask;
            meanMaskValue = sum(sum(maskedObject)) / ...
            length(objectMask(objectMask==1));  
      
            maskedObject(maskedObject==0) = NaN;
            maskedObject=maskedObject(:);
            medianMaskValue = nanmedian(maskedObject);
          
            stackdata.object_mean.secondary(iPlane, writeTo) = meanMaskValue;
            stackdata.object_median.secondary(iPlane, writeTo) = medianMaskValue; 
            stackdata.object_STD.secondary(iPlane, writeTo) = nanstd(maskedObject);     

%           Extract secondary channel donut
            subset = data((yCC_PlaneMax-dUL):(yCC_PlaneMax+dDR), (xCC_PlaneMax-dUL):(xCC_PlaneMax+dDR));
            maskedObject = subset.*localbgMask;
            meanMaskValue = sum(sum(maskedObject)) / ...
            length(localbgMask(localbgMask==1));  
          
            maskedObject(maskedObject==0) = NaN;
            maskedObject=maskedObject(:);
            medianMaskValue = nanmedian(maskedObject);
          
            stackdata.donut_mean.secondary(iPlane, writeTo) = meanMaskValue;
            stackdata.donut_median.secondary(iPlane, writeTo) = medianMaskValue;  
            stackdata.donut_STD.secondary(iPlane, writeTo) = nanstd(maskedObject);
            
            if nChannels == 3
%           Extract tertiary channel object
            data = eventROI(:,:,iPlane,iTime,3); 
            subset = data((yCC_PlaneMax-oUL):(yCC_PlaneMax+oDR), (xCC_PlaneMax-oUL):(xCC_PlaneMax+oDR));
            maskedObject = subset.*objectMask;
            meanMaskValue = sum(sum(maskedObject)) / ...
            length(objectMask(objectMask==1));  
      
            maskedObject(maskedObject==0) = NaN;
            maskedObject=maskedObject(:);
            medianMaskValue = nanmedian(maskedObject);
          
            stackdata.object_mean.tertiary(iPlane, writeTo) = meanMaskValue;
            stackdata.object_median.tertiary(iPlane, writeTo) = medianMaskValue; 
            stackdata.object_STD.tertiary(iPlane, writeTo) = nanstd(maskedObject);     

%           Extract tertiary channel donut
            subset = data((yCC_PlaneMax-dUL):(yCC_PlaneMax+dDR), (xCC_PlaneMax-dUL):(xCC_PlaneMax+dDR));
            maskedObject = subset.*localbgMask;
            meanMaskValue = sum(sum(maskedObject)) / ...
            length(localbgMask(localbgMask==1));  
          
            maskedObject(maskedObject==0) = NaN;
            maskedObject=maskedObject(:);
            medianMaskValue = nanmedian(maskedObject);
          
            stackdata.donut_mean.tertiary(iPlane, writeTo) = meanMaskValue;
            stackdata.donut_median.tertiary(iPlane, writeTo) = medianMaskValue;  
            stackdata.donut_STD.tertiary(iPlane, writeTo) = nanstd(maskedObject);
            end
            
         if findPlaneMax > findStackMax
            findStackMax = findPlaneMax;
            yCC_StackMax = yCC_PlaneMax;
            xCC_StackMax = xCC_PlaneMax;
            zCC_StackMax = zCC_PlaneMax;       
         end

        end
       
       vectordata.object_mean.primary(1,writeTo) =  stackdata.object_mean.primary(zCC_StackMax,writeTo);
       vectordata.object_mean.secondary(1,writeTo) =  stackdata.object_mean.secondary(zCC_StackMax,writeTo);
       vectordata.donut_mean.primary(1,writeTo) = stackdata.donut_mean.primary(zCC_StackMax,writeTo);
       vectordata.donut_mean.secondary(1,writeTo) = stackdata.donut_mean.secondary(zCC_StackMax,writeTo);
       
       vectordata.object_median.primary(1,writeTo) =  stackdata.object_median.primary(zCC_StackMax,writeTo);
       vectordata.object_median.secondary(1,writeTo) =  stackdata.object_median.secondary(zCC_StackMax,writeTo);
       vectordata.donut_median.primary(1,writeTo) = stackdata.donut_median.primary(zCC_StackMax,writeTo);
       vectordata.donut_median.secondary(1,writeTo) = stackdata.donut_median.secondary(zCC_StackMax,writeTo);
  
       vectordata.object_STD.primary(1,writeTo) = stackdata.object_STD.primary(zCC_StackMax,writeTo);
       vectordata.donut_STD.primary(1,writeTo) = stackdata.donut_STD.primary(zCC_StackMax,writeTo);
       vectordata.object_STD.secondary(1,writeTo) = stackdata.object_STD.secondary(zCC_StackMax,writeTo);
       vectordata.donut_STD.secondary(1,writeTo) = stackdata.donut_STD.secondary(zCC_StackMax,writeTo);
       
       if nChannels == 3
          vectordata.object_mean.tertiary(1,writeTo) =  stackdata.object_mean.tertiary(zCC_StackMax,writeTo);
          vectordata.donut_mean.tertiary(1,writeTo) = stackdata.donut_mean.tertiary(zCC_StackMax,writeTo);
          
          vectordata.object_median.tertiary(1,writeTo) =  stackdata.object_median.tertiary(zCC_StackMax,writeTo);
          vectordata.donut_median.tertiary(1,writeTo) = stackdata.donut_median.tertiary(zCC_StackMax,writeTo);
          
          vectordata.object_STD.tertiary(1,writeTo) = stackdata.object_STD.tertiary(zCC_StackMax,writeTo);
          vectordata.donut_STD.tertiary(1,writeTo) = stackdata.donut_STD.tertiary(zCC_StackMax,writeTo);
       end
       
       trackingdata.coordinates.data(writeTo,:) = [xCC_StackMax yCC_StackMax zCC_StackMax iTime];
       
%      Save fitted mask to tracks-struct 
       tracks((yCC_StackMax-dUL):(yCC_StackMax+dDR), (xCC_StackMax-dUL):(xCC_StackMax+dDR), zCC_StackMax, iTime) = mergeMask;   

%      Propagate ULQ-coordinates to next frame
       yCC_Fit = yCC_StackMax;
       xCC_Fit = xCC_StackMax;
       zCC_Fit = zCC_StackMax;


    end % iTime = t0+1:t0+samplePost
    
%  Replace stationary preevent trackingdata with manual tracking data
%     vectordata.object.primary(1:t0-1) = 0;
%     vectordata.donut.primary(1:t0-1) = 0;
%     vectordata.object.secondary(1:t0-1) = 0;
%     vectordata.donut.secondary(1:1:t0-1) = 0;
%     
%     stackdata.object.primary(:,1:t0-1) = 0;
%     stackdata.donut.primary(:,1:t0-1) = 0;
%     stackdata.object.secondary(:,1:t0-1) = 0;
%     stackdata.donut.secondary(:,1:t0-1) = 0;
%     
%     if nChannels == 3
%         vectordata.object.tertiary(1:t0-1) = 0;
%         vectordata.donut.tertiary(1:t0-1) = 0;
%         stackdata.object.tertiary(:,1:t0-1) = 0;
%         stackdata.donut.tertiary(:,1:t0-1) = 0;
%     end        

%   EXTRACT PRE-RELEASE OBJECT DATA
%   Extract up to and including t0, using manually tracked cooordinates
%   (iTime-(t0-samplePre)+1)) generates numbers 1 to last

    nTrackTimes = size(manTrack,1);
    for iTT = 1:nTrackTimes
        iTime = manTrack(iTT,1); 
        if iTime >= t0
            break
        end
        writeTo = iTime-(t0-ip.samplePre)+1;
       % writeTo = iTime-manTrack(1,1)+1;
        xTrack = manTrack(iTT,2);
        yTrack = manTrack(iTT,3);
        findStackMax = 0;
        
        for iPlane = 1:nPlanes
            findPlaneMax = 0;
            data = eventROI(:,:,iPlane,iTime,2);
            
%           fitTrack is the search (fitting) variablefor the manual tracks
            for iY = (yTrack-ip.fitTrack):(yTrack+ip.fitTrack)
                for iX = (xTrack-ip.fitTrack):(xTrack+ip.fitTrack)
                    
%                   Constrain scanning to within eventROI
                    if iY-dUL < 1
                        iY = dUL +1;
                    elseif iY+dDR > size(eventROI,1)
                        iY = iY-dDR;
                    end
                    if iX-dUL < 1
                        iX = dUL +1;
                    elseif iX+dDR > size(eventROI,1)
                        iX = iX-dDR;
                    end
                    
                    subset = data((iY-oUL):(iY+oDR), (iX-oUL):(iX+oDR));
                    maskedObject = subset.*objectMask;
                    meanMaskValue = sum(sum(maskedObject)) / ...
                        length(objectMask(objectMask==1));
                    
                    maskedObject(maskedObject==0) = NaN;
                    maskedObject=maskedObject(:);
                    medianMaskValue = nanmedian(maskedObject);
                             
                    if  meanMaskValue > findPlaneMax
                        findPlaneMax = meanMaskValue;
                        findPlaneMedian = medianMaskValue;
                        findMaskedObject = maskedObject;
                        yCC_PlaneMax = iY;
                        xCC_PlaneMax = iX;
                        zCC_PlaneMax = iPlane;
                    end
                end % iX
            end % iY

%           Save mean secondary object mask pixel value to matrix
            try
                stackdata.object_mean.secondary(iPlane, writeTo) = findPlaneMax;
            catch
                me
            end
            stackdata.object_median.secondary(iPlane, writeTo) = findPlaneMedian;
            stackdata.object_STD.secondary(iPlane, writeTo) = nanstd(findMaskedObject);
            
%           Extract secondary channel donut
            subset = data((yCC_PlaneMax-dUL):(yCC_PlaneMax+dDR), (xCC_PlaneMax-dUL):(xCC_PlaneMax+dDR));
            maskedObject = subset.*localbgMask;
            meanMaskValue = sum(sum(maskedObject)) / ...
            length(localbgMask(localbgMask==1));  
          
            maskedObject(maskedObject==0) = NaN;
            maskedObject=maskedObject(:);
            medianMaskValue = nanmedian(maskedObject);
          
            stackdata.donut_mean.secondary(iPlane, writeTo) = meanMaskValue;
            stackdata.donut_median.secondary(iPlane, writeTo) = medianMaskValue;  
            stackdata.donut_STD.secondary(iPlane, writeTo) = nanstd(maskedObject);
            
%           Extract primary channel object
            data = eventROI(:,:,iPlane,iTime,1);
            subset = data((yCC_PlaneMax-oUL):(yCC_PlaneMax+oDR), (xCC_PlaneMax-oUL):(xCC_PlaneMax+oDR));
            maskedObject = subset.*objectMask;
            meanMaskValue = sum(sum(maskedObject)) / ...
            length(objectMask(objectMask==1));  
      
            maskedObject(maskedObject==0) = NaN;
            maskedObject=maskedObject(:);
            medianMaskValue = nanmedian(maskedObject);
          
            stackdata.object_mean.primary(iPlane, writeTo) = meanMaskValue;
            stackdata.object_median.primary(iPlane, writeTo) = medianMaskValue; 
            stackdata.object_STD.primary(iPlane, writeTo) = nanstd(maskedObject); 
            
%           Extract primary channel donut         
            subset = data((yCC_PlaneMax-dUL):(yCC_PlaneMax+dDR), (xCC_PlaneMax-dUL):(xCC_PlaneMax+dDR));
            maskedObject = subset.*localbgMask;
            meanMaskValue = sum(sum(maskedObject)) / ...
            length(localbgMask(localbgMask==1));  
          
            maskedObject(maskedObject==0) = NaN;
            maskedObject=maskedObject(:);
            medianMaskValue = nanmedian(maskedObject);
          
            stackdata.donut_mean.primary(iPlane, writeTo) = meanMaskValue;
            stackdata.donut_median.primary(iPlane, writeTo) = medianMaskValue;  
            stackdata.donut_STD.primary(iPlane, writeTo) = nanstd(maskedObject);
            
%           Extract tertiary channel object
            if nChannels == 3
                data = eventROI(:,:,iPlane,iTime,3);
                subset = data((yCC_PlaneMax-oUL):(yCC_PlaneMax+oDR), (xCC_PlaneMax-oUL):(xCC_PlaneMax+oDR));
                maskedObject = subset.*objectMask;
                meanMaskValue = sum(sum(maskedObject)) / ...
                length(objectMask(objectMask==1));  
      
                maskedObject(maskedObject==0) = NaN;
                maskedObject=maskedObject(:);
                medianMaskValue = nanmedian(maskedObject);
          
                stackdata.object_mean.tertiary(iPlane, writeTo) = meanMaskValue;
                stackdata.object_median.tertiary(iPlane, writeTo) = medianMaskValue; 
                stackdata.object_STD.tertiary(iPlane, writeTo) = nanstd(maskedObject); 
                
%         Extract tertiary channel donut
                subset = data((yCC_PlaneMax-dUL):(yCC_PlaneMax+dDR), (xCC_PlaneMax-dUL):(xCC_PlaneMax+dDR));
                maskedObject = subset.*localbgMask;
                meanMaskValue = sum(sum(maskedObject)) / ...
                length(localbgMask(localbgMask==1));  
          
                maskedObject(maskedObject==0) = NaN;
                maskedObject=maskedObject(:);
                medianMaskValue = nanmedian(maskedObject);
          
                stackdata.donut_mean.tertiary(iPlane, writeTo) = meanMaskValue;
                stackdata.donut_median.tertiary(iPlane, writeTo) = medianMaskValue;  
                stackdata.donut_STD.tertiary(iPlane, writeTo) = nanstd(maskedObject);
            end            
                 
            if findPlaneMax > findStackMax
                findStackMax = findPlaneMax;
                yCC_StackMax = yCC_PlaneMax;
                xCC_StackMax = xCC_PlaneMax;
                zCC_StackMax = zCC_PlaneMax;
            end
        end % for iPlane
        
 %          Save fitted mask to tracks-struct
            tracks((yCC_StackMax-dUL):(yCC_StackMax+dDR), (xCC_StackMax-dUL):(xCC_StackMax+dDR), zCC_StackMax, iTime) = mergeMask;    
            trackingdata.coordinates.data(writeTo,:) = [xCC_StackMax yCC_StackMax zCC_StackMax iTime];
        
            vectordata.object_mean.primary(1,writeTo) =  stackdata.object_mean.primary(zCC_StackMax,writeTo);
            vectordata.object_mean.secondary(1,writeTo) =  stackdata.object_mean.secondary(zCC_StackMax,writeTo);
            vectordata.donut_mean.primary(1,writeTo) = stackdata.donut_mean.primary(zCC_StackMax,writeTo);
            vectordata.donut_mean.secondary(1,writeTo) = stackdata.donut_mean.secondary(zCC_StackMax,writeTo);
       
            vectordata.object_median.primary(1,writeTo) =  stackdata.object_median.primary(zCC_StackMax,writeTo);
            vectordata.object_median.secondary(1,writeTo) =  stackdata.object_median.secondary(zCC_StackMax,writeTo);
            vectordata.donut_median.primary(1,writeTo) = stackdata.donut_median.primary(zCC_StackMax,writeTo);
            vectordata.donut_median.secondary(1,writeTo) = stackdata.donut_median.secondary(zCC_StackMax,writeTo);
       
            vectordata.object_STD.primary(1,writeTo) = stackdata.object_STD.primary(zCC_StackMax,writeTo);
            vectordata.donut_STD.primary(1,writeTo) = stackdata.donut_STD.primary(zCC_StackMax,writeTo);
            vectordata.object_STD.secondary(1,writeTo) = stackdata.object_STD.secondary(zCC_StackMax,writeTo);
            vectordata.donut_STD.secondary(1,writeTo) = stackdata.donut_STD.secondary(zCC_StackMax,writeTo);
       
            if nChannels == 3
                vectordata.object_mean.tertiary(1,writeTo) =  stackdata.object_mean.tertiary(zCC_StackMax,writeTo);
                vectordata.donut_mean.tertiary(1,writeTo) = stackdata.donut_mean.tertiary(zCC_StackMax,writeTo);
          
                vectordata.object_median.tertiary(1,writeTo) =  stackdata.object_median.tertiary(zCC_StackMax,writeTo);
                vectordata.donut_median.tertiary(1,writeTo) = stackdata.donut_median.tertiary(zCC_StackMax,writeTo);
          
                vectordata.object_STD.tertiary(1,writeTo) = stackdata.object_STD.tertiary(zCC_StackMax,writeTo);
                vectordata.donut_STD.tertiary(1,writeTo) = stackdata.donut_STD.tertiary(zCC_StackMax,writeTo);
            end
        
    end % iTT = 1:nTracks
    
%   SAVE TRACKING DATA
    pw = [ip.dataDir filesep exp filesep ts];
    cd (char(pw));
    destination = 'cargoTrackingdata';
    if ~exist(destination,'dir')
       mkdir(destination);
    end
    cd 'cargoTrackingdata';
    
    if (CELL(length(CELL)) == '#') == 1
        CELL = CELL(1:length(CELL)-1);
    end
    destination = char(CELL);
    if ~exist(destination,'dir')
       mkdir(destination);
    end
    cd (char(CELL));
    
    if (event(length(event)) == '#') == 1
        event = event(1:length(event)-1);
    end
    destination = char(event);
    if ~exist(destination,'dir')
       mkdir(destination);
    end
    cd (char(event));
    
    files = {'stackdata' 'vectordata' 'trackingdata' 'tracks'};
    for iFiles = 1:length(files)
        if ~exist(files{iFiles},'file') == 0
            delete(files{iFiles})
        end
        save(files{iFiles}, files{iFiles})
    end
    
end % iEvents

cd (ip.fdp)
fprintf('\n- DONE -')
end

