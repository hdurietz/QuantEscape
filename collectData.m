function [] = collectData(ip)
%% Collect and concatenate all data selected in the app
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

fprintf('\nCollecting data...\n')

allExperiments = ip.allExperiments;
nExperiments = length(allExperiments);             
nEvents = 0;

listEvents_variablnames = {'Data_column_in_struct', 'Experiment', 'Acquisition', 'Cell_ID', 'Event_ID',...
'Primary_channel_name', 'Primary_channel_corrMethod', 'Primary_channel_normMethod', 'Primary_channel_objectMeasure', 'Primary_channel_localBgMeasure',...
'Secondary_channel_name', 'Secondary_channel_corrMethod', 'Secondry_channel_normMethod', 'Secondry_channel_objectMeasure', 'Secondry_channel_localBgMeasure'...
'Tertiary_channel_name', 'Tertiary_channel_corrMethod', 'Tertiary_channel_normMethod', 'Tertiary_channel_objectMeasure', 'Tertiary_channel_localBgMeasure'...
'Rollinge_average_n', 'Cell_objects_intensity_threshold', 'Tracking_mask_size', 'Tracking_mode', 'Event_frame'};
C=cell(1,25);
listEvents = cell2table(C,'VariableNames',listEvents_variablnames);

cellObjectData_variablenames_primary = {'Data_column_in_struct', 'Experiment', 'Acquisition', 'Cell_ID', 'Event_ID', 'Primary_channel_name'...
    'Cell_mean', 'Cell_std', 'Cell_median', 'Cell_iqr', 'Object_mean', 'Object_std', 'Object_median', 'Object_iqr',...
    'Cell_mean_std',  'Cell_bg_median', 'Cell_bg_std', 'Cell_bg_iqr', 'Object_threshold'};
cellObjectData_variablenames_secondary = {'Data_column_in_struct', 'Experiment', 'Acquisition', 'Cell_ID', 'Event_ID', 'Secondary_channel_name'...
    'Cell_mean', 'Cell_std', 'Cell_median', 'Cell_iqr', 'Object_mean', 'Object_std', 'Object_median', 'Object_iqr',...
    'Cell_mean_std',  'Cell_bg_median', 'Cell_bg_std', 'Cell_bg_iqr', 'Object_threshold', 'Image_bg_mean', 'Image_bg_std'};
cellObjectData_variablenames_tertiary = {'Data_column_in_struct', 'Experiment', 'Acquisition', 'Cell_ID', 'Event_ID', 'Tertiary_channel_name'...
    'Cell_mean', 'Cell_std', 'Cell_median', 'Cell_iqr', 'Object_mean', 'Object_std', 'Object_median', 'Object_iqr',...
    'Cell_mean_std',  'Cell_bg_median', 'Cell_bg_std', 'Cell_bg_iqr', 'Object_threshold'};

C=cell(1,19);
cellObjectData.primary = cell2table(C,'VariableNames',cellObjectData_variablenames_primary);
C=cell(1,21);
cellObjectData.secondary = cell2table(C,'VariableNames',cellObjectData_variablenames_secondary);
C=cell(1,19);
cellObjectData.tertiary = cell2table(C,'VariableNames',cellObjectData_variablenames_tertiary);

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
    elseif ip.processAll_TS == 0
       dirData = dir; % Get the data for the current directory
       index = 1;
       for ii = 1:length(dirData) % Include only selected files
           if (dirData(ii).name(length(dirData(ii).name)) == '#') == 1 
               tsDirs(index,1) = {dirData(ii).name};
               tsDirsField(index,1) = {dirData(ii).name(1:(length(dirData(ii).name)-1))};
               index = index+1;
           end
       end
    end
    
    for TS = 1:length(tsDirs)
        cd (char(tsDirs(TS)));
        
        switch ip.dataType
            case 'compartmentTrackingdata'
                if exist('normdata_compartment','dir') == 0
                    cd (['..' filesep])
                    continue
                end
                cd 'normdata_compartment'
            case 'cargoTrackingdata'
                if exist('normdata_cargo','dir') == 0
                    cd (['..' filesep])
                    continue
                end
                cd 'normdata_cargo'
        end
        
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
               cellEventsField = cellEvents;
            elseif ip.processAll_events == 0
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
            
            for iCellEvents = 1:length(cellEvents)
                cd (char(cellEvents(iCellEvents)));
                nEvents = nEvents +1;
                clear normdata calc_celldata
                load('normdata.mat'); %#ok<*LOAD>
                load('calc_celldata.mat');

                if isfield(normdata, 't0_not_found')
                    fprintf('\nSkipping %s %s, t0 not found during tracking\n', char(tsDirs(TS)), char(cellEvents(iCellEvents)))
                    cd (['..' filesep])
                    nChannels = length(ip.allChannels.(char(ip.allExperiments(1))));
                    if nChannels == 2
                        pChannels = {'primary', 'secondary'};
                    elseif nChannels == 3
                        pChannels = {'primary', 'secondary', 'tertiary'};
                    end
                    listEvents.Data_column_in_struct(nEvents,1) = {char(sprintf('Column %d', nEvents))}; %#ok<*AGROW>
                    listEvents.Experiment(nEvents,1) = {char(allExperiments(ee))};
                    listEvents.Acquisition(nEvents,1) = {char(tsDirsField(TS))};
                    listEvents.Cell_ID(nEvents,1) = {char(cellDirs(iCellDirs))};
                    listEvents.Event_ID(nEvents,1) = {char(cellEventsField(iCellEvents))};
                    listEvents.Primary_channel_name(nEvents,1) = {'NA'};
                    listEvents.Primary_channel_corrMethod(nEvents,1) = {'NA'};
                    listEvents.Primary_channel_normMethod(nEvents,1) = {'NA'};
                    listEvents.Primary_channel_objectMeasure(nEvents,1) = {'NA'};
                    listEvents.Primary_channel_localBgMeasure(nEvents,1) = {'NA'};
                    if length(pChannels) > 1
                        listEvents.Secondary_channel_name(nEvents,1) = {'NA'};
                        listEvents.Secondary_channel_corrMethod(nEvents,1) = {'NA'};
                        listEvents.Secondry_channel_normMethod(nEvents,1) = {'NA'};
                        listEvents.Secondry_channel_objectMeasure(nEvents,1) = {'NA'};
                        listEvents.Secondry_channel_localBgMeasure(nEvents,1) = {'NA'};
                    else
                        listEvents.Secondary_channel_name(nEvents,1) = {'none'};
                        listEvents.Secondary_channel_corrMethod(nEvents,1) = {'none'};
                        listEvents.Secondry_channel_normMethod(nEvents,1) = {'none'};
                        listEvents.Secondry_channel_objectMeasure(nEvents,1) = {'none'};
                        listEvents.Secondry_channel_localBgMeasure(nEvents,1) = {'none'};
                    end
                    if length(pChannels) > 2
                        listEvents.Tertiary_channel_name(nEvents,1) = {'NA'};
                        listEvents.Tertiary_channel_corrMethod(nEvents,1) = {'NA'};
                        listEvents.Tertiary_channel_normMethod(nEvents,1) = {'NA'};
                        listEvents.Tertiary_channel_objectMeasure(nEvents,1) = {'NA'};
                        listEvents.Tertiary_channel_localBgMeasure(nEvents,1) = {'NA'};
                    else
                        listEvents.Tertiary_channel_name(nEvents,1) = {'none'};
                        listEvents.Tertiary_channel_corrMethod(nEvents,1) = {'none'};
                        listEvents.Tertiary_channel_normMethod(nEvents,1) = {'none'};
                        listEvents.Tertiary_channel_objectMeasure(nEvents,1) = {'none'};
                        listEvents.Tertiary_channel_localBgMeasure(nEvents,1) = {'none'};
                    end
                    listEvents.Rollinge_average_n(nEvents,1) = {'NA'};
                    listEvents.Cell_objects_intensity_threshold(nEvents,1) = {'NA'};
                    listEvents.Tracking_mask_size(nEvents,1) = {'NA'};
                    listEvents.Tracking_mode(nEvents,1) = {'NA'};
                    listEvents.Event_frame(nEvents,1) = {'NA'};
                    continue
                end
                
                pw_store = pwd;
                pw = [ip.dataDir filesep char(allExperiments(ee)) filesep char(tsDirs(TS)) filesep char(ip.dataType) filesep char(cellDirs(iCellDirs)) filesep char(cellEvents(iCellEvents))];
                cd (char(pw));
                clear trackingdata
                load('trackingdata.mat');
                pw = [ip.dataDir filesep char(allExperiments(ee)) filesep char(tsDirs(TS)) filesep 'eventROIs' filesep char(cellDirs(iCellDirs)) filesep char(cellEvents(iCellEvents))];
                cd (pw)
                clear backgrounddata
                load('backgrounddata.mat')
                cd (pw_store)
                
                for iBg = 1:numel(fieldnames(backgrounddata.fullStackVectors))
                    Image_bg_mean = mean(backgrounddata.fullStackVectors.(sprintf('Plane_%d',iBg)));
                    Image_bg_std = std(backgrounddata.fullStackVectors.(sprintf('Plane_%d',iBg)));
                end
                
                nChannels = length(ip.allChannels.(char(ip.allExperiments(1))));
                if nChannels == 2
                    pChannels = {'primary', 'secondary'};
                elseif nChannels == 3
                    pChannels = {'primary', 'secondary', 'tertiary'};
                end
                
                for iChannels = 1:length(pChannels)
                    data = normdata.normalized.(char(pChannels(iChannels)));
                    nTimes = length(data);
                    samplePre = trackingdata.samplePre;
                    addData = NaN(200,1);
                    for iTime = 1:nTimes
                        alignTimes = 100-samplePre+iTime - 1;
                        addData(alignTimes) = data(iTime);
                    end
                       
                    collectedEvents.(char(pChannels(iChannels)))(1:200,nEvents) = addData;
                end
                
                listEvents.Data_column_in_struct(nEvents,1) = {char(sprintf('Column %d', nEvents))}; %#ok<*AGROW>
                listEvents.Experiment(nEvents,1) = {char(allExperiments(ee))};
                listEvents.Acquisition(nEvents,1) = {char(tsDirsField(TS))};
                listEvents.Cell_ID(nEvents,1) = {char(cellDirs(iCellDirs))};
                listEvents.Event_ID(nEvents,1) = {char(cellEventsField(iCellEvents))};
                listEvents.Primary_channel_name(nEvents,1) = {char(normdata.metadata.channelNames.primary)};
                listEvents.Primary_channel_corrMethod(nEvents,1) = {char(normdata.metadata.corrMethod.primary)};
                listEvents.Primary_channel_normMethod(nEvents,1) = {char(normdata.metadata.normMethod.primary)};
                listEvents.Primary_channel_objectMeasure(nEvents,1) = {char(normdata.metadata.objectMeasurement.primary)};
                listEvents.Primary_channel_localBgMeasure(nEvents,1) = {char(normdata.metadata.localBackgroundMeasurement.primary)};
                if length(pChannels) > 1
                    listEvents.Secondary_channel_name(nEvents,1) = {char(normdata.metadata.channelNames.secondary)};
                    listEvents.Secondary_channel_corrMethod(nEvents,1) = {char(normdata.metadata.corrMethod.secondary)};
                    listEvents.Secondry_channel_normMethod(nEvents,1) = {char(normdata.metadata.normMethod.secondary)};
                    listEvents.Secondry_channel_objectMeasure(nEvents,1) = {char(normdata.metadata.objectMeasurement.secondary)};
                    listEvents.Secondry_channel_localBgMeasure(nEvents,1) = {char(normdata.metadata.localBackgroundMeasurement.secondary)};
                else
                    listEvents.Secondary_channel_name(nEvents,1) = {'none'};
                    listEvents.Secondary_channel_corrMethod(nEvents,1) = {'none'};
                    listEvents.Secondry_channel_normMethod(nEvents,1) = {'none'};
                    listEvents.Secondry_channel_objectMeasure(nEvents,1) = {'none'};
                    listEvents.Secondry_channel_localBgMeasure(nEvents,1) = {'none'};
                end
                if length(pChannels) > 2
                    listEvents.Tertiary_channel_name(nEvents,1) = {char(normdata.metadata.channelNames.tertiary)};
                    listEvents.Tertiary_channel_corrMethod(nEvents,1) = {char(normdata.metadata.corrMethod.tertiary)};
                    listEvents.Tertiary_channel_normMethod(nEvents,1) = {char(normdata.metadata.normMethod.tertiary)};
                    listEvents.Tertiary_channel_objectMeasure(nEvents,1) = {char(normdata.metadata.objectMeasurement.tertiary)};
                    listEvents.Tertiary_channel_localBgMeasure(nEvents,1) = {char(normdata.metadata.localBackgroundMeasurement.tertiary)};
                else
                    listEvents.Tertiary_channel_name(nEvents,1) = {'none'};
                    listEvents.Tertiary_channel_corrMethod(nEvents,1) = {'none'};
                    listEvents.Tertiary_channel_normMethod(nEvents,1) = {'none'};
                    listEvents.Tertiary_channel_objectMeasure(nEvents,1) = {'none'};
                    listEvents.Tertiary_channel_localBgMeasure(nEvents,1) = {'none'};
                end
                listEvents.Rollinge_average_n(nEvents,1) = {normdata.metadata.nRollingAverage};
                listEvents.Cell_objects_intensity_threshold(nEvents,1) = {normdata.metadata.objectIntensityThreshold};
                listEvents.Tracking_mask_size(nEvents,1) = {normdata.metadata.optMask};
                listEvents.Tracking_mode(nEvents,1) = {normdata.metadata.dataType};
                listEvents.Event_frame(nEvents,1) = {normdata.metadata.t0};
                
                cellObjectData.primary.Data_column_in_struct(nEvents,1) = {char(sprintf('Column %d', nEvents))}; %#ok<*AGROW>
                cellObjectData.primary.Experiment(nEvents,1) = {char(allExperiments(ee))};
                cellObjectData.primary.Acquisition(nEvents,1) = {char(tsDirsField(TS))};
                cellObjectData.primary.Cell_ID(nEvents,1) = {char(cellDirs(iCellDirs))};
                cellObjectData.primary.Event_ID(nEvents,1) = {char(cellEventsField(iCellEvents))};
                cellObjectData.primary.Cell_mean{nEvents,1} = calc_celldata.startFrame.primary.cellMean;
                cellObjectData.primary.Cell_std{nEvents,1} = calc_celldata.startFrame.primary.cellStd;
                cellObjectData.primary.Cell_median{nEvents,1} = calc_celldata.startFrame.primary.cellMedian;
                cellObjectData.primary.Cell_iqr{nEvents,1} = calc_celldata.startFrame.primary.cellIqr;
                cellObjectData.primary.Object_mean{nEvents,1} = calc_celldata.startFrame.primary.cellObjectsMean;
                cellObjectData.primary.Object_std{nEvents,1} = calc_celldata.startFrame.primary.cellObjectsStd;
                cellObjectData.primary.Object_median{nEvents,1} = calc_celldata.startFrame.primary.cellObjectsMedian;
                cellObjectData.primary.Object_iqr{nEvents,1} = calc_celldata.startFrame.primary.cellObjectsIqr;
                cellObjectData.primary.Cell_bg_median{nEvents,1} = calc_celldata.startFrame.primary.cellBackgroundMedian;
                cellObjectData.primary.Cell_bg_mean{nEvents,1} = calc_celldata.startFrame.primary.cellBackgroundMean;
                cellObjectData.primary.Cell_bg_std{nEvents,1} = calc_celldata.startFrame.primary.cellBackgroundStd;
                cellObjectData.primary.Cell_bg_iqr{nEvents,1} = calc_celldata.startFrame.primary.cellBackgroundIqr;
                cellObjectData.primary.Object_threshold{nEvents,1} = calc_celldata.startFrame.primary.thresh_lin;
                cellObjectData.primary.Primary_channel_name(nEvents,1) = {char(normdata.metadata.channelNames.primary)};
                
                if length(pChannels) > 1
                cellObjectData.secondary.Data_column_in_struct(nEvents,1) = {char(sprintf('Column %d', nEvents))}; %#ok<*AGROW>
                cellObjectData.secondary.Experiment(nEvents,1) = {char(allExperiments(ee))};
                cellObjectData.secondary.Acquisition(nEvents,1) = {char(tsDirsField(TS))};
                cellObjectData.secondary.Cell_ID(nEvents,1) = {char(cellDirs(iCellDirs))};
                cellObjectData.secondary.Event_ID(nEvents,1) = {char(cellEventsField(iCellEvents))};
                cellObjectData.secondary.Cell_mean{nEvents,1} = calc_celldata.startFrame.secondary.cellMean;
                cellObjectData.secondary.Cell_std{nEvents,1} = calc_celldata.startFrame.secondary.cellStd;
                cellObjectData.secondary.Cell_median{nEvents,1} = calc_celldata.startFrame.secondary.cellMedian;
                cellObjectData.secondary.Cell_iqr{nEvents,1} = calc_celldata.startFrame.secondary.cellIqr;
                cellObjectData.secondary.Object_mean{nEvents,1} = calc_celldata.startFrame.secondary.cellObjectsMean;
                cellObjectData.secondary.Object_std{nEvents,1} = calc_celldata.startFrame.secondary.cellObjectsStd;
                cellObjectData.secondary.Object_median{nEvents,1} = calc_celldata.startFrame.secondary.cellObjectsMedian;
                cellObjectData.secondary.Object_iqr{nEvents,1} = calc_celldata.startFrame.secondary.cellObjectsIqr;
                cellObjectData.secondary.Cell_bg_median{nEvents,1} = calc_celldata.startFrame.secondary.cellBackgroundMedian;
                cellObjectData.secondary.Cell_bg_mean{nEvents,1} = calc_celldata.startFrame.secondary.cellBackgroundMean;
                cellObjectData.secondary.Cell_bg_std{nEvents,1} = calc_celldata.startFrame.secondary.cellBackgroundStd;
                cellObjectData.secondary.Cell_bg_iqr{nEvents,1} = calc_celldata.startFrame.secondary.cellBackgroundIqr;
                cellObjectData.secondary.Object_threshold{nEvents,1} = calc_celldata.startFrame.secondary.thresh_lin;
                cellObjectData.secondary.Image_bg_mean{nEvents,1} = Image_bg_mean;
                cellObjectData.secondary.Image_bg_std{nEvents,1} = Image_bg_std;
                cellObjectData.secondary.Secondary_channel_name(nEvents,1) = {char(normdata.metadata.channelNames.secondary)};
                    
                else
                cellObjectData.secondary.Data_column_in_struct(nEvents,1) = {char(sprintf('Column %d', nEvents))}; %#ok<*AGROW>
                cellObjectData.secondary.Experiment(nEvents,1) = {char(allExperiments(ee))};
                cellObjectData.secondary.Acquisition(nEvents,1) = {char(tsDirsField(TS))};
                cellObjectData.secondary.Cell_ID(nEvents,1) = {char(cellDirs(iCellDirs))};
                cellObjectData.secondary.Event_ID(nEvents,1) = {char(cellEventsField(iCellEvents))};
                cellObjectData.secondary.Cell_mean{nEvents,1} = {'NA'};
                cellObjectData.secondary.Cell_std{nEvents,1} = {'NA'};
                cellObjectData.secondary.Cell_median{nEvents,1} = {'NA'};
                cellObjectData.secondary.Cell_iqr{nEvents,1} = {'NA'};
                cellObjectData.secondary.Object_mean{nEvents,1} = {'NA'};
                cellObjectData.secondary.Object_std{nEvents,1} = {'NA'};
                cellObjectData.secondary.Object_median{nEvents,1} = {'NA'};
                cellObjectData.secondary.Object_iqr{nEvents,1} = {'NA'};
                cellObjectData.secondary.Cell_bg_median{nEvents,1} = {'NA'};
                cellObjectData.secondary.Cell_bg_mean{nEvents,1} = {'NA'};
                cellObjectData.secondary.Cell_bg_std{nEvents,1} = {'NA'};
                cellObjectData.secondary.Cell_bg_iqr{nEvents,1} = {'NA'};
                cellObjectData.secondary.Object_threshold{nEvents,1} = {'NA'};
                cellObjectData.secondary.Image_bg_mean{nEvents,1} = {'NA'};
                cellObjectData.secondary.Image_bg_std{nEvents,1} = {'NA'};
                cellObjectData.secondary.Secondary_channel_name(nEvents,1) = {'none'};
                end
                
                if length(pChannels) > 2
                cellObjectData.tertiary.Data_column_in_struct(nEvents,1) = {char(sprintf('Column %d', nEvents))}; %#ok<*AGROW>
                cellObjectData.tertiary.Experiment(nEvents,1) = {char(allExperiments(ee))};
                cellObjectData.tertiary.Acquisition(nEvents,1) = {char(tsDirsField(TS))};
                cellObjectData.tertiary.Cell_ID(nEvents,1) = {char(cellDirs(iCellDirs))};
                cellObjectData.tertiary.Event_ID(nEvents,1) = {char(cellEventsField(iCellEvents))};
                cellObjectData.tertiary.Cell_mean{nEvents,1} = calc_celldata.startFrame.tertiary.cellMean;
                cellObjectData.tertiary.Cell_std{nEvents,1} = calc_celldata.startFrame.tertiary.cellStd;
                cellObjectData.tertiary.Cell_median{nEvents,1} = calc_celldata.startFrame.tertiary.cellMedian;
                cellObjectData.tertiary.Cell_iqr{nEvents,1} = calc_celldata.startFrame.tertiary.cellIqr;
                cellObjectData.tertiary.Object_mean{nEvents,1} = calc_celldata.startFrame.tertiary.cellObjectsMean;
                cellObjectData.tertiary.Object_std{nEvents,1} = calc_celldata.startFrame.tertiary.cellObjectsStd;
                cellObjectData.tertiary.Object_median{nEvents,1} = calc_celldata.startFrame.tertiary.cellObjectsMedian;
                cellObjectData.tertiary.Object_iqr{nEvents,1} = calc_celldata.startFrame.tertiary.cellObjectsIqr;
                cellObjectData.tertiary.Cell_bg_median{nEvents,1} = calc_celldata.startFrame.tertiary.cellBackgroundMedian;
                cellObjectData.tertiary.Cell_bg_mean{nEvents,1} = calc_celldata.startFrame.tertiary.cellBackgroundMean;
                cellObjectData.tertiary.Cell_bg_std{nEvents,1} = calc_celldata.startFrame.tertiary.cellBackgroundStd;
                cellObjectData.tertiary.Cell_bg_iqr{nEvents,1} = calc_celldata.startFrame.tertiary.cellBackgroundIqr;
                cellObjectData.tertiary.Object_threshold{nEvents,1} = calc_celldata.startFrame.tertiary.thresh_lin;
                cellObjectData.tertiary.Tertiary_channel_name(nEvents,1) = {char(normdata.metadata.channelNames.tertiary)};
                else
                cellObjectData.tertiary.Data_column_in_struct(nEvents,1) = {char(sprintf('Column %d', nEvents))}; %#ok<*AGROW>
                cellObjectData.tertiary.Experiment(nEvents,1) = {char(allExperiments(ee))};
                cellObjectData.tertiary.Acquisition(nEvents,1) = {char(tsDirsField(TS))};
                cellObjectData.tertiary.Cell_ID(nEvents,1) = {char(cellDirs(iCellDirs))};
                cellObjectData.tertiary.Event_ID(nEvents,1) = {char(cellEventsField(iCellEvents))};
                cellObjectData.tertiary.Cell_mean{nEvents,1} = {'NA'};
                cellObjectData.tertiary.Cell_std{nEvents,1} = {'NA'};
                cellObjectData.tertiary.Cell_median{nEvents,1} = {'NA'};
                cellObjectData.tertiary.Cell_iqr{nEvents,1} = {'NA'};
                cellObjectData.tertiary.Object_mean{nEvents,1} = {'NA'};
                cellObjectData.tertiary.Object_std{nEvents,1} = {'NA'};
                cellObjectData.tertiary.Object_median{nEvents,1} = {'NA'};
                cellObjectData.tertiary.Object_iqr{nEvents,1} = {'NA'};
                cellObjectData.tertiary.Cell_bg_median{nEvents,1} = {'NA'};
                cellObjectData.tertiary.Cell_bg_mean{nEvents,1} = {'NA'};
                cellObjectData.tertiary.Cell_bg_std{nEvents,1} = {'NA'};
                cellObjectData.tertiary.Cell_bg_iqr{nEvents,1} = {'NA'};
                cellObjectData.tertiary.Object_threshold{nEvents,1} = {'NA'};
                cellObjectData.tertiary.Tertiary_channel_name(nEvents,1) = {'none'};
                end
                
                cd (pw_store)
                cd (['..' filesep])
            end
            cd (['..' filesep])
            clear cellEvents
        end
        clear cellDirs
        cd (['..' filesep '..'])
    end
    clear tsDirs
    cd (['..' filesep '..'])
    
end


% Curate data according to the eventKey of the experiments collected
switch ip.curateData
    case 'yes'
        collectedCuratedEvents = collectedEvents;
        previousEventExperiment = 'none';
        
        for index = 1:size(listEvents,1)
            
%             if isempty(listEvents.Experiment{index}) == 1
%                 continue
%             end

            if strcmp(listEvents.Experiment{index}, previousEventExperiment) == 0
                pw = [ip.dataDir filesep char(listEvents.Experiment{index})];
                cd (char(pw));
%                 if ip.processAll_TS == 1
                    dirData = dir; % Get the data for the current directory
                    dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
                    dirData(strncmp({dirData.name}, '~', 1)) = [];
                    dirIndex = [dirData.isdir];  % Find the index for directories
                    tsDirs = {dirData(dirIndex).name}';
%                     tsDirsField = tsDirs;
%                 elseif ip.processAll_TS == 0
%                     dirData = dir; % Get the data for the current directory
%                     idx = 1;
%                     for ii = 1:length(dirData) % Include only selected files
%                         if (dirData(ii).name(length(dirData(ii).name)) == '#') == 1
%                             tsDirs(idx,1) = {dirData(ii).name};
%                             tsDirsField(idx,1) = {dirData(ii).name(1:(length(dirData(ii).name)-1))};
%                             idx = idx+1;
%                         end
%                     end
%                 end
                
                  pw = [ip.dataDir filesep char(listEvents.Experiment{index}) filesep char(tsDirs(1)) filesep 'eventKey'];

                cd (char(pw));
                
                eventKey = readtable('eventKey_curated.csv', 'Delimiter', 'comma', 'ReadVariableNames', 0);
                if size(eventKey,2) < 5 || size(eventKey,2) > 7
                    eventKey = readtable('eventKey_curated.csv', 'Delimiter', ';', 'ReadVariableNames', 0);
                end
                if size(eventKey,2) < 5 || size(eventKey,2) > 7
                    fprintf('\nCould not load eventKey_curated.csv. Delimiter settings not correct.\n')
                    continue
                end
                
            end
            
            ts = listEvents.Acquisition{index};
            if (ts(length(ts)) == '#') == 1
                ts = ts(1:length(ts)-1);
            end
            
            event = listEvents.Event_ID{index};
            if (event(length(event)) == '#') == 1
                event = event(1:length(event)-1);
            end
            
            indexMat_TS = strcmp(eventKey.Var2, ts);
            indexMat_cell = strcmp(eventKey.Var3, listEvents.Cell_ID{index});
            indexMat_event = strcmp(eventKey.Var4, event);
            indexSum = indexMat_TS + indexMat_cell + indexMat_event;
            keyIndex = find(indexSum == 3);
            task = str2double(eventKey.Var5{keyIndex});
            if isnan(task)
                task = eventKey.Var5{keyIndex};
            end
            
            if ischar(task) == 1
                if strcmpi(task,'OK') == 0 %exclude
                    collectedCuratedEvents.primary(:,index) = NaN;
                    collectedCuratedEvents.secondary(:,index) = NaN;
                end
            else
                collectedCuratedEvents.primary(100+task+1:end,index) = NaN;
                collectedCuratedEvents.secondary(100+task+1:end,index) = NaN;
            end
            
            previousEventExperiment = listEvents.Experiment{index};
        end
        
end

% Save normdata and curated data in folder                
cd (char(ip.outputDir));
dateparam = clock;
destination = char(sprintf('Data collection %d.%d.%d %d.%d', dateparam(1),dateparam(2),dateparam(3),dateparam(4),dateparam(5)));
if ~exist(destination,'dir')
    mkdir(destination);
end
cd (destination)
switch ip.curateData
    case 'yes'
        save('collectedEvents.mat', 'collectedEvents')
        save('listEvents.mat', 'listEvents')
        save('collectedCuratedEvents.mat', 'collectedCuratedEvents')
        save('cellObjectData.mat','cellObjectData')
        
        for iChannels = 1:length(pChannels)
            data =  collectedEvents.(char(pChannels(iChannels)));
            filename = sprintf('collectedEvents_%s.xlsx',char(pChannels(iChannels)));
            xlswrite(char(filename), data);
            
            data =  collectedCuratedEvents.(char(pChannels(iChannels)));
            filename = sprintf('collectedCuratedEvents_%s.xlsx',char(pChannels(iChannels)));
            xlswrite(char(filename), data);
            
            data =  cellObjectData.(char(pChannels(iChannels)));
            filename = sprintf('cellObjectData_%s.xlsx',char(pChannels(iChannels)));
            writetable(data, char(filename));
        end
    case 'no'
        save('collectedEvents.mat', 'collectedEvents')
        save('listEvents.mat', 'listEvents')
        save('cellObjectData.mat','cellObjectData')
        
        for iChannels = 1:length(pChannels)
            data =  collectedEvents.(char(pChannels(iChannels)));
            filename = sprintf('collectedEvents_%s.xlsx',char(pChannels(iChannels)));
            xlswrite(char(filename), data);
            
            data =  cellObjectData.(char(pChannels(iChannels)));
            filename = sprintf('cellObjectData_%s.xlsx',char(pChannels(iChannels)));
            writetable(data, char(filename));
        end
end

fprintf('\DONE!\n')


end

