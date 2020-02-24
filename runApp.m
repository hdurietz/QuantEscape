function [] = runApp(app,task)
%% Use QuantEscape app inputs to initiate processing tasks
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

app.Lamp.Color = [0.93,0.69,0.13];
ip.homeDir = app.Home.Value;
ip.dataDir = [app.Home.Value filesep 'Data repository'];
ip.fdp = [app.Home.Value filesep 'Processing tools' filesep 'Matlab'];
ip.mdp = [app.Home.Value filesep 'Processing tools' filesep 'Tracking masks' filesep 'Read masks directory'];
ip.outputDir = [app.Home.Value filesep 'Data output'];

ip.allExperiments = cell(0);

% Configure channel order
if app.ChAButton_3.Value == 1
    ip.channelOrder.primary = 'channel_A';
elseif app.ChBButton_3.Value == 1
    ip.channelOrder.primary = 'channel_B';
elseif app.ChCButton_3.Value == 1
    ip.channelOrder.primary = 'channel_C';
end

if app.ChAButton_2.Value == 1
    ip.channelOrder.secondary = 'channel_A';
elseif app.ChBButton_2.Value == 1
    ip.channelOrder.secondary = 'channel_B';
elseif app.ChCButton_2.Value == 1
    ip.channelOrder.secondary = 'channel_C';
end

if strcmp(ip.channelOrder.primary,'channel_A') == 1
    if strcmp(ip.channelOrder.secondary,'channel_B') == 1
        ip.channelOrder.tertiary = 'channel_C';
    elseif strcmp(ip.channelOrder.secondary,'channel_C') == 1
        ip.channelOrder.tertiary = 'channel_B';
    end
    
elseif strcmp(ip.channelOrder.primary,'channel_B') == 1
    if strcmp(ip.channelOrder.secondary,'channel_A') == 1
        ip.channelOrder.tertiary = 'channel_C';
    elseif strcmp(ip.channelOrder.secondary,'channel_C') == 1
        ip.channelOrder.tertiary = 'channel_A';
    end
    
elseif strcmp(ip.channelOrder.primary,'channel_C') == 1
    if strcmp(ip.channelOrder.secondary,'channel_B') == 1
        ip.channelOrder.tertiary = 'channel_A';
    elseif strcmp(ip.channelOrder.secondary,'channel_A') == 1
        ip.channelOrder.tertiary = 'channel_B';
    end
end


% Read data from experiment setup tab
if app.activateTab.Value == 1
    index = numel(ip.allExperiments)+1;
    ip.allExperiments(index) = {app.experimentID_Tab.Value};
    
    switch app.ChC_Tab.Value
        case 'Not selected'
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab.Value app.ChB_Tab.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab.Value app.ChB_Em_Tab.Value];   
            
        otherwise
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab.Value app.ChB_Tab.Value app.ChC_Tab.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab.Value app.ChB_Em_Tab.Value app.ChC_Em_Tab.Value];
    end
    
    ip.nAcquisitions.(ip.allExperiments{index}) = app.TS_Tab.Value;
    
    if app.includeTS_all_Tab.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 1;   
    elseif app.includeTS_selected_Tab.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 0;
    end
        
    ip.xDim.(ip.allExperiments{index}) = app.xDim_Tab.Value;
    ip.yDim.(ip.allExperiments{index}) = app.yDim_Tab.Value;
    ip.zDim.(ip.allExperiments{index}) = app.zDim_Tab.Value;    
end

if app.activateTab_2.Value == 1
    index = numel(ip.allExperiments)+1;
    ip.allExperiments(index) = {app.experimentID_Tab_2.Value};
    
    switch app.ChC_Tab_2.Value
        case 'Not selected'
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_2.Value app.ChB_Tab_2.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_2.Value app.ChB_Em_Tab_2.Value];

        otherwise
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_2.Value app.ChB_Tab_2.Value app.ChC_Tab_2.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_2.Value app.ChB_Em_Tab_2.Value app.ChC_Em_Tab_2.Value];
    end

    ip.nAcquisitions.(ip.allExperiments{index}) = app.TS_Tab_2.Value;
    
    if app.includeTS_all_Tab_2.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 1;
        
    elseif app.includeTS_selected_Tab_2.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 0;
    end
        
    ip.xDim.(ip.allExperiments{index}) = app.xDim_Tab_2.Value;
    ip.yDim.(ip.allExperiments{index}) = app.yDim_Tab_2.Value;
    ip.zDim.(ip.allExperiments{index}) = app.zDim_Tab_2.Value;   
end

if app.activateTab_3.Value == 1
    index = numel(ip.allExperiments)+1;
    ip.allExperiments(index) = {app.experimentID_Tab_3.Value};
    
    switch app.ChC_Tab_3.Value
        case 'Not selected'
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_3.Value app.ChB_Tab_3.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_3.Value app.ChB_Em_Tab_3.Value];
            
        otherwise
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_3.Value app.ChB_Tab_3.Value app.ChC_Tab_3.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_3.Value app.ChB_Em_Tab_3.Value app.ChC_Em_Tab_3.Value];
    end

    ip.nAcquisitions.(ip.allExperiments{index}) = app.TS_Tab_3.Value;
    
    if app.includeTS_all_Tab_3.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 1;
        
    elseif app.includeTS_selected_Tab_3.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 0;
    end
        
    ip.xDim.(ip.allExperiments{index}) = app.xDim_Tab_3.Value;
    ip.yDim.(ip.allExperiments{index}) = app.yDim_Tab_3.Value;
    ip.zDim.(ip.allExperiments{index}) = app.zDim_Tab_3.Value;
end

if app.activateTab_4.Value == 1
    index = numel(ip.allExperiments)+1;
    ip.allExperiments(index) = {app.experimentID_Tab_4.Value};
    
    switch app.ChC_Tab_4.Value
        case 'Not selected'
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_4.Value app.ChB_Tab_4.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_4.Value app.ChB_Em_Tab_4.Value];

        otherwise
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_4.Value app.ChB_Tab_4.Value app.ChC_Tab_4.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_4.Value app.ChB_Em_Tab_4.Value app.ChC_Em_Tab_4.Value];
    end
    
    ip.nAcquisitions.(ip.allExperiments{index}) = app.TS_Tab_4.Value;
    
    if app.includeTS_all_Tab_4.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 1;
        
    elseif app.includeTS_selected_Tab_4.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 0;
    end
        
    ip.xDim.(ip.allExperiments{index}) = app.xDim_Tab_4.Value;
    ip.yDim.(ip.allExperiments{index}) = app.yDim_Tab_4.Value;
    ip.zDim.(ip.allExperiments{index}) = app.zDim_Tab_4.Value; 
end

if app.activateTab_5.Value == 1
    index = numel(ip.allExperiments)+1;
    ip.allExperiments(index) = {app.experimentID_Tab_5.Value};
    
    switch app.ChC_Tab_5.Value
        case 'Not selected'
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_5.Value app.ChB_Tab_5.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_5.Value app.ChB_Em_Tab_5.Value];
      
        otherwise
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_5.Value app.ChB_Tab_5.Value app.ChC_Tab_5.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_5.Value app.ChB_Em_Tab_5.Value app.ChC_Em_Tab_5.Value];
    end
    
    ip.nAcquisitions.(ip.allExperiments{index}) = app.TS_Tab_5.Value;
    
    if app.includeTS_all_Tab_5.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 1;
        
    elseif app.includeTS_selected_Tab_5.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 0;
    end
        
    ip.xDim.(ip.allExperiments{index}) = app.xDim_Tab_5.Value;
    ip.yDim.(ip.allExperiments{index}) = app.yDim_Tab_5.Value;
    ip.zDim.(ip.allExperiments{index}) = app.zDim_Tab_5.Value;
end

if app.activateTab_6.Value == 1
    index = numel(ip.allExperiments)+1;
    ip.allExperiments(index) = {app.experimentID_Tab_6.Value};
    
    switch app.ChC_Tab_6.Value
        case 'Not selected'
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_6.Value app.ChB_Tab_6.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_6.Value app.ChB_Em_Tab_6.Value];
             
        otherwise
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_6.Value app.ChB_Tab_6.Value app.ChC_Tab_6.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_6.Value app.ChB_Em_Tab_6.Value app.ChC_Em_Tab_6.Value];
    end

    ip.nAcquisitions.(ip.allExperiments{index}) = app.TS_Tab_6.Value;
    
    if app.includeTS_all_Tab_6.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 1;
        
    elseif app.includeTS_selected_Tab_6.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 0;
    end
        
    ip.xDim.(ip.allExperiments{index}) = app.xDim_Tab_6.Value;
    ip.yDim.(ip.allExperiments{index}) = app.yDim_Tab_6.Value;
    ip.zDim.(ip.allExperiments{index}) = app.zDim_Tab_6.Value;
end

if app.activateTab_7.Value == 1
    index = numel(ip.allExperiments)+1;
    ip.allExperiments(index) = {app.experimentID_Tab_7.Value};
    
    switch app.ChC_Tab_7.Value
        case 'Not selected'
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_7.Value app.ChB_Tab_7.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_7.Value app.ChB_Em_Tab_7.Value];
            
        otherwise
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_7.Value app.ChB_Tab_7.Value app.ChC_Tab_7.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_7.Value app.ChB_Em_Tab_7.Value app.ChC_Em_Tab_7.Value];
    end
    
    ip.nAcquisitions.(ip.allExperiments{index}) = app.TS_Tab_7.Value;
    
    if app.includeTS_all_Tab_7.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 1;
        
    elseif app.includeTS_selected_Tab_7.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 0;
    end
        
    ip.xDim.(ip.allExperiments{index}) = app.xDim_Tab_7.Value;
    ip.yDim.(ip.allExperiments{index}) = app.yDim_Tab_7.Value;
    ip.zDim.(ip.allExperiments{index}) = app.zDim_Tab_7.Value;
end

if app.activateTab_8.Value == 1
    index = numel(ip.allExperiments)+1;
    ip.allExperiments(index) = {app.experimentID_Tab_8.Value};
    
    switch app.ChC_Tab_8.Value
        case 'Not selected'
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_8.Value app.ChB_Tab_8.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_8.Value app.ChB_Em_Tab_8.Value];
            
        otherwise
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_8.Value app.ChB_Tab_8.Value app.ChC_Tab_8.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_8.Value app.ChB_Em_Tab_8.Value app.ChC_Em_Tab_8.Value];
    end

    ip.nAcquisitions.(ip.allExperiments{index}) = app.TS_Tab_8.Value;
    
    if app.includeTS_all_Tab_8.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 1;
        
    elseif app.includeTS_selected_Tab_8.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 0;
    end
        
    ip.xDim.(ip.allExperiments{index}) = app.xDim_Tab_8.Value;
    ip.yDim.(ip.allExperiments{index}) = app.yDim_Tab_8.Value;
    ip.zDim.(ip.allExperiments{index}) = app.zDim_Tab_8.Value;
end

if app.activateTab_9.Value == 1
    index = numel(ip.allExperiments)+1;
    ip.allExperiments(index) = {app.experimentID_Tab_9.Value};
    
    switch app.ChC_Tab_9.Value
        case 'Not selected'
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_9.Value app.ChB_Tab_9.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_9.Value app.ChB_Em_Tab_9.Value];

        otherwise
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_9.Value app.ChB_Tab_9.Value app.ChC_Tab_9.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_9.Value app.ChB_Em_Tab_9.Value app.ChC_Em_Tab_9.Value];
    end
    
    ip.nAcquisitions.(ip.allExperiments{index}) = app.TS_Tab_9.Value;
    
    if app.includeTS_all_Tab_9.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 1;
        
    elseif app.includeTS_selected_Tab_9.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 0;
    end
        
    ip.xDim.(ip.allExperiments{index}) = app.xDim_Tab_9.Value;
    ip.yDim.(ip.allExperiments{index}) = app.yDim_Tab_9.Value;
    ip.zDim.(ip.allExperiments{index}) = app.zDim_Tab_9.Value;
end

if app.activateTab_10.Value == 1
    index = numel(ip.allExperiments)+1;
    ip.allExperiments(index) = {app.experimentID_Tab_10.Value};
    
    switch app.ChC_Tab_10.Value
        case 'Not selected'
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_10.Value app.ChB_Tab_10.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_10.Value app.ChB_Em_Tab_10.Value];
            
        otherwise
            ip.allChannels.(ip.allExperiments{index}) = ...
                {app.ChA_Tab_10.Value app.ChB_Tab_10.Value app.ChC_Tab_10.Value};
            
            ip.emWavelengths.(ip.allExperiments{index}) = ...
                [app.ChA_Em_Tab_10.Value app.ChB_Em_Tab_10.Value app.ChC_Em_Tab_10.Value];
    end
    
    ip.nAcquisitions.(ip.allExperiments{index}) = app.TS_Tab_10.Value;
    
    if app.includeTS_all_Tab_10.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 1;
        
    elseif app.includeTS_selected_Tab_10.Value == 1
        ip.processAll_TS.(ip.allExperiments{index}) = 0;
    end
        
    ip.xDim.(ip.allExperiments{index}) = app.xDim_Tab_10.Value;
    ip.yDim.(ip.allExperiments{index}) = app.yDim_Tab_10.Value;
    ip.zDim.(ip.allExperiments{index}) = app.zDim_Tab_10.Value;
end

% Execute selected task
switch task
    case 'Create folders'
        cd (ip.fdp)
        createFolders(ip)
    
    case 'Image processing'
        cd (ip.fdp)
        preProcessing(ip)
        
    case 'Create ROIs'
        ip.extROI = app.ExtendROI.Value;
        ip.extTimePre = app.TimesPre.Value;
        ip.extTimePost = app.TimesPost.Value;
        ip.executionMode = 'New';
        ip.fileAccessMode = 'NAS';
        
        if app.roiTS_all.Value == 1
           ip.roiAll_TS = 1;
        elseif app.roiTS_selected.Value == 1
           ip.roiAll_TS = 0;
        end
        
        if app.roiEvents_all.Value == 1
           ip.roiAll_events = 1;
        elseif app.roiEvents_selected.Value == 1
           ip.roiAll_events = 0;
        end
        
        cd (ip.fdp)
        createROIs(ip)
    
    case 'Track events'
        ip.samplePre = app.TrackTimesPreEvent.Value;
        ip.samplePost = app.TrackTimesPostEvent.Value;
        ip.R0 = app.EventDetectionSearchRadius.Value;
        ip.R = app.EventTrackingSearchRadius.Value;
        ip.startTimeScan = app.StartEventDetection.Value;
        ip.confirmTimes = app.ConfirmEventDetection.Value;
        ip.minTimpoints_preEvent = app.MinTimesPre.Value;
        ip.zSearchDistance = app.zSearchDistance.Value;
        ip.t0_STD = app.EventDetectionThreshold.Value;
        ip.objectMaskThresh = app.ObjectMaskThreshold.Value;
        ip.predetObjectMask = app.predetObjectMask.Value;
        
        if app.trackTS_all.Value == 1
             ip.trackAll_TS =  1;
        elseif app.trackTS_selected.Value == 1
             ip.trackAll_TS =  0;
        end
        
        if app.trackEvents_all.Value == 1
              ip.trackAll_events = 1;
        elseif app.trackEvents_selected.Value == 1
              ip.trackAll_events = 0;
        end
        
        if app.skipValidated_tracking.Value == 1
            ip.skipValidated_tracking.Value = 'yes';
        else
            ip.skipValidated_tracking.Value = 'no';
        end
        
        ip.skipCAC_tracking = app.skipCAC_tracking.Value;
        
        cd (ip.fdp)
        eventTrackingCompartment(ip); 
        
    case 'Normalize tracking data'
        ip.n = app.ObjectIntensityThreshold.Value;
        ip.nRoll = app.nRoll.Value;
        
        if app.normTS_all.Value == 1
             ip.normAll_TS =  1;
        elseif app.normTS_selected.Value == 1
             ip.normAll_TS =  0;
        end
        
        if app.normEvents_all.Value == 1
              ip.normAll_events = 1;
        elseif app.normEvents_selected.Value == 1
              ip.normAll_events = 0;
        end

        ip.normOption.channel_A = app.ChADropDown.Value;
        ip.normOption.channel_B = app.ChBDropDown.Value;
        ip.normOption.channel_C = app.ChCDropDown.Value;
        
        switch app.ChA_objMeasure.Value
            case 'Mean'
                ip.measureOptions.channel_A.object = 'object_mean';
            case 'Median'
                ip.measureOptions.channel_A.object = 'object_median';
        end
        switch app.ChB_objMeasure.Value
            case 'Mean'
                ip.measureOptions.channel_B.object = 'object_mean';
            case 'Median'
                ip.measureOptions.channel_B.object = 'object_median';
        end
        switch app.ChC_objMeasure.Value
            case 'Mean'
                ip.measureOptions.channel_C.object = 'object_mean';
            case 'Median'
                ip.measureOptions.channel_C.object = 'object_median';
        end
        switch app.ChA_lbgMeasure.Value
            case 'Mean'
                ip.measureOptions.channel_A.localBg = 'donut_mean';
            case 'Median'
                ip.measureOptions.channel_A.localBg = 'donut_median';
        end
        switch app.ChB_lbgMeasure.Value
            case 'Mean'
                ip.measureOptions.channel_B.localBg = 'donut_mean';
            case 'Median'
                ip.measureOptions.channel_B.localBg = 'donut_median';
        end
        switch app.ChC_lbgMeasure.Value
            case 'Mean'
                ip.measureOptions.channel_C.localBg = 'donut_mean';
            case 'Median'
                ip.measureOptions.channel_C.localBg = 'donut_median';
        end
        
        switch app.dataType.Value
            case 'Compartment tracking data'
                 ip.dataType = 'compartmentTrackingdata';
            case 'Cargo tracking data'
                 ip.dataType = 'cargoTrackingdata';
        end
        
        switch app.bgCorrection_ChA.Value
            case 'Local'
                ip.bgCorrection_channel_A = 'local';
            case 'Image'
                ip.bgCorrection_channel_A = 'image';
            case 'Cell'
                ip.bgCorrection_channel_A = 'cell';
        end
        
        switch app.bgCorrection_ChB.Value
            case 'Local'
                ip.bgCorrection_channel_B = 'local';
            case 'Image'
                ip.bgCorrection_channel_B = 'image';
            case 'Cell'
                ip.bgCorrection_channel_B = 'cell';
        end
        
        switch app.bgCorrection_ChC.Value
            case 'Local'
                ip.bgCorrection_channel_C = 'local';
            case 'Image'
                ip.bgCorrection_channel_C = 'image';
            case 'Cell'
                ip.bgCorrection_channel_C = 'cell';
        end
        
        cd (ip.fdp)
        normalizeData(ip);
        
    case 'Collect tracking data'
        if app.collectTS_all.Value == 1
             ip.processAll_TS =  1;
        elseif app.collectTS_selected.Value == 1
             ip.processAll_TS =  0;
        end
        
        if app.collectEvents_all.Value == 1
              ip.processAll_events = 1;
        elseif app.collectEvents_selected.Value == 1
              ip.processAll_events = 0;
        end
        
         switch app.SelectDataDropDown_2.Value
             case 'Compartment tracking data'
                 ip.dataType = 'compartmentTrackingdata';
             case 'Cargo tracking data'
                 ip.dataType = 'cargoTrackingdata'; 
         end
         
         if app.curateData.Value == 1
             ip.curateData = 'yes';
         else
             ip.curateData = 'no';
         end
         
        cd (ip.fdp)
        collectData(ip);
        
    case 'Create eventKey'
       
        if app.collectTS_all.Value == 1
             ip.processAll_TS =  1;
        elseif app.collectTS_selected.Value == 1
             ip.processAll_TS =  0;
        end
        
        if app.roiTS_all.Value == 1
              ip.processAll_TS = 1;
        elseif app.roiTS_selected.Value == 1
              ip.processAll_TS = 0;
        end
        
        if app.roiEvents_all.Value == 1
           ip.processAll_events = 1;
        elseif app.roiEvents_selected.Value == 1
           ip.processAll_events = 0;
        end
        
        cd (ip.fdp)     
        createEventKey(ip)
        
    case 'Create event panel'
        switch app.Mode.Value
            case 'MIP Tracked'
                ip.mode = 'mipTracked';
                
            case 'z-Cropped Tracked'
                ip.mode = 'croppedTracked';
                
            case 'z-Complete Untracked'
                ip.mode = 'fullUntracked';
                
            case 'MIP Untracked'
                ip.mode = 'mipUntracked';
        end
                
        ip.extPlanes = app.ExtendPlanes.Value;
        ip.spacersx = app.xSpacers.Value;
        ip.spacersy = app.ySpacers.Value;
        ip.frameSizeY = app.yPanelDim.Value;
        ip.frameSizeX = app.xPanelDim.Value;
        
        if app.eventPanelTS_all.Value == 1
            ip.plotAll_TS = 1;
        elseif app.eventPanelTS_selected.Value == 1
            ip.plotAll_TS = 0;
        end
        
        if app.eventPanelCells_all.Value == 1
            ip.plotAll_cells =  1;
        elseif app.eventPanelCells_selected.Value == 1
            ip.plotAll_cells =  0;
        end
        
        if app.eventPanelEvents_all.Value == 1
            ip.plotAll_events =   1;
        elseif app.eventPanelEvents_selected.Value == 1
            ip.plotAll_events =  0;
        end
        
        switch app.dataType_panel.Value
            case 'Compartment tracking data'
                ip.dataType_panel = 'compartmentTrackingdata';
            case 'Cargo tracking data'
                ip.dataType_panel = 'cargoTrackingdata'; 
        end

        if app.skipValidated_panels.Value == 1
            ip.skipValidated_panels.Value = 'yes';
        else
            ip.skipValidated_panels.Value = 'no';
        end
        
        ip.skipCAC_eventPanels = app.skipCAC_eventPanels.Value;
        
        cd (ip.fdp)
        [panel, panelMetadata] = eventPanel(ip);

        assignin('base', 'panel', panel)
        assignin('base', 'panelMetadata', panelMetadata)
        
        writepath = app.exportFolder.Value;
        panelName = app.panelName.Value;
        cd (ip.fdp)
        exportEventPanel(panel,panelMetadata,writepath,panelName)
        
    case 'Cargo Tracking'
        ip.samplePre = app.TrackTimesPreEvent.Value;
        ip.samplePost = app.TrackTimesPostEvent.Value;
        ip.R0 = app.EventDetectionSearchRadius.Value;
        ip.R = app.EventTrackingSearchRadius.Value;
        ip.startTimeScan = app.StartEventDetection.Value;
        ip.confirmTimes = app.ConfirmEventDetection.Value;
        ip.minTimpoints_preEvent = app.MinTimesPre.Value;
        ip.zSearchDistance = app.zSearchDistance.Value;
        ip.t0_STD = app.EventDetectionThreshold.Value;
        ip.objectMaskThresh = app.ObjectMaskThreshold.Value;
        ip.fitTrack = app.fitManTracks.Value;
        ip.predetObjectMask = app.predetObjectMask.Value;
        
        if app.trackTS_all.Value == 1
             ip.trackAll_TS =  1;
        elseif app.trackTS_selected.Value == 1
             ip.trackAll_TS =  0;
        end
        
        if app.trackEvents_all.Value == 1
              ip.trackAll_events = 1;
        elseif app.trackEvents_selected.Value == 1
              ip.trackAll_events = 0;
        end
        
        if app.skipValidated_tracking.Value == 1
            ip.skipValidated_tracking.Value = 'yes';
        else
            ip.skipValidated_tracking.Value = 'no';
        end
        
        ip.skipCAC_tracking = app.skipCAC_tracking.Value;
        
        cd (ip.fdp)
        eventTrackingCargo(ip); 

    case 'Partition manTracks'
        readpath = app.manTracksPath.Value;
        cd (ip.fdp)
        partManTracks(ip,readpath)
        
        case 'Modify tracking parameters'
        ip.mod.exp = app.modEXP.Value;
        ip.mod.ts = app.modTS.Value;
        ip.mod.cell = app.modCELL.Value;
        ip.mod.event = app.modEVENT.Value;
        
        ip.trackingDistance = str2double(app.trackingDistance.Value);
        ip.searchDistance = str2double(app.searchDistance.Value);
        ip.scanPre = str2double(app.startDetection.Value);
        ip.zSearchDistance = str2double(app.zsearchDistance.Value);
        ip.default_objectMask = str2double(app.maskSize.Value);
        ip.t0_STD = str2double(app.detectionThreshold.Value);
        
        cd (ip.fdp)
        modifyTrackingParameters(ip)
      
end

app.Lamp.Color = [0.4706 0.6706 0.1882];
end

