function [] = normalizeData( ip )
%% Normalize single vesicle tracking data
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

fprintf('\nNormalizing data...\n')

nExperiments = length(ip.allExperiments);
% Create allROI metadata struct
cd (char(ip.dataDir))
for ee = 1:nExperiments
    allChannels = ip.allChannels.(char(ip.allExperiments{ee}));
    nChannels = length(allChannels);
    cd (char(ip.allExperiments{ee}))
    if ip.normAll_TS == 1
       dirData = dir; % Get the data for the current directory
       dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
       dirData(strncmp({dirData.name}, '~', 1)) = [];
       dirIndex = [dirData.isdir];  % Find the index for directories
       tsDirs = {dirData(dirIndex).name}';
       tsDirsField = tsDirs;
    elseif ip.normAll_TS == 0
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
    
    for TS = 1:length(tsDirs)
        disp(tsDirs(TS))
        cd (char(tsDirs(TS)));
        
        switch ip.dataType
            case 'cargoTrackingdata'
                if exist('cargoTrackingdata','dir') == 0
                    cd (['..' filesep])
                    continue
                end
                cd 'cargoTrackingdata'
            case 'compartmentTrackingdata'
                if exist('compartmentTrackingdata','dir') == 0
                    cd (['..' filesep])
                    continue
                end
                cd 'compartmentTrackingdata'
        end
        
        clear dir
        dirData = dir; % Get the data for the current directory
        dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
        dirIndex = [dirData.isdir];  % Find the index for directories
        cellDirs = {dirData(dirIndex).name}';
        
        for iCellDirs = 1:length(cellDirs)
            cd (char(cellDirs(iCellDirs)));
            clear dir cellEvents
            if ip.normAll_events == 1
               dirData = dir; % Get the data for the current directory
               dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
               dirData(strncmp({dirData.name}, '~', 1)) = [];
               dirIndex = [dirData.isdir];  % Find the index for directories
               cellEvents = {dirData(dirIndex).name}';
               cellEventsField = cellEvents;
            elseif ip.normAll_events == 0
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
                clear cellEvents cellEventsField                
                continue
            end
            
            for iCellEvents = 1:length(cellEvents)
                disp(cellEvents(iCellEvents))
                cd (char(cellEvents(iCellEvents)));
                
                clear backgrounddata celldata vectordata trackingdata
                load('trackingdata.mat');
                
                if isfield(trackingdata, 't0_not_found') == 1
                    fprintf('\nSkipping %s %s, t0 not found during tracking\n', char(tsDirs(TS)), char(cellEvents(iCellEvents)))
                    pw_store = pwd;
                    
                    pw = [ip.dataDir filesep ip.allExperiments{ee} filesep char(tsDirs(TS))];
                    cd (char(pw));
                    switch ip.dataType
                    case 'cargoTrackingdata'
                        destination = 'normdata_cargo';
                    case 'compartmentTrackingdata'
                        destination = 'normdata_compartment';
                    end
                    if ~exist(destination,'dir')
                        mkdir(destination);
                    end
                    cd (destination);
                    
                    
                    destination = (char(cellDirs(iCellDirs)));
                    if ~exist(destination,'dir')
                        mkdir(destination);
                    end
                    cd (destination);
                    
                    destination = (char(cellEvents(iCellEvents)));
                    if ~exist(destination,'dir')
                        mkdir(destination);
                    end
                    cd (destination);
                    
                    calc_celldata = [];
                    normdata.t0_not_found = [];
                    models = [];
                    save('calc_celldata.mat', 'calc_celldata')
                    save('normdata.mat', 'normdata')
                    save ('models.mat', 'models')
                    
                    cd (pw_store)
                    cd (['..' filesep])
                    clear normdata trackingdata
                    continue
                end
                
                switch ip.dataType
                    case 'cargoTrackingdata'
                        load('vectordata.mat'); %#ok<*LOAD>
                    case 'compartmentTrackingdata'
                          load('vectordata.mat');
                end
                
                pw_store = pwd;
                pw = [ip.dataDir filesep ip.allExperiments{ee} filesep tsDirs{TS} filesep 'eventROIs' filesep cellDirs{iCellDirs} filesep cellEventsField{iCellEvents}];
                cd (char(pw))
                load('backgrounddata.mat');
                load('celldata.mat');
                
                if nChannels == 2
                    if strcmp(ip.channelOrder.primary,'channel_B') == 1
                        nCellData.startFrame.primary = celldata.startFrame.secondary;
                        nCellData.startFrame.secondary = celldata.startFrame.primary;
                        nCellData.endFrame.primary = celldata.endFrame.secondary;
                        nCellData.endFrame.secondary = celldata.endFrame.primary;
                        celldata = nCellData;
                        imBackground.primary = backgrounddata.minMedian{2,2};
                        imBackground.secondary = backgrounddata.minMedian{1,2};
                        ip.normOption.primary = ip.normOption.channel_B;
                        ip.normOption.secondary = ip.normOption.channel_A;
                        ip.bgCorrection.primary = ip.bgCorrection_channel_B;
                        ip.bgCorrection.secondary = ip.bgCorrection_channel_A;
                        
                        ip.measureOptions.primary.object = ip.measureOptions.channel_B.object;
                        ip.measureOptions.secondary.object = ip.measureOptions.channel_A.object;
                        ip.measureOptions.primary.localBg = ip.measureOptions.channel_B.localBg;
                        ip.measureOptions.secondary.localBg = ip.measureOptions.channel_A.localBg;
                        
                        normdata.metadata.channelNames.primary = allChannels(2);
                        normdata.metadata.channelNames.secondary = allChannels(1);
                    elseif  strcmp(ip.channelOrder.primary,'channel_A') == 1
                        nCellData.startFrame.primary = celldata.startFrame.primary;
                        nCellData.startFrame.secondary = celldata.startFrame.secondary;
                        nCellData.endFrame.primary = celldata.endFrame.primary;
                        nCellData.endFrame.secondary = celldata.endFrame.secondary;
                        celldata = nCellData;
                        imBackground.primary = backgrounddata.minMedian{1,2};
                        imBackground.secondary = backgrounddata.minMedian{2,2};
                        ip.normOption.primary = ip.normOption.channel_A;
                        ip.normOption.secondary = ip.normOption.channel_B;
                        ip.bgCorrection.primary = ip.bgCorrection_channel_A;
                        ip.bgCorrection.secondary = ip.bgCorrection_channel_B;
                        
                        ip.measureOptions.primary.object = ip.measureOptions.channel_A.object;
                        ip.measureOptions.secondary.object = ip.measureOptions.channel_B.object;
                        ip.measureOptions.primary.localBg = ip.measureOptions.channel_A.localBg;
                        ip.measureOptions.secondary.localBg = ip.measureOptions.channel_B.localBg;
                        
                        normdata.metadata.channelNames.primary = allChannels(1);
                        normdata.metadata.channelNames.secondary = allChannels(2);
                    end
                    
                elseif nChannels == 3
                    if strcmp(ip.channelOrder.primary,'channel_A') == 1
                        if strcmp(ip.channelOrder.secondary,'channel_C') == 1
                            nCellData.startFrame.primary = celldata.startFrame.primary;
                            nCellData.startFrame.secondary = celldata.startFrame.tertiary;
                            nCellData.startFrame.tertiary = celldata.startFrame.secondary;
                            nCellData.endFrame.primary = celldata.endFrame.primary;
                            nCellData.endFrame.secondary = celldata.endFrame.tertiary;
                            nCellData.endFrame.tertiary = celldata.endFrame.secondary;
                            celldata = nCellData;
                            imBackground.primary = backgrounddata.minMedian{1,2};
                            imBackground.secondary = backgrounddata.minMedian{3,2};
                            imBackground.tertiary = backgrounddata.minMedian{2,2};
                            ip.normOption.primary = ip.normOption.channel_A;
                            ip.normOption.secondary = ip.normOption.channel_C;
                            ip.normOption.tertiary = ip.normOption.channel_B;
                            ip.bgCorrection.primary = ip.bgCorrection_channel_A;
                            ip.bgCorrection.secondary = ip.bgCorrection_channel_C;
                            ip.bgCorrection.tertiary = ip.bgCorrection_channel_B;
                            
                            ip.measureOptions.primary.object = ip.measureOptions.channel_A.object;
                            ip.measureOptions.secondary.object = ip.measureOptions.channel_C.object;
                            ip.measureOptions.tertiary.object = ip.measureOptions.channel_B.object;
                            ip.measureOptions.primary.localBg = ip.measureOptions.channel_A.localBg;
                            ip.measureOptions.secondary.localBg = ip.measureOptions.channel_C.localBg;
                            ip.measureOptions.tertiary.localBg = ip.measureOptions.channel_B.localBg;
                            
                            normdata.metadata.channelNames.primary = allChannels(1);
                            normdata.metadata.channelNames.secondary = allChannels(3);
                            normdata.metadata.channelNames.tertiary = allChannels(2);
                        end
                        
                    elseif strcmp(ip.channelOrder.primary,'channel_B') == 1
                        if strcmp(ip.channelOrder.secondary,'channel_A') == 1
                            nCellData.startFrame.primary = celldata.startFrame.secondary;
                            nCellData.startFrame.secondary = celldata.startFrame.primary;
                            nCellData.startFrame.tertiary = celldata.startFrame.tertiary;
                            nCellData.endFrame.primary = celldata.endFrame.secondary;
                            nCellData.endFrame.secondary = celldata.endFrame.primary;
                            nCellData.endFrame.tertiary = celldata.endFrame.tertiary;
                            celldata = nCellData;
                            imBackground.primary = backgrounddata.minMedian{2,2};
                            imBackground.secondary = backgrounddata.minMedian{1,2};
                            imBackground.tertiary = backgrounddata.minMedian{3,2};
                            ip.normOption.primary = ip.normOption.channel_B;
                            ip.normOption.secondary = ip.normOption.channel_A;
                            ip.normOption.tertiary = ip.normOption.channel_C;
                            ip.bgCorrection.primary = ip.bgCorrection_channel_B;
                            ip.bgCorrection.secondary = ip.bgCorrection_channel_A;
                            ip.bgCorrection.tertiary = ip.bgCorrection_channel_C;
                            
                            ip.measureOptions.primary.object = ip.measureOptions.channel_B.object;
                            ip.measureOptions.secondary.object = ip.measureOptions.channel_A.object;
                            ip.measureOptions.tertiary.object = ip.measureOptions.channel_C.object;
                            ip.measureOptions.primary.localBg = ip.measureOptions.channel_B.localBg;
                            ip.measureOptions.secondary.localBg = ip.measureOptions.channel_A.localBg;
                            ip.measureOptions.tertiary.localBg = ip.measureOptions.channel_C.localBg;
                            
                            normdata.metadata.channelNames.primary = allChannels(2);
                            normdata.metadata.channelNames.secondary = allChannels(1);
                            normdata.metadata.channelNames.tertiary = allChannels(3);
                            
                        elseif strcmp(ip.channelOrder.secondary,'channel_C') == 1
                            nCellData.startFrame.primary = celldata.startFrame.secondary;
                            nCellData.startFrame.secondary = celldata.startFrame.tertiary;
                            nCellData.startFrame.tertiary = celldata.startFrame.primary;
                            nCellData.endFrame.primary = celldata.endFrame.secondary;
                            nCellData.endFrame.secondary = celldata.endFrame.tertiary;
                            nCellData.endFrame.tertiary = celldata.endFrame.primary;
                            celldata = nCellData;
                            imBackground.primary = backgrounddata.minMedian{2,2};
                            imBackground.secondary = backgrounddata.minMedian{3,2};
                            imBackground.tertiary = backgrounddata.minMedian{1,2};
                            ip.normOption.primary = ip.normOption.channel_B;
                            ip.normOption.secondary = ip.normOption.channel_C;
                            ip.normOption.tertiary = ip.normOption.channel_A;
                            ip.bgCorrection.primary = ip.bgCorrection_channel_B;
                            ip.bgCorrection.secondary = ip.bgCorrection_channel_C;
                            ip.bgCorrection.tertiary = ip.bgCorrection_channel_A;
                            
                            ip.measureOptions.primary.object = ip.measureOptions.channel_B.object;
                            ip.measureOptions.secondary.object = ip.measureOptions.channel_C.object;
                            ip.measureOptions.tertiary.object = ip.measureOptions.channel_A.object;
                            ip.measureOptions.primary.localBg = ip.measureOptions.channel_B.localBg;
                            ip.measureOptions.secondary.localBg = ip.measureOptions.channel_C.localBg;
                            ip.measureOptions.tertiary.localBg = ip.measureOptions.channel_A.localBg;
                            
                            normdata.metadata.channelNames.primary = allChannels(2);
                            normdata.metadata.channelNames.secondary = allChannels(3);
                            normdata.metadata.channelNames.tertiary = allChannels(1);
                        end
                        
                    elseif strcmp(ip.channelOrder.primary,'channel_C') == 1
                        if strcmp(ip.channelOrder.secondary,'channel_B') == 1
                            nCellData.startFrame.primary = celldata.startFrame.tertiary;
                            nCellData.startFrame.secondary = celldata.startFrame.secondary;
                            nCellData.startFrame.tertiary = celldata.startFrame.primary;
                            nCellData.endFrame.primary = celldata.endFrame.tertiary;
                            nCellData.endFrame.secondary = celldata.endFrame.secondary;
                            nCellData.endFrame.tertiary = celldata.endFrame.primary;
                            celldata = nCellData;
                            imBackground.primary = backgrounddata.minMedian{3,2};
                            imBackground.secondary = backgrounddata.minMedian{2,2};
                            imBackground.tertiary = backgrounddata.minMedian{1,2};
                            ip.normOption.primary = ip.normOption.channel_C;
                            ip.normOption.secondary = ip.normOption.channel_B;
                            ip.normOption.tertiary = ip.normOption.channel_A;
                            ip.bgCorrection.primary = ip.bgCorrection_channel_C;
                            ip.bgCorrection.secondary = ip.bgCorrection_channel_B;
                            ip.bgCorrection.tertiary = ip.bgCorrection_channel_A;
                            
                            ip.measureOptions.primary.object = ip.measureOptions.channel_C.object;
                            ip.measureOptions.secondary.object = ip.measureOptions.channel_B.object;
                            ip.measureOptions.tertiary.object = ip.measureOptions.channel_A.object;
                            ip.measureOptions.primary.localBg = ip.measureOptions.channel_C.localBg;
                            ip.measureOptions.secondary.localBg = ip.measureOptions.channel_B.localBg;
                            ip.measureOptions.tertiary.localBg = ip.measureOptions.channel_A.localBg;
                            
                            normdata.metadata.channelNames.primary = allChannels(3);
                            normdata.metadata.channelNames.secondary = allChannels(2);
                            normdata.metadata.channelNames.tertiary = allChannels(1);
                            
                        elseif strcmp(ip.channelOrder.secondary,'channel_A') == 1
                            nCellData.startFrame.primary = celldata.startFrame.tertiary;
                            nCellData.startFrame.secondary = celldata.startFrame.primary;
                            nCellData.startFrame.tertiary = celldata.startFrame.secondary;
                            nCellData.endFrame.primary = celldata.endFrame.tertiary;
                            nCellData.endFrame.secondary = celldata.endFrame.primary;
                            nCellData.endFrame.tertiary = celldata.endFrame.secondary;
                            celldata = nCellData;
                            imBackground.primary = backgrounddata.minMedian{3,2};
                            imBackground.secondary = backgrounddata.minMedian{1,2};
                            imBackground.tertiary = backgrounddata.minMedian{2,2};
                            ip.normOption.primary = ip.normOption.channel_C;
                            ip.normOption.secondary = ip.normOption.channel_A;
                            ip.normOption.tertiary = ip.normOption.channel_B;
                            ip.bgCorrection.primary = ip.bgCorrection_channel_C;
                            ip.bgCorrection.secondary = ip.bgCorrection_channel_A;
                            ip.bgCorrection.tertiary = ip.bgCorrection_channel_B;
                            
                            ip.measureOptions.primary.object = ip.measureOptions.channel_C.object;
                            ip.measureOptions.secondary.object = ip.measureOptions.channel_A.object;
                            ip.measureOptions.tertiary.object = ip.measureOptions.channel_B.object;
                            ip.measureOptions.primary.localBg = ip.measureOptions.channel_C.localBg;
                            ip.measureOptions.secondary.localBg = ip.measureOptions.channel_A.localBg;
                            ip.measureOptions.tertiary.localBg = ip.measureOptions.channel_B.localBg;
                            
                            normdata.metadata.channelNames.primary = allChannels(3);
                            normdata.metadata.channelNames.secondary = allChannels(1);
                            normdata.metadata.channelNames.tertiary = allChannels(2);
                           
                        end
                    end
                end
                
                if nChannels == 2
                pChannels = {'primary', 'secondary'};
                elseif nChannels == 3
                    pChannels = {'primary', 'secondary', 'tertiary'};
                end
                pFrames = {'startFrame', 'endFrame'};
                
                for iFrames = 1:length(pFrames)
                    for iChannels = 1:length(pChannels)
                           
                        data = celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).singlePlane;
                        data = data(~isnan(data));
                        data = data(:)';
                        
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).cell_median = nanmedian(data);
                        
                        logdata = log10(data);
                        thresh_log = mean(logdata) + ip.n*std(logdata);
                        thresh_lin = 10^thresh_log;
                        thresh_cellObjects = data(data > thresh_lin);
                        cellObjectsMedian = median(thresh_cellObjects); %- imBackground.(char(pChannels(iChannels)));
                        cellObjectsMean = mean(thresh_cellObjects);
                        cellObjectsStd = std(thresh_cellObjects);
                        cellObjectsIqr = iqr(thresh_cellObjects);
                        
                        thresh_cellBackground = data(data < thresh_lin);
                        cellBackgroundMedian = median(thresh_cellBackground); %- imBackground.(char(pChannels(iChannels)));
                        cellBackgroundMean = mean(thresh_cellBackground);
                        cellBackgroundStd = std(thresh_cellBackground);
                        cellBackgroundIqr = iqr(thresh_cellBackground);
                        
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).lin = data;
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).log = logdata;
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).thresh_log = thresh_log;
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).thresh_lin = thresh_lin;
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).thresh_cellObjects = thresh_cellObjects;
                        
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).cellObjectsMedian = cellObjectsMedian;
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).cellObjectsMean = cellObjectsMean;
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).cellObjectsStd = cellObjectsStd;
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).cellObjectsIqr = cellObjectsIqr;
                        
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).thresh_cellBackground = thresh_cellBackground;
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).cellBackgroundMedian = cellBackgroundMedian;
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).cellBackgroundMean = cellBackgroundMean;
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).cellBackgroundStd = cellBackgroundStd;
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).cellBackgroundIqr = cellBackgroundIqr;
                        
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).cellMedian = median(data);
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).cellMean = mean(data);
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).cellStd = std(data);
                        calc_celldata.(char(pFrames(iFrames))).(char(pChannels(iChannels))).cellIqr = iqr(data);
                    end
                end
                
                % Whole CELL Bg MODEL
                primary_y = [calc_celldata.startFrame.primary.cell_median calc_celldata.endFrame.primary.cell_median];
                primary_x = [cell2mat(celldata.startFrame.primary.time) cell2mat(celldata.endFrame.primary.time)];
                
                secondary_y = [calc_celldata.startFrame.secondary.cell_median calc_celldata.endFrame.secondary.cell_median];
                secondary_x = [cell2mat(celldata.startFrame.secondary.time) cell2mat(celldata.endFrame.secondary.time)];
                
                if nChannels == 3
                tertiary_y = [calc_celldata.startFrame.tertiary.cell_median calc_celldata.endFrame.tertiary.cell_median];
                tertiary_x = [cell2mat(celldata.startFrame.tertiary.time) cell2mat(celldata.endFrame.tertiary.time)];  
                end
                
%               Fit linear model                
                mdl_primary_cellmedian = fitlm(primary_x, primary_y);
                mdlData_primary_cellmedian=zeros(600,1);%%%%%%%%%%%%%%%%
                for x=1:500
                    mdlData_primary_cellmedian(x) = mdl_primary_cellmedian.Coefficients{1,1} + mdl_primary_cellmedian.Coefficients{2,1}*x;
                end
                
                mdl_secondary_cellmedian = fitlm(secondary_x, secondary_y);
                mdlData_secondary_cellmedian=zeros(600,1);%%%%%%%%%%%%%%%%
                for x=1:500
                    mdlData_secondary_cellmedian(x) = mdl_secondary_cellmedian.Coefficients{1,1} + mdl_secondary_cellmedian.Coefficients{2,1}*x;
                end
                
                if nChannels == 3
                mdl_tertiary_cellmedian = fitlm(tertiary_x, tertiary_y);
                mdlData_tertiary_cellmedian=zeros(600,1);%%%%%%%%%%%%%%%%
                for x=1:500
                    mdlData_tertiary_cellmedian(x) = mdl_tertiary_cellmedian.Coefficients{1,1} + mdl_tertiary_cellmedian.Coefficients{2,1}*x;
                end
                end
                
                % Thresholded CELL Bg MODEL
                primary_y = [calc_celldata.startFrame.primary.cellBackgroundMedian calc_celldata.endFrame.primary.cellBackgroundMedian];
                primary_x = [cell2mat(celldata.startFrame.primary.time) cell2mat(celldata.endFrame.primary.time)];
                
                secondary_y = [calc_celldata.startFrame.secondary.cellBackgroundMedian calc_celldata.endFrame.secondary.cellBackgroundMedian];
                secondary_x = [cell2mat(celldata.startFrame.secondary.time) cell2mat(celldata.endFrame.secondary.time)];
                
                if nChannels == 3
                tertiary_y = [calc_celldata.startFrame.tertiary.cellBackgroundMedian calc_celldata.endFrame.tertiary.cellBackgroundMedian];
                tertiary_x = [cell2mat(celldata.startFrame.tertiary.time) cell2mat(celldata.endFrame.tertiary.time)];  
                end
                
%               Fit linear model                
                mdl_primary_cellBackgroundMedian = fitlm(primary_x, primary_y);
                mdlData_primary_cellBackgroundMedian=zeros(600,1);%%%%
                for x=1:500
                    mdlData_primary_cellBackgroundMedian(x) = mdl_primary_cellBackgroundMedian.Coefficients{1,1} + mdl_primary_cellBackgroundMedian.Coefficients{2,1}*x;
                end
                
                mdl_secondary_cellBackgroundMedian = fitlm(secondary_x, secondary_y);
                mdlData_secondary_cellBackgroundMedian=zeros(600,1);%%%%%%%%%
                for x=1:500
                    mdlData_secondary_cellBackgroundMedian(x) = mdl_secondary_cellBackgroundMedian.Coefficients{1,1} + mdl_secondary_cellBackgroundMedian.Coefficients{2,1}*x;
                end
                
                if nChannels == 3
                mdl_tertiary_cellBackgroundMedian = fitlm(tertiary_x, tertiary_y);
                mdlData_tertiary_cellBackgroundMedian=zeros(600,1);%%%%%%%%%%%%%%%%
                for x=1:500
                    mdlData_tertiary_cellBackgroundMedian(x) = mdl_tertiary_cellBackgroundMedian.Coefficients{1,1} + mdl_tertiary_cellBackgroundMedian.Coefficients{2,1}*x;
                end
                end          
                
                %CELL OBJECT MODEL
                primary_y = [calc_celldata.startFrame.primary.cellObjectsMedian calc_celldata.endFrame.primary.cellObjectsMedian];
                primary_x = [cell2mat(celldata.startFrame.primary.time) cell2mat(celldata.endFrame.primary.time)];
                
                secondary_y = [calc_celldata.startFrame.secondary.cellObjectsMedian calc_celldata.endFrame.secondary.cellObjectsMedian];
                secondary_x = [cell2mat(celldata.startFrame.secondary.time) cell2mat(celldata.endFrame.secondary.time)];
                
                if nChannels == 3
                tertiary_y = [calc_celldata.startFrame.tertiary.cellObjectsMedian calc_celldata.endFrame.tertiary.cellObjectsMedian];
                tertiary_x = [cell2mat(celldata.startFrame.tertiary.time) cell2mat(celldata.endFrame.tertiary.time)];  
                end
                
%               Fit linear model                
                mdl_primary_cellobjects = fitlm(primary_x, primary_y);
                mdlData_primary_cellobjects=zeros(600,1);%%%%%%%%%%%%%%%%
                for x=1:500
                    mdlData_primary_cellobjects(x) = mdl_primary_cellobjects.Coefficients{1,1} + mdl_primary_cellobjects.Coefficients{2,1}*x;
                end
                
                mdl_secondary_cellobjects = fitlm(secondary_x, secondary_y);
                mdlData_secondary_cellobjects=zeros(600,1);%%%%%%%%%%%%%%%%
                for x=1:500
                    mdlData_secondary_cellobjects(x) = mdl_secondary_cellobjects.Coefficients{1,1} + mdl_secondary_cellobjects.Coefficients{2,1}*x;
                end
                
                if nChannels == 3
                mdl_tertiary_cellobjects = fitlm(tertiary_x, tertiary_y);
                mdlData_tertiary_cellobjects=zeros(600,1);%%%%%%%%%%%%%%%%
                for x=1:500
                    mdlData_tertiary_cellobjects(x) = mdl_tertiary_cellobjects.Coefficients{1,1} + mdl_tertiary_cellobjects.Coefficients{2,1}*x;
                end
                end
                
               %%%
                nRoll = ip.nRoll;
                for iRoll = 1:length(vectordata.(char(ip.measureOptions.primary.object)).primary)
                    
                    if iRoll <= nRoll

                    normdata.bgCorrection.local.primary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.primary.object)).primary(iRoll) - mean(vectordata.(char(ip.measureOptions.primary.localBg)).primary(1:iRoll+nRoll));
                    normdata.bgCorrection.local.secondary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.secondary.object)).secondary(iRoll) - mean(vectordata.(char(ip.measureOptions.secondary.localBg)).secondary(1:iRoll+nRoll));
                    
                    normdata.bgCorrection.image.primary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.primary.object)).primary(iRoll) - imBackground.primary;
                    normdata.bgCorrection.image.secondary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.secondary.object)).secondary(iRoll) - imBackground.secondary;
                    
                    normdata.bgCorrection.cell.primary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.primary.object)).primary(iRoll) -  mdlData_primary_cellBackgroundMedian(trackingdata.tStartROI+iRoll-1,1);
                    normdata.bgCorrection.cell.secondary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.secondary.object)).secondary(iRoll) -  mdlData_secondary_cellBackgroundMedian(trackingdata.tStartROI+iRoll-1,1);
                    
                    if nChannels == 3
                       normdata.bgCorrection.local.tertiary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.tertiary.object)).tertiary(iRoll) - mean(vectordata.(char(ip.measureOptions.tertiary.localBg)).tertiary(1:iRoll+nRoll)); 
                       normdata.bgCorrection.image.tertiary(iRoll) = ...
                           vectordata.(char(ip.measureOptions.tertiary.object)).tertiary(iRoll) - imBackground.tertiary; 
                       normdata.bgCorrection.cell.tertiary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.tertiary.object)).tertiary(iRoll) -  mdlData_tertiary_cellBackgroundMedian(trackingdata.tStartROI+iRoll-1,1);
                    end  
                    
                    elseif iRoll > length(vectordata.(char(ip.measureOptions.primary.object)).primary) - nRoll
                    normdata.bgCorrection.local.primary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.primary.object)).primary(iRoll) - mean(vectordata.(char(ip.measureOptions.primary.localBg)).primary(iRoll-nRoll:end));
                    normdata.bgCorrection.local.secondary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.secondary.object)).secondary(iRoll) - mean(vectordata.(char(ip.measureOptions.secondary.localBg)).secondary(iRoll-nRoll:end));
                    
                    normdata.bgCorrection.image.primary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.primary.object)).primary(iRoll) - imBackground.primary;
                    normdata.bgCorrection.image.secondary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.secondary.object)).secondary(iRoll) - imBackground.secondary;
                    
                    normdata.bgCorrection.cell.primary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.primary.object)).primary(iRoll) -  mdlData_primary_cellBackgroundMedian(trackingdata.tStartROI+iRoll-1,1);
                    normdata.bgCorrection.cell.secondary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.secondary.object)).secondary(iRoll) -  mdlData_secondary_cellBackgroundMedian(trackingdata.tStartROI+iRoll-1,1);
                    
                    if nChannels == 3
                       normdata.bgCorrection.local.tertiary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.tertiary.object)).tertiary(iRoll) - mean(vectordata.(char(ip.measureOptions.tertiary.localBg)).tertiary(iRoll-nRoll:end)); 
                       normdata.bgCorrection.image.tertiary(iRoll) = ...
                           vectordata.(char(ip.measureOptions.tertiary.object)).tertiary(iRoll) - imBackground.tertiary; 
                       normdata.bgCorrection.cell.tertiary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.tertiary.object)).tertiary(iRoll) -  mdlData_tertiary_cellBackgroundMedian(trackingdata.tStartROI+iRoll-1,1);
                    end   
                    
                    else
                    normdata.bgCorrection.local.primary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.primary.object)).primary(iRoll) - mean(vectordata.(char(ip.measureOptions.primary.localBg)).primary(iRoll-nRoll:iRoll+nRoll));
                    normdata.bgCorrection.local.secondary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.secondary.object)).secondary(iRoll) - mean(vectordata.(char(ip.measureOptions.secondary.localBg)).secondary(iRoll-nRoll:iRoll+nRoll));
                    
                    normdata.bgCorrection.image.primary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.primary.object)).primary(iRoll) - imBackground.primary;
                    normdata.bgCorrection.image.secondary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.secondary.object)).secondary(iRoll) - imBackground.secondary;
                    
                    try normdata.bgCorrection.cell.primary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.primary.object)).primary(iRoll) -  mdlData_primary_cellBackgroundMedian(trackingdata.tStartROI+iRoll-1,1);
                    catch
                        disp'.';
                    end
                    
                    normdata.bgCorrection.cell.secondary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.secondary.object)).secondary(iRoll) -  mdlData_secondary_cellBackgroundMedian(trackingdata.tStartROI+iRoll-1,1);
                    
                    if nChannels == 3
                       normdata.bgCorrection.local.tertiary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.tertiary.object)).tertiary(iRoll) - mean(vectordata.(char(ip.measureOptions.tertiary.localBg)).tertiary(iRoll-nRoll:iRoll+nRoll)); 
                       normdata.bgCorrection.image.tertiary(iRoll) = ...
                           vectordata.(char(ip.measureOptions.tertiary.object)).tertiary(iRoll) - imBackground.tertiary; 
                       normdata.bgCorrection.cell.tertiary(iRoll) = ...
                        vectordata.(char(ip.measureOptions.tertiary.object)).tertiary(iRoll) -  mdlData_tertiary_cellBackgroundMedian(trackingdata.tStartROI+iRoll-1,1);
                    end                    
                    end
                end                
                %%%
                
%               Calculate time in time series of first+last tracked data 
                normdata.metadata.t0 = trackingdata.t0;
                normStart = trackingdata.t0 - trackingdata.samplePre;
                normEnd = trackingdata.t0 + trackingdata.samplePost;
                
%               Use model data to normalize tracking data
%               Primary channel
%               Local bg correction
                switch ip.bgCorrection.primary
                    case 'local'
                        data = normdata.bgCorrection.local.primary;
                    case 'image'
                        data = normdata.bgCorrection.image.primary;
                    case 'cell'
                        data = normdata.bgCorrection.cell.primary;
                end
                pData = data;
                for iTime = normStart:normEnd
                    switch ip.normOption.primary
                        case 'Cell objects'
                            pData(iTime-normStart+1) = data(iTime-normStart+1)...
                                / (mdlData_primary_cellobjects(trackingdata.tStartROI+iTime-1,1) - imBackground.primary);
                    
                        case 'Pre-release'
                            pData(iTime-normStart+1) = data(iTime-normStart+1) / nanmean(data(1:trackingdata.samplePre));
                            
                        case 'No normalization'
                            pData(iTime-normStart+1) = data(iTime-normStart+1);
                            
                        case 'Cell background'
                            try     pData(iTime-normStart+1) = data(iTime-normStart+1)...
                                    / (mdlData_primary_cellBackgroundMedian(trackingdata.tStartROI+iTime-1,1) - imBackground.primary);
                            catch
                                try pData(iTime-normStart+1) = data(iTime-normStart+1)...
                                        / (mdlData_primary_cellBackgroundMedian(trackingdata.tStartROI+iTime,1) - imBackground.primary);
                                catch
                                    if mdlData_primary_cellBackgroundMedian(trackingdata.tStartROI+iTime,1) == imBackground.primary
                                        pData(iTime-normStart+1) = data(iTime-normStart+1) / 1;
                                    end
                                end
                            end
                            
                        case 'Local background'
                            for iRoll = 1:length(vectordata.(char(ip.measureOptions.primary.object)).primary)
                                if iRoll <= nRoll
                                     pData(iRoll) = data(iRoll)...
                                        /(mean(vectordata.(char(ip.measureOptions.primary.localBg)).primary(1:iRoll+nRoll)) - imBackground.primary);
                                elseif iRoll > length(vectordata.(char(ip.measureOptions.primary.object)).primary) - nRoll
                                     pData(iRoll) = data(iRoll)...
                                        /(mean(vectordata.(char(ip.measureOptions.primary.localBg)).primary(iRoll-nRoll:end)) - imBackground.primary);
                                else
                                    pData(iRoll) = data(iRoll)...
                                        /(mean(vectordata.(char(ip.measureOptions.primary.localBg)).primary(iRoll-nRoll:iRoll+nRoll)) - imBackground.primary);
                                end
                            end
                    end
                end
                switch ip.bgCorrection.primary
                    case 'local'
                        normdata.normalized.primary = pData;
                        normdata.metadata.normMethod.primary = ip.normOption.primary;
                        normdata.metadata.corrMethod.primary = 'Local background';
                    case 'image'
                        normdata.normalized.primary = pData;
                        normdata.metadata.normMethod.primary = ip.normOption.primary;
                        normdata.metadata.corrMethod.primary = 'Image background';
                    case 'cell'
                        normdata.normalized.primary = pData;
                        normdata.metadata.normMethod.primary = ip.normOption.primary;
                        normdata.metadata.corrMethod.primary = 'Cell background';
                end

%               Secondary channel
%               Local bg correction
                switch ip.bgCorrection.secondary
                    case 'local'
                        data = normdata.bgCorrection.local.secondary;
                    case 'image'
                        data = normdata.bgCorrection.image.secondary;
                    case 'cell'
                        data = normdata.bgCorrection.cell.secondary;    
                end
                pData = data;
                for iTime = normStart:normEnd
                    switch ip.normOption.secondary
                        case 'Cell objects'
                            try pData(iTime-normStart+1) = data(iTime-normStart+1)...
                                    / (mdlData_secondary_cellobjects(trackingdata.tStartROI+iTime-1,1) - imBackground.secondary);
                            catch
                                try pData(iTime-normStart+1) = data(iTime-normStart+1)...
                                        / (mdlData_secondary_cellobjects(trackingdata.tStartROI+iTime,1) - imBackground.secondary);
                                catch
                                    if mdlData_secondary_cellobjects(trackingdata.tStartROI+iTime,1) == imBackground.secondary
                                        pData(iTime-normStart+1) = data(iTime-normStart+1) / 1;
                                    end
                                end
                            end
                    
                        case 'Pre-release'
                            pData(iTime-normStart+1) = data(iTime-normStart+1) / nanmean(data(1:trackingdata.samplePre));
                            
                        case 'No normalization'
                            pData(iTime-normStart+1) = data(iTime-normStart+1);
                            
                        case 'Cell background'
                            try pData(iTime-normStart+1) = data(iTime-normStart+1)...
                                    / (mdlData_secondary_cellBackgroundMedian(trackingdata.tStartROI+iTime-1,1)  - imBackground.secondary);
                            catch
                                try pData(iTime-normStart+1) = data(iTime-normStart+1)...
                                        / (mdlData_secondary_cellBackgroundMedian(trackingdata.tStartROI+iTime,1) - imBackground.secondary);
                                catch
                                    if mdlData_secondary_cellBackgroundMedian(trackingdata.tStartROI+iTime,1) == imBackground.secondary
                                        pData(iTime-normStart+1) = data(iTime-normStart+1) / 1;
                                    end
                                end
                            end
                            
                        case 'Local background'
                            for iRoll = 1:length(vectordata.(char(ip.measureOptions.secondary.object)).secondary)
                                if iRoll <= nRoll
                                    pData(iRoll) = data(iRoll)...
                                        /(mean(vectordata.(char(ip.measureOptions.secondary.localBg)).secondary(1:iRoll+nRoll)) - imBackground.secondary);
                                elseif iRoll > length(vectordata.(char(ip.measureOptions.secondary.object)).secondary) - nRoll
                                    pData(iRoll) = data(iRoll)...
                                        /(mean(vectordata.(char(ip.measureOptions.secondary.localBg)).secondary(iRoll-nRoll:end)) - imBackground.secondary);
                                else
                                    pData(iRoll) = data(iRoll)...
                                        /(mean(vectordata.(char(ip.measureOptions.secondary.localBg)).secondary(iRoll-nRoll:iRoll+nRoll)) - imBackground.secondary);
                                end
                            end
                    end
                end
                switch ip.bgCorrection.secondary
                    case 'local'
                        normdata.normalized.secondary = pData;
                        normdata.metadata.normMethod.secondary = ip.normOption.secondary;
                        normdata.metadata.corrMethod.secondary = 'Local background';
                    case 'image'
                        normdata.normalized.secondary = pData;
                        normdata.metadata.normMethod.secondary = ip.normOption.secondary;
                        normdata.metadata.corrMethod.secondary = 'Image background';
                    case 'cell'
                        normdata.normalized.secondary = pData;
                        normdata.metadata.normMethod.secondary = ip.normOption.secondary;
                        normdata.metadata.corrMethod.secondary = 'Cell background';    
                end
                
                if nChannels == 3
%               Tertiary channel
%               Local bg correction
                switch ip.bgCorrection.tertiary
                    case 'local'
                        data = normdata.bgCorrection.local.tertiary;
                    case 'image'
                        data = normdata.bgCorrection.image.tertiary;
                    case 'cell'
                        data = normdata.bgCorrection.cell.tertiary;    
                end
                pData = data;
                for iTime = normStart:normEnd
                    switch ip.normOption.tertiary
                        case 'Cell objects'
                            pData(iTime-normStart+1) = data(iTime-normStart+1)...
                                / (mdlData_tertiary_cellobjects(trackingdata.tStartROI+iTime-1,1) - imBackground.tertiary);
                    
                        case 'Pre-release'
                            pData(iTime-normStart+1) = data(iTime-normStart+1) / nanmean(data(1:trackingdata.samplePre));
                            
                        case 'No normalization'
                            pData(iTime-normStart+1) = data(iTime-normStart+1);
                        
                        case 'Cell background'
                            pData(iTime-normStart+1) = data(iTime-normStart+1)...
                                / (mdlData_tertiary_cellBackgroundMedian(trackingdata.tStartROI+iTime-1,1) - imBackground.tertiary);
                            
                        case 'Local background'
                            for iRoll = 1:length(vectordata.(char(ip.measureOptions.tertiary.object)).tertiary)
                                if iRoll <= nRoll
                                    pData(iRoll) = data(iRoll)...
                                        /(mean(vectordata.(char(ip.measureOptions.tertiary.localBg)).tertiary(1:iRoll+nRoll)) - imBackground.tertiary);
                                elseif iRoll > length(vectordata.(char(ip.measureOptions.tertiary.object)).tertiary) - nRoll
                                    pData(iRoll) = data(iRoll)...
                                        /(mean(vectordata.(char(ip.measureOptions.tertiary.localBg)).tertiary(iRoll-nRoll:end)) - imBackground.tertiary);
                                else
                                    pData(iRoll) = data(iRoll)...
                                        /(mean(vectordata.(char(ip.measureOptions.tertiary.localBg)).tertiary(iRoll-nRoll:iRoll+nRoll)) - imBackground.tertiary);
                                end
                            end
                    end
                end
                switch ip.bgCorrection.tertiary
                    case 'local'
                        normdata.normalized.tertiary = pData;
                        normdata.metadata.normMethod.tertiary = ip.normOption.tertiary;
                        normdata.metadata.corrMethod.tertiary = 'Local background';
                    case 'image'
                        normdata.normalized.tertiary = pData;
                        normdata.metadata.normMethod.tertiary = ip.normOption.tertiary;
                        normdata.metadata.corrMethod.tertiary = 'Image background';
                    case 'cell'
                        normdata.normalized.tertiary = pData;
                        normdata.metadata.normMethod.tertiary = ip.normOption.tertiary;
                        normdata.metadata.corrMethod.tertiary = 'Cell background';    
                end
                
                end
                
                models.mdl_primary_cellBackgroundMedian = mdl_primary_cellBackgroundMedian;
                models.mdlData_primary_cellBackgroundMedian = mdlData_primary_cellBackgroundMedian;
                models.mdl_primary_cellobjects = mdl_primary_cellobjects;
                models.mdlData_primary_cellobjects = mdlData_primary_cellobjects;
                
                models.mdl_secondary_cellBackgroundMediann = mdl_secondary_cellBackgroundMedian;
                models.mdlData_secondary_cellBackgroundMedian = mdlData_secondary_cellBackgroundMedian; 
                models.mdl_secondary_cellobjects = mdl_secondary_cellobjects;
                models.mdlData_secondary_cellobjects = mdlData_secondary_cellobjects;
                if nChannels == 3
                models.mdlData_tertiary_cellBackgroundMedian = mdlData_tertiary_cellBackgroundMedian;
                models.mdl_tertiary_cellBackgroundMedian = mdl_tertiary_cellBackgroundMedian;
                models.mdlData_tertiary_cellobjects = mdlData_tertiary_cellobjects;
                models.mdl_tertiary_cellobjects = mdl_tertiary_cellobjects;
                end
                
                normdata.metadata.nRollingAverage = ip.nRoll;
                normdata.metadata.objectIntensityThreshold = ip.n;
                normdata.metadata.optMask = trackingdata.optMask;
               % normdata.metadata.maskShell = 
               % normdata.metadata.maskAngle = 
                normdata.metadata.dataType = ip.dataType;
                normdata.metadata.objectMeasurement.primary = ip.measureOptions.primary.object;
                normdata.metadata.objectMeasurement.secondary = ip.measureOptions.secondary.object;     
                normdata.metadata.localBackgroundMeasurement.primary = ip.measureOptions.primary.localBg;
                normdata.metadata.localBackgroundMeasurement.secondary = ip.measureOptions.secondary.localBg;
                if nChannels == 3
                normdata.metadata.localBackgroundMeasurement.tertiary = ip.measureOptions.tertiary.localBg;
                normdata.metadata.objectMeasurement.tertiary = ip.measureOptions.tertiary.object;
                end
    
%               Save normdata in folder organization               
                pw = [ip.dataDir filesep ip.allExperiments{ee} filesep char(tsDirs(TS))];
                cd (char(pw));
                
                switch ip.dataType
                    case 'cargoTrackingdata'
                        destination = 'normdata_cargo';
                    case 'compartmentTrackingdata'
                        destination = 'normdata_compartment';
                end
                if ~exist(destination,'dir')
                    mkdir(destination);
                end
                cd (destination);
                
                destination = (char(cellDirs(iCellDirs)));
                if ~exist(destination,'dir')
                    mkdir(destination);
                end
                cd (destination);
                
                destination = (char(cellEvents(iCellEvents)));
                if ~exist(destination,'dir')
                    mkdir(destination);
                end
                cd (destination);
                
                save('calc_celldata.mat', 'calc_celldata')
                save('normdata.mat', 'normdata')
                save ('models.mat', 'models')
                
                clear calc_celldata normdata models
                
                cd (pw_store)

                cd (['..' filesep])
            end
            cd (['..' filesep])
        end
        clear cellEvents cellEventsField
        cd (['..' filesep '..'])
    end
    clear tsDirs tsDirsfield
    cd (['..' filesep])
end

fprintf('\n- DONE! -\n')

cd(ip.fdp)
end

