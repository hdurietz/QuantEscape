function [] = createROIs(ip)
%% Create event ROIs from raw data
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

nExperiments = length(ip.allExperiments);
logCellEventTimes = struct;

fprintf('Creating event ROIs...\n');
switch ip.executionMode
    case 'New' 
        cd (ip.dataDir);
        listindex = 0;
        for ee = 1:nExperiments
            cd (ip.allExperiments{ee});
            if ip.roiAll_TS == 1
                dirData = dir; % Get the data for the current directory
                dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
                dirData(strncmp({dirData.name}, '~', 1)) = [];
                dirIndex = [dirData.isdir];  % Find the index for directories
                tsDirs = {dirData(dirIndex).name}';
                tsDirsField = tsDirs;
            elseif ip.roiAll_TS == 0
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
            
            for ts = 1:length(tsDirs)
                listindex = listindex + 1;
                ip.(char(ip.allExperiments{ee})).(char(tsDirsField{ts}))=[];
                listROIs(listindex,1) = ip.allExperiments(ee); %#ok<*AGROW>
                listROIs(listindex,2) = tsDirs(ts);
                listROIs(listindex,3) = tsDirsField(ts);
            end
            cd (['..' filesep])
            clear tsDirs tsDirsField
        end
        
%   Import all cellMetadata
    listindex = 0;
    for ee = 1:nExperiments
        tsDirs = fieldnames(ip.(char(ip.allExperiments{ee})));
        for ts = 1:length(tsDirs)
            listindex = listindex + 1;
            pw=[ip.dataDir filesep ip.allExperiments{ee} filesep listROIs{listindex,2} filesep 'cellMetadata'];
            cd (char(pw));
            clear dir
            dirData = dir; % Get the data for the current directory
            dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
            dirIndex = [dirData.isdir];  % Find the index for directories
            cellDirs = {dirData(dirIndex).name}';
            for iCellDirs = 1:length(cellDirs)
                pw=[ip.dataDir filesep ip.allExperiments{ee} filesep listROIs{listindex,2} filesep 'cellMetadata' filesep char(cellDirs{iCellDirs})];
                cd (char(pw));
%               Import and save datatable in cellMetadata
                table = readtable('data.txt');
                table(size(table,1)-1:size(table,1),:)=[];
                ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).cellMetadata.(char(cellDirs{iCellDirs})).data = table;
                
%               Import and save cell outlines as images in cellMetadata
                cellStart=csvread('startFrame.csv',1);
                cellEnd=csvread('endFrame.csv',1);
                
                imageStart = zeros(ip.xDim.(char(ip.allExperiments{ee})), ip.yDim.(char(ip.allExperiments{ee})));
                for index = 1:size(cellStart,1)
                    % yy = cellStart(index,3);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    yy = cellStart(index,2);
                    if yy < 1
                        yy = 1;
                    elseif yy > ip.yDim.(char(ip.allExperiments{ee}))
                        yy = ip.yDim.(char(ip.allExperiments{ee}));
                    end
                    % xx = cellStart(index,2);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    xx = cellStart(index,1);
                    if xx < 1
                        xx = 1;
                    elseif xx > ip.xDim.(char(ip.allExperiments{ee}))
                        xx = ip.xDim.(char(ip.allExperiments{ee}));
                    end
                    imageStart(yy, xx) = 1;
                end
                
                imageEnd = zeros(ip.xDim.(char(ip.allExperiments{ee})), ip.yDim.(char(ip.allExperiments{ee})));
                for index = 1:size(cellEnd,1)
                    % yy = cellEnd(index,3);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    yy = cellEnd(index,2);
                    if yy < 1
                       yy = 1;
                    elseif yy > ip.yDim.(char(ip.allExperiments{ee}))
                       yy = ip.yDim.(char(ip.allExperiments{ee}));
                    end
                    % xx = cellEnd(index,2);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                    xx = cellEnd(index,1);
                    if xx < 1
                       xx = 1;
                    elseif xx > ip.xDim.(char(ip.allExperiments{ee}))
                       xx = ip.xDim.(char(ip.allExperiments{ee}));
                    end
                    imageEnd(yy, xx) = 1;
                end
                
                ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).cellMetadata.(char(cellDirs{iCellDirs})).cellStart = imageStart;
                ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).cellMetadata.(char(cellDirs{iCellDirs})).cellEnd = imageEnd;
                
                cd (['..' filesep])
            end
            clear cellDirs
            cd (['..' filesep '..' filesep '..'])
        end
        clear tsDirs tsDirsField
    end
    
%   Subpartition all cellMetadata to eventData
%   Create eventMetadata subdirectories
%   Write eventMetadata.mat files to subdirectories
    listindex = 0;
    showList = cell(0);
    for ee = 1:nExperiments
        tsDirs = fieldnames(ip.(char(ip.allExperiments{ee})));
        eventCounter = 0;
        for ts = 1:length(tsDirs)
            listindex = listindex + 1;
            showList(length(showList)+1,1) = {sprintf('%s\n', char(listROIs{listindex,2}))}; 
%           Import background mask data and generate background mask
            pw=[ip.dataDir filesep ip.allExperiments{ee} filesep listROIs{listindex,2} filesep 'background'];
            cd (char(pw));
            bgPixels = csvread('background.csv',1);
            backgroundMask = zeros(ip.xDim.(char(ip.allExperiments{ee})), ip.yDim.(char(ip.allExperiments{ee})));
            for index = 1:size(bgPixels,1)
             %backgroundMask(bgPixels(index,3), bgPixels(index,2)) = 1;%%%%
             backgroundMask(bgPixels(index,2), bgPixels(index,1)) = 1;
            end
            
            cellDirs = fieldnames(ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).cellMetadata);
            pw=[ip.dataDir filesep char(ip.allExperiments{ee}) filesep listROIs{listindex,2}];
            cd (char(pw));
            
            destination = 'eventMetadata';
            if ~exist(destination,'dir')
                mkdir(destination);
            end
            cd 'eventMetadata'
            
            nCellEvents = 1;
            for iCellDirs = 1:length(cellDirs)
                
                syntaxCell = 'cell_%s';
                if iCellDirs < 10
                    string1 = '0%d';
                else
                    string1 = '%d';
                end
                nameSyntax = sprintf(char(syntaxCell), string1);
                cellName = sprintf(char(nameSyntax),iCellDirs);
                
                mkdir (char(cellName))
                cd (char(cellName))
                
%               Merge startCell and endCell cell outlines stored in cellMetadata
%               Save as cellMask.mat in eventMetadata
                cellMask = ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).cellMetadata.(char(cellDirs{iCellDirs})).cellStart;
                cellMask(:,:,2) = ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).cellMetadata.(char(cellDirs{iCellDirs})).cellEnd;
                
                table = ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).cellMetadata.(char(cellDirs{iCellDirs})).data;
                table(:,2:3)=[];
                table(:,6:8)=[];
                for tt = 1:size(table,1)
                    
                    clear eventMetadata
                    eventMetadata = table{tt,:};
                    
                    syntaxEvent = 'cell_%s_event_%s';
                    if tt < 10
                        string2 = '0%d';
                    else
                        string2 = '%d';
                    end
                    nameSyntax = sprintf(char(syntaxEvent), string1, string2);
                    eventName = sprintf(char(nameSyntax),iCellDirs, tt);
                    mkdir (char(eventName))
                    cd (char(eventName))
                    showList(length(showList)+1,1)= {sprintf('-%s',char(eventName))}; 
                    
                    save('eventMetadata.mat', 'eventMetadata');
                    save('cellMask.mat', 'cellMask');
                    save('backgroundMask.mat', 'backgroundMask')
                    ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).eventMetadata.(char(cellDirs{iCellDirs})).(char(eventName)).eventMetadata = eventMetadata;
                    ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).eventMetadata.(char(cellDirs{iCellDirs})).(char(eventName)).cellMask = cellMask;
                    ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).eventMetadata.(char(cellDirs{iCellDirs})).(char(eventName)).eventDirPath = pwd;
                    logCellEventTimes.(char(ip.allExperiments(ee))).(char(tsDirs(ts))).(char(cellDirs(iCellDirs)))(nCellEvents,1) = eventMetadata(1,10);
                    logCellEvents.(char(ip.allExperiments(ee))).(char(tsDirs(ts))).(char(cellDirs(iCellDirs))).(char(eventName)) = 0;
                    ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).eventCounter = eventCounter + 1;
                    nCellEvents = nCellEvents + 1;
                    eventCounter = eventCounter + 1;
                    cd (['..' filesep])
                end
                cd(['..' filesep])
            end
            clear cellDirs
            cd (['..' filesep '..' filesep '..'])
        end
        clear tsDirs
    end
    
    fprintf('Adding events to queue...\n')
    disp(showList)
    fprintf('\n')
    
    
    % If selected roi events are being performed, create appropriate structure
    case 'Remake'
        cd (ip.dataDir);
        for ee = 1:nExperiments
            cd (ip.allExperiments{ee});
            
            if ip.roiAll_TS == 1
                dirData = dir; % Get the data for the current directory
                dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
                dirData(strncmp({dirData.name}, '~', 1)) = [];
                dirIndex = [dirData.isdir];  % Find the index for directories
                tsDirs = {dirData(dirIndex).name}';
                tsDirsField = tsDirs;
            elseif ip.roiAll_TS == 0
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
            
            eventCounter = 0;
            for ts = 1:length(tsDirs)
                pw=[ip.dataDir filesep ip.allExperiments{ee} filesep char(tsDirs{ts}) filesep 'eventMetadata'];
                cd (char(pw));
                clear dir
                dirData = dir; % Get the data for the current directory
                dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
                dirIndex = [dirData.isdir];  % Find the index for directories
                cellDirs = {dirData(dirIndex).name}';
                
                for iCellDirs = 1:length(cellDirs)
                    pw=[ip.dataDir filesep ip.allExperiments{ee} filesep char(tsDirs{ts}) filesep 'eventMetadata' filesep char(cellDirs{iCellDirs})];
                    cd (char(pw));
                    
                    clear dir
                    dirData = dir; % Get the data for the current directory
                    dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
                    idx = 1;
                    if ip.roiAll_events == 1
                        dirIndex = [dirData.isdir];  % Find the index for directories
                        cellEvents = {dirData(dirIndex).name}';
                        cellEventsField = cellEvents;
                    elseif ip.roiAll_events == 0
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
                        cd (char(cellEvents(iCellEvents)));
                        load 'cellMask.mat'; %#ok<*LOAD>
                        load 'eventMetadata.mat';
                        ip.(char(ip.allExperiments{ee})).(char(tsDirsField{ts})).eventMetadata.(char(cellDirs{iCellDirs})).(char(cellEventsField(iCellEvents))).eventMetadata = eventMetadata; %#ok<*NODEF>
                        ip.(char(ip.allExperiments{ee})).(char(tsDirsField{ts})).eventMetadata.(char(cellDirs{iCellDirs})).(char(cellEventsField(iCellEvents))).cellMask = cellMask;
                        ip.(char(ip.allExperiments{ee})).(char(tsDirsField{ts})).eventCounter = eventCounter + 1;
                        eventCounter = eventCounter + 1;
                        cd (['..' filesep])
                    end
                    clear cellEvents cellEventsField
                end
            end
            cd (['..' filesep '..' filesep '..'])
        end
end

% Import raw data images as specified by eventMetadata, create and save ROIs
previous_ts = 'none';
for ee = 1:nExperiments
    fprintf('\nCreating ROIs...\n')
    ip.iExperiments = ee;
    allChannels = ip.allChannels.(char(ip.allExperiments(ee)));
    ip.tsChannels = allChannels;
    nChannels = length(allChannels);
    ip.nChannels = nChannels;
    tsDirs = fieldnames(ip.(char(ip.allExperiments{ee})));
    

    for ts = 1:length(tsDirs)
        fprintf('\n%s',tsDirs{ts})
        if ip.roiAll_TS == 0
          tsDirPath = sprintf('%s#',tsDirs{ts});
        else
          tsDirPath = tsDirs{ts};  
        end

%       Set image path (local drive only)
        ip.decon_path = [ip.dataDir filesep ip.allExperiments{ee} filesep tsDirPath filesep 'resampledImages'];
        pDeconPath = [ip.dataDir filesep ip.allExperiments{ee} filesep tsDirPath filesep 'resampledImages'];
   
        nCellEvents = 0; %#ok<NASGU>
        cellDirs = fieldnames(ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).eventMetadata);
        for iCellDirs = 1:length(cellDirs)
            cellEvents = fieldnames(ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).eventMetadata.(char(cellDirs{iCellDirs})));

            for iCellEvents = 1:length(cellEvents)
               %parSavePath = [ip.fdp filesep 'parSave.m'];
               %poolobj = gcp;
               %addAttachedFiles(poolobj,parSavePath);
               
                fprintf('  Processing %s\n', char(cellEvents(iCellEvents)))

                eventMetadata = ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).eventMetadata.(char(cellDirs{iCellDirs})).(char(cellEvents{iCellEvents})).eventMetadata;
                cellMask = ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).eventMetadata.(char(cellDirs{iCellDirs})).(char(cellEvents{iCellEvents})).cellMask;
                cd (char(pDeconPath));
                
%               Constrain ROI boudaries to within dataset dimensions                
                xCC = eventMetadata(:,2);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                yCC = eventMetadata(:,3);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                tCC = eventMetadata(:,10);%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
                
                xLim = xCC - ip.extROI; 
                xEnd = xCC + ip.extROI;
                yLim = yCC - ip.extROI;
                yEnd = yCC + ip.extROI;

                if xLim < 1
                   xLim = 1;
                end
                if xEnd > ip.xDim.(char(ip.allExperiments{ee}))
                   xEnd = ip.xDim.(char(ip.allExperiments{ee}));
                end

                if yLim < 1
                   yLim = 1;
                end
                if yEnd > ip.xDim.(char(ip.allExperiments{ee}))
                   yEnd = ip.xDim.(char(ip.allExperiments{ee}));
                end
                
                tStart = tCC - ip.extTimePre;
                tEnd = tCC + ip.extTimePost;
                
%               Start reading and cropping images                
                for iChannels = 1:nChannels
                    cd (char(allChannels{iChannels}))                
                
                    clear dir
                    dirData = dir; % Get the data for the current directory
                    dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
                    allFiles = {dirData.name}';
                    
                    % Find number of times from file names
                    scan = 1;
                    iTime = 0;
                    
                    if sum(contains(allFiles,'t0001')) > 0
                        maxTimes = 9999;
                    elseif sum(contains(allFiles,'t001')) > 0
                        maxTimes = 999;
                    elseif sum(contains(allFiles,'t01')) > 0
                        maxTimes = 99;
                    else
                        maxTimes = 9;
                    end
                    
                    while scan == 1
                        iTime = iTime + 1;
                                                
                        if maxTimes == 9
                            tStr = 't%d';
                            
                        elseif maxTimes == 99
                            if iTime < 10
                                tStr = 't0%d';
                            else
                                tStr = 't%d';
                            end
                            
                        elseif maxTimes == 999
                            if iTime < 10
                                tStr = 't00%d';
                            elseif iTime < 100
                                tStr = 't0%d';
                            else
                                tStr = 't%d';
                            end
                            
                        elseif maxTimes == 9999
                            if iTime < 10
                                tStr = 't000%d';
                            elseif iTime < 100
                                tStr = 't00%d';
                            elseif iTime < 1000
                                tStr = 't0%d';
                            else
                                tStr = 't%d';
                            end
                            
                        end
                        
                  
                        time = sprintf(tStr, iTime);
                        for iFile = 1:size(allFiles,1)
                            if  isempty(strfind(allFiles{iFile,1},time)) == 0
                                break
                            elseif iFile == size(allFiles,1)
                                scan = 0;
                                nTimes = iTime - 1;
                            end
                        end
                    end
 
 %                   Constrain time boudaries to within dataset dimensions
                     if iChannels == 1
                         if tStart < 1
                            tStart = 1;
                         end
                         if tEnd > nTimes
                            tEnd = nTimes;
                         end
                     end
                     
                     % Find number of planes from file info
                     clear dir
                     dirData = dir; % Get the data for the current directory
                     dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
                     dirData(strncmp({dirData.name}, '~', 1)) = [];
                     allFiles = {dirData.name}';
                     for iFile = 1:size(allFiles,1)
                         if  isempty(strfind(allFiles{iFile},time)) == 0 
                             break
                         end
                     end
                     nPlanes = size(imfinfo(char(allFiles(iFile))),1);

                     for iTime = tStart:tEnd
                         syntax = '%s';
                         if maxTimes == 9
                             stringT = 't%d';
                         elseif maxTimes == 99
                             if iTime < 10
                                 stringT = 't0%d';
                             else
                                 stringT = 't%d';
                             end
                         elseif maxTimes == 999
                             if iTime < 10
                                 stringT = 't00%d';
                             elseif iTime < 100
                                 stringT = 't0%d';
                             else
                                 stringT = 't%d';
                             end
                         elseif maxTimes == 9999
                             if iTime < 10
                                 stringT = 't000%d';
                             elseif iTime < 100
                                 stringT = 't00%d';
                             elseif iTime < 1000
                                 stringT = 't0%d';
                             else
                                 stringT = 't%d';
                             end
                         end
                         
                        timeForm = sprintf(char(syntax), stringT);
                        timeStamp = sprintf(char(timeForm),iTime);
                        for findImage = 1:size(allFiles,1)
                            if isempty(cell2mat(strfind(allFiles(findImage), timeStamp))) == 0
                               image = zeros(ip.xDim.(char(ip.allExperiments{ee})), ip.yDim.(char(ip.allExperiments{ee})), nPlanes);
                               for iPlane = 1:nPlanes
                               image(:,:,iPlane) = imread(char(allFiles(findImage)), iPlane);
                               end
                               break
                            end
                        end
                        if iTime == tStart && iChannels == 1
                            eventROI = zeros(yEnd-yLim+1, xEnd-xLim+1, nPlanes, (tEnd-tStart), nChannels);
                        end
                        zROI = image(yLim:yEnd, xLim:xEnd,:);
                        eventROI(:,:,:,(iTime-tStart+1), iChannels) = zROI;
                    end
                    cd (['..' filesep])
                end
                
%               Create new metadata file for tracking with coordinates
%               adjusted to the ROI crop -> save in eventROI folder also
%               add features with controlled search distances

%               Image X-dim = matrix dim(2)
%               -------
%               -------
%               -------

%               Image Y-dim = matrix dim(1)
%               |||||||
%               |||||||
%               |||||||

%               Save new coordinates of the event (as in ROI crop)
%               Correct xLim, yLim, tStart by subtracting 1
%               M(0,0) does not exist
                roiMetadata = struct;
                roiMetadata.xCC = eventMetadata(1,2) - (xLim-1);    % xCC_roi
                roiMetadata.yCC = eventMetadata(1,3) - (yLim-1);     % yCC_roi
                roiMetadata.tCC = eventMetadata(1,10) - (tStart-1);    % tCC_roi %%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 7
                roiMetadata.xLim = xLim;
                roiMetadata.xEnd = xEnd;
                roiMetadata.yLim = yLim;
                roiMetadata.yEnd = yEnd;
                roiMetadata.tStart = tStart;
                roiMetadata.tEnd = tEnd;
                roiMetadata.nPlanes = nPlanes;
                roiMetadata.xCC_ORG = xCC;
                roiMetadata.yCC_ORG = yCC;
                roiMetadata.tCC_ORG = tCC; %#ok<*STRNU>
                
                
%               EXTRACT BACKGROUND DATA
%               If the first event in time series is to be processed, also perform
%               background meassurements using the backgroundMask.mat file.
                if strcmp(char(tsDirPath),char(previous_ts)) == 0 &&...
                        strcmp(ip.executionMode, 'Remake') == 0
                    eventDirPath = ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).eventMetadata.(char(cellDirs{iCellDirs})).(char(cellEvents(iCellEvents))).eventDirPath;
                    cd (char(eventDirPath))
                    load('backgroundMask.mat')
                    
                    cd (char(pDeconPath))

                    for iChannel = 1:nChannels
                        cd (char(allChannels{iChannels}))  
                        clear dir
                        dirData = dir; % Get the data for the current directory
                        dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
                        dirData(strncmp({dirData.name}, '~', 1)) = [];
                        allImages = {dirData.name}';
                        
                        for findImage = 1:size(allImages,1)
                            if size(allImages,1) < 10
                                timeStamp = 't1';
                            elseif size(allImages,1) < 100
                                timeStamp = 't01';
                            elseif size(allImages,1) < 1000
                                timeStamp = 't001';
                            else
                                timeStamp = 't0001';
                            end
                            
                            if isempty(cell2mat(strfind(allImages(findImage), timeStamp))) == 0
                                nTsPlanes = size(imfinfo(char(allImages(findImage))),1);
                                    
                                    if iChannel == 1
                                        rawImage = zeros(ip.xDim.(char(ip.allExperiments{ee})), ip.yDim.(char(ip.allExperiments{ee})), nTsPlanes, nChannels);
                                    end
                                    
                                    for iPlane = 1:nTsPlanes
                                        rawImage(:,:,iPlane,iChannel) = imread(char(allImages(findImage)), iPlane);
                                    end
                                    break
                                
                            end
                        end
                        cd (['..' filesep])
                    end
                    
                    backgrounddata = struct;
                    minBackground = inf;
                    for iChannel = 1:nChannels
                        for iPlane = 1:nTsPlanes
                            data = rawImage(:,:,iPlane,iChannel);
                            backgroundMask(backgroundMask == 0) = NaN;
                            maskedImage = data.*backgroundMask;
                            maskedImageVector = maskedImage(:)';
                            maskedImageVector = maskedImageVector(~isnan(maskedImageVector));
                            maskedImageVectorStack.(char(sprintf('Plane_%d', iPlane))) = maskedImageVector;
                            if nanmedian(maskedImageVector) < minBackground
                                minBackground = nanmedian(maskedImageVector);
                            end
                        end
                        backgrounddata.minMedian(iChannel,1) = allChannels(iChannel);
                        backgrounddata.minMedian(iChannel,2) = {minBackground};
                        backgrounddata.fullStackVectors = maskedImageVectorStack;
                    end
                end
         
%               EXTRACT CELL DATA
%               If the first event in a cell is to be analyzed, also perfor
%               whole-cell meassurements using the cellMask.mat file.
                switch ip.executionMode
                    case 'New'
                        checkCellEvents = fieldnames(logCellEvents.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).(char(cellDirs{iCellDirs})));
                        
                        if strcmp(checkCellEvents(1),char(cellEvents(iCellEvents))) == 1 &&...
                                strcmp(ip.executionMode, 'Remake') == 0
                            eventDirPath = ip.(char(ip.allExperiments{ee})).(char(tsDirs{ts})).eventMetadata.(char(cellDirs{iCellDirs})).(char(cellEvents(iCellEvents))).eventDirPath;
                            cd (char(eventDirPath))
                            load('cellMask.mat')
                            
                            celldata = struct;
                            
                            cd (char(pDeconPath));
                            
                            for iTimes = 1:2
                                
                                for iChannel = 1:nChannels
                                    
                                    cd (char(allChannels{iChannels}))  
                                    clear dir
                                    dirData = dir; % Get the data for the current directory
                                    dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
                                    dirData(strncmp({dirData.name}, '~', 1)) = [];
                                    allImages = {dirData.name}';
                                    
                                    if iTimes == 1 && iChannel == 1
                                        iStartFrame = min(logCellEventTimes.(char(ip.allExperiments(ee))).(char(tsDirs(ts))).(char(cellDirs(iCellDirs))));
                                        iEndFrame = max(logCellEventTimes.(char(ip.allExperiments(ee))).(char(tsDirs(ts))).(char(cellDirs(iCellDirs))));
                                        iStartFrame = iStartFrame - ip.extTimePre;
                                        iEndFrame = iEndFrame + ip.extTimePost;
                                        if iStartFrame < 1
                                            iStartFrame = 1;
                                        end
                                        if iEndFrame > size(allImages,1)
                                            iEndFrame = size(allImages,1);
                                        end
                                        processTimes = { iStartFrame, iEndFrame};
                                    end
                                    
                                    time = cell2mat(processTimes(iTimes));
                                    
                                    if iChannel == 1
                                        syntax = '%s';
                                        if maxTimes == 9
                                            stringT = 't%d';
                                        elseif maxTimes == 99
                                            if iTime < 10
                                                stringT = 't0%d';
                                            else
                                                stringT = 't%d';
                                            end
                                        elseif maxTimes == 999
                                            if iTime < 10
                                                stringT = 't00%d';
                                            elseif iTime < 100
                                                stringT = 't0%d';
                                            else
                                                stringT = 't%d';
                                            end
                                        elseif maxTimes == 9999
                                            if iTime < 10
                                                stringT = 't000%d';
                                            elseif iTime < 100
                                                stringT = 't00%d';
                                            elseif iTime < 1000
                                                stringT = 't0%d';
                                            else
                                                stringT = 't%d';
                                            end
                                        end
                                    end
                                    timeForm = sprintf(char(syntax), stringT);
                                    timeStamp = sprintf(char(timeForm), time);
                                    
                                    for findImage = 1:size(allImages,1)
                                        if isempty(cell2mat(strfind(allImages(findImage), timeStamp))) == 0
                                            nTsPlanes = size(imfinfo(char(allImages(findImage))),1);
                                            
                                            if iChannel == 1 % Preallocate
                                                rawImage = zeros(ip.xDim.(char(ip.allExperiments{ee})), ip.yDim.(char(ip.allExperiments{ee})), nTsPlanes);
                                            end
                                            
                                            for iPlane = 1:nTsPlanes
                                                rawImage(:,:,iPlane) = imread(char(allImages(findImage)), iPlane);
                                            end
                                            break
                                        end
                                    end
                                    %                           Crop image stack to cell region only
                                    singleCellMask = cellMask(:,:,iTimes);
                                    stats = regionprops(singleCellMask,'BoundingBox');
                                    cellMaskROI = singleCellMask(ceil(stats.BoundingBox(2)):ceil(stats.BoundingBox(2)) + stats.BoundingBox(4), ...
                                        ceil(stats.BoundingBox(1)):ceil(stats.BoundingBox(1)) + stats.BoundingBox(3));
                                    rawImageROI = rawImage(ceil(stats.BoundingBox(2)):ceil(stats.BoundingBox(2)) + stats.BoundingBox(4), ...
                                        ceil(stats.BoundingBox(1)):ceil(stats.BoundingBox(1)) + stats.BoundingBox(3), :);
                                    %                           Mask raw image stack
                                    maskedImageROI = rawImageROI;
                                    for iPlane = 1:nTsPlanes
                                        maskedImageROI(:,:,iPlane) = rawImageROI(:,:,iPlane).*cellMaskROI;
                                    end
                                    maskedImageROI(maskedImageROI == 0) = NaN;
                                    %                           Find the plane with highest pixel sum
                                    findMaxSum = 0;
                                    for iPlane = 1:nTsPlanes
                                        if nansum(nansum(maskedImageROI(:,:,iPlane))) > findMaxSum
                                            findMaxSum = nansum(nansum(maskedImageROI(:,:,iPlane)));
                                            maxPlane = iPlane;
                                        end
                                    end
                                    %                           Create maximum intensity projection of stack
                                    mipImageROI = max(maskedImageROI,[],3);
                                    
                                    %                           Save data to celldata structure
                                    nameTimes = {'startFrame', 'endFrame'};
                                    nameChannels = {'primary', 'secondary', 'tertiary'};
                                    
                                    celldata.(char(nameTimes(iTimes))).(char(nameChannels(iChannel))).plane = maxPlane;
                                    celldata.(char(nameTimes(iTimes))).(char(nameChannels(iChannel))).time = processTimes(iTimes);
                                    celldata.(char(nameTimes(iTimes))).(char(nameChannels(iChannel))).singlePlane = maskedImageROI(:,:,maxPlane);
                                    celldata.(char(nameTimes(iTimes))).(char(nameChannels(iChannel))).fullStack = maskedImageROI(:,:,:);
                                    celldata.(char(nameTimes(iTimes))).(char(nameChannels(iChannel))).mip = mipImageROI;
                                    celldata.(char(nameTimes(iTimes))).(char(nameChannels(iChannel))).label = (char(allChannels(iChannel)));
                                    celldata.(char(nameTimes(iTimes))).(char(nameChannels(iChannel))).coordinates.yDim = ...
                                        [ceil(stats.BoundingBox(2)) (ceil(stats.BoundingBox(2)) + stats.BoundingBox(4))];
                                    celldata.(char(nameTimes(iTimes))).(char(nameChannels(iChannel))).coordinates.xDim = ...
                                        [ceil(stats.BoundingBox(1)) (ceil(stats.BoundingBox(1)) + stats.BoundingBox(3))];
                                    
                                    cd (['..' filesep])
                                end
                            end
                        end % if prfmCellMask
                end
                previous_ts = tsDirPath;
                
                cd (char(pDeconPath))
                cd (['..' filesep])
                
                destination = 'eventROIs';
                        
                if ~exist(destination,'dir')
                    mkdir(destination);
                end
                cd    (char(destination))
                
                destination = (char(cellDirs{iCellDirs}));
                if ~exist(destination,'dir')
                    mkdir(destination);
                end
                cd    (char(destination))
                
                mkdir (char(cellEvents{iCellEvents}))
                cd    (char(cellEvents{iCellEvents}))
                
                switch ip.executionMode
                    case 'Remake'
                        files = {'eventROI' 'roiMetadata'};
                        for iFiles = 1:length(files)
                            if ~exist(files{iFiles},'file') == 0
                                delete(files{iFiles})
                            end
                            save(files{iFiles}, files{iFiles})
                        end
                    case 'New'
                        files = {'eventROI' 'roiMetadata' 'backgrounddata' 'celldata'};
                        for iFiles = 1:length(files)
                            if ~exist(files{iFiles},'file') == 0
                                delete(files{iFiles})
                            end
                            save(files{iFiles}, files{iFiles})
                        end
                end
            end % iCellEvents
        end
        
   end
end

cd(ip.fdp)
end

