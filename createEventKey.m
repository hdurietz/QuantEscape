function [] = createEventKey(ip)
%% Create a list of all events identified in each acquisition, to use as a 
% Key data sheet when validating event tracking
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

allExperiments = ip.allExperiments;
nExperiments = length(allExperiments);             
nEvents_all = 0;
% Create allROI metadata struct
cd (char(ip.dataDir))
for ee = 1:nExperiments
    cd (char(allExperiments(ee)))
    if ip.processAll_TS == 1
       dirData = dir; % Get the data for the current directory
       dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
       dirData(strncmp({dirData.name}, '~', 1)) = [];
       dirIndex = [dirData.isdir];  % Find the index for directories
       tsDirs = {dirData(dirIndex).name}';   
       tsDirsField = tsDirs;
       allDirs = tsDirs;
    elseif ip.processAll_TS == 0
       dirData = dir; % Get the data for the current directory
       allDirs = dir; % Get the data for the current directory
       allDirs(strncmp({allDirs.name}, '.', 1)) = []; % Remove false files
       allDirs(strncmp({allDirs.name}, '~', 1)) = [];
       dirIndex = [allDirs.isdir];  % Find the index for directories
       allDirs = {allDirs(dirIndex).name}';   
       idx = 1;
       for ii = 1:length(dirData) % Include only selected files
           if (dirData(ii).name(length(dirData(ii).name)) == '#') == 1 
               tsDirs(idx,1) = {dirData(ii).name};
               tsDirsField(idx,1) = {dirData(ii).name(1:(length(dirData(ii).name)-1))};
               idx = idx+1;
           end
       end
    end
    
    nEvents_TS = 0;
    clear allEvents_TS;
    
    for TS = 1:length(tsDirs)
        cd (char(tsDirs(TS)));
        cd 'eventROIs'
        clear dir
        dirData = dir; % Get the data for the current directory
        dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
        dirIndex = [dirData.isdir];  % Find the index for directories
        cellDirs = {dirData(dirIndex).name}';
        
        for iCellDirs = 1:length(cellDirs)
            cd (char(cellDirs(iCellDirs)));
            clear dir
            if ip.processAll_events == 1
               dirData = dir; % Get the data for the current directory
               dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
               dirData(strncmp({dirData.name}, '~', 1)) = [];
               dirIndex = [dirData.isdir];  % Find the index for directories
               cellEvents = {dirData(dirIndex).name}';
            elseif ip.processAll_events == 0
                dirData = dir; % Get the data for the current directory
                idx = 1;
                for ii = 1:length(dirData) % Include only selected files
                    if (dirData(ii).name(length(dirData(ii).name)) == '#') == 1
                        cellEvents(idx,1) = {dirData(ii).name};
                        idx = idx+1;
                    end
                end
            end
            
            for iCellEvents = 1:length(cellEvents)
                cd (char(cellEvents(iCellEvents)));
                nEvents_all = nEvents_all +1;
                nEvents_TS = nEvents_TS +1;
                    listEvents_all(nEvents_all,1) = {char(allExperiments(ee))};            %#ok<*AGROW>
                    listEvents_all(nEvents_all,2) = {char(tsDirsField(TS))};                    
                    listEvents_all(nEvents_all,3) = {char(cellDirs(iCellDirs))};          
                    listEvents_all(nEvents_all,4) = {char(cellEvents(iCellEvents))};  
                    
                    listEvents_TS(nEvents_TS,1) = {char(allExperiments(ee))};           
                    listEvents_TS(nEvents_TS,2) = {char(tsDirsField(TS))};                    
                    listEvents_TS(nEvents_TS,3) = {char(cellDirs(iCellDirs))};          
                    listEvents_TS(nEvents_TS,4) = {char(cellEvents(iCellEvents))}; 
                 cd (['..' filesep])  
            end
            cd (['..' filesep])
            clear cellEvents
        end
        clear cellDirs

        cd (['..' filesep '..'])
    end
    
    % Save event metadata to first time series foler (TS01) of experiment             
    cd (char(allDirs(1)));
    destination = 'eventKey';
    if ~exist(destination,'dir')
        mkdir(destination);
    end
    cd (destination)
    eventKey = listEvents_all;
    save('eventKey.mat', 'eventKey')
    eventKey(:,7) = eventKey(:,4);
    eventKey(:,5) = eventKey(:,3);
    eventKey(:,3) = eventKey(:,2);
    eventKey(:,2) = {','};
    eventKey(:,4) = {','};
    eventKey(:,6) = {','};
    dlmwrite('eventKey.csv', eventKey, 'delimiter', '')
    
    clear tsDirs
    cd (['..' filesep '..'])
end





end

