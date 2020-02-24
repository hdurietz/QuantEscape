classdef QuantEscape2020a_3_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        QuantEscape2020aUIFigure        matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        Tab                             matlab.ui.container.Tab
        TimeSeriesEditFieldLabel        matlab.ui.control.Label
        TS_Tab                          matlab.ui.control.NumericEditField
        ChADropDownLabel                matlab.ui.control.Label
        ChA_Tab                         matlab.ui.control.DropDown
        EmissionLabel                   matlab.ui.control.Label
        ChA_Em_Tab                      matlab.ui.control.NumericEditField
        ExperimentEditField_2Label      matlab.ui.control.Label
        experimentID_Tab                matlab.ui.control.EditField
        activateTab                     matlab.ui.control.CheckBox
        xDimEditFieldLabel              matlab.ui.control.Label
        xDim_Tab                        matlab.ui.control.NumericEditField
        EmissionLabel_2                 matlab.ui.control.Label
        ChB_Em_Tab                      matlab.ui.control.NumericEditField
        EmissionLabel_3                 matlab.ui.control.Label
        ChC_Em_Tab                      matlab.ui.control.NumericEditField
        ImagepropertiesLabel            matlab.ui.control.Label
        yDimEditFieldLabel              matlab.ui.control.Label
        yDim_Tab                        matlab.ui.control.NumericEditField
        zDimEditFieldLabel              matlab.ui.control.Label
        zDim_Tab                        matlab.ui.control.NumericEditField
        includeTS_group_Tab             matlab.ui.container.ButtonGroup
        includeTS_all_Tab               matlab.ui.control.RadioButton
        includeTS_selected_Tab          matlab.ui.control.RadioButton
        ChBDropDownLabel                matlab.ui.control.Label
        ChB_Tab                         matlab.ui.control.DropDown
        ChCDropDownLabel                matlab.ui.control.Label
        ChC_Tab                         matlab.ui.control.DropDown
        Tab_2                           matlab.ui.container.Tab
        TimeSeriesEditFieldLabel_2      matlab.ui.control.Label
        TS_Tab_2                        matlab.ui.control.NumericEditField
        ChADropDownLabel_2              matlab.ui.control.Label
        ChA_Tab_2                       matlab.ui.control.DropDown
        EmissionLabel_4                 matlab.ui.control.Label
        ChA_Em_Tab_2                    matlab.ui.control.NumericEditField
        ExperimentEditField_2Label_2    matlab.ui.control.Label
        experimentID_Tab_2              matlab.ui.control.EditField
        activateTab_2                   matlab.ui.control.CheckBox
        xDimEditFieldLabel_2            matlab.ui.control.Label
        xDim_Tab_2                      matlab.ui.control.NumericEditField
        EmissionLabel_5                 matlab.ui.control.Label
        ChB_Em_Tab_2                    matlab.ui.control.NumericEditField
        EmissionLabel_6                 matlab.ui.control.Label
        ChC_Em_Tab_2                    matlab.ui.control.NumericEditField
        ImagepropertiesLabel_2          matlab.ui.control.Label
        yDimEditFieldLabel_2            matlab.ui.control.Label
        yDim_Tab_2                      matlab.ui.control.NumericEditField
        zDimEditFieldLabel_2            matlab.ui.control.Label
        zDim_Tab_2                      matlab.ui.control.NumericEditField
        includeTS_group_Tab_2           matlab.ui.container.ButtonGroup
        includeTS_all_Tab_2             matlab.ui.control.RadioButton
        includeTS_selected_Tab_2        matlab.ui.control.RadioButton
        ChBDropDownLabel_2              matlab.ui.control.Label
        ChB_Tab_2                       matlab.ui.control.DropDown
        ChCDropDownLabel_2              matlab.ui.control.Label
        ChC_Tab_2                       matlab.ui.control.DropDown
        Tab_3                           matlab.ui.container.Tab
        TimeSeriesEditFieldLabel_3      matlab.ui.control.Label
        TS_Tab_3                        matlab.ui.control.NumericEditField
        ChADropDownLabel_3              matlab.ui.control.Label
        ChA_Tab_3                       matlab.ui.control.DropDown
        EmissionLabel_7                 matlab.ui.control.Label
        ChA_Em_Tab_3                    matlab.ui.control.NumericEditField
        ExperimentEditField_2Label_3    matlab.ui.control.Label
        experimentID_Tab_3              matlab.ui.control.EditField
        activateTab_3                   matlab.ui.control.CheckBox
        xDimEditFieldLabel_3            matlab.ui.control.Label
        xDim_Tab_3                      matlab.ui.control.NumericEditField
        EmissionLabel_8                 matlab.ui.control.Label
        ChB_Em_Tab_3                    matlab.ui.control.NumericEditField
        EmissionLabel_9                 matlab.ui.control.Label
        ChC_Em_Tab_3                    matlab.ui.control.NumericEditField
        ImagepropertiesLabel_3          matlab.ui.control.Label
        yDimEditFieldLabel_3            matlab.ui.control.Label
        yDim_Tab_3                      matlab.ui.control.NumericEditField
        zDimEditFieldLabel_3            matlab.ui.control.Label
        zDim_Tab_3                      matlab.ui.control.NumericEditField
        includeTS_group_Tab_3           matlab.ui.container.ButtonGroup
        includeTS_all_Tab_3             matlab.ui.control.RadioButton
        includeTS_selected_Tab_3        matlab.ui.control.RadioButton
        ChBDropDownLabel_3              matlab.ui.control.Label
        ChB_Tab_3                       matlab.ui.control.DropDown
        ChCDropDownLabel_3              matlab.ui.control.Label
        ChC_Tab_3                       matlab.ui.control.DropDown
        Tab_4                           matlab.ui.container.Tab
        TimeSeriesEditFieldLabel_4      matlab.ui.control.Label
        TS_Tab_4                        matlab.ui.control.NumericEditField
        ChADropDownLabel_4              matlab.ui.control.Label
        ChA_Tab_4                       matlab.ui.control.DropDown
        EmissionLabel_10                matlab.ui.control.Label
        ChA_Em_Tab_4                    matlab.ui.control.NumericEditField
        ExperimentEditField_2Label_4    matlab.ui.control.Label
        experimentID_Tab_4              matlab.ui.control.EditField
        activateTab_4                   matlab.ui.control.CheckBox
        xDimEditFieldLabel_4            matlab.ui.control.Label
        xDim_Tab_4                      matlab.ui.control.NumericEditField
        EmissionLabel_11                matlab.ui.control.Label
        ChB_Em_Tab_4                    matlab.ui.control.NumericEditField
        EmissionLabel_12                matlab.ui.control.Label
        ChC_Em_Tab_4                    matlab.ui.control.NumericEditField
        ImagepropertiesLabel_4          matlab.ui.control.Label
        yDimEditFieldLabel_4            matlab.ui.control.Label
        yDim_Tab_4                      matlab.ui.control.NumericEditField
        zDimEditFieldLabel_4            matlab.ui.control.Label
        zDim_Tab_4                      matlab.ui.control.NumericEditField
        includeTS_group_Tab_4           matlab.ui.container.ButtonGroup
        includeTS_all_Tab_4             matlab.ui.control.RadioButton
        includeTS_selected_Tab_4        matlab.ui.control.RadioButton
        ChBDropDownLabel_4              matlab.ui.control.Label
        ChB_Tab_4                       matlab.ui.control.DropDown
        ChCDropDownLabel_4              matlab.ui.control.Label
        ChC_Tab_4                       matlab.ui.control.DropDown
        Tab_5                           matlab.ui.container.Tab
        TimeSeriesEditFieldLabel_5      matlab.ui.control.Label
        TS_Tab_5                        matlab.ui.control.NumericEditField
        ChADropDownLabel_5              matlab.ui.control.Label
        ChA_Tab_5                       matlab.ui.control.DropDown
        EmissionLabel_13                matlab.ui.control.Label
        ChA_Em_Tab_5                    matlab.ui.control.NumericEditField
        ExperimentEditField_2Label_5    matlab.ui.control.Label
        experimentID_Tab_5              matlab.ui.control.EditField
        activateTab_5                   matlab.ui.control.CheckBox
        xDimEditFieldLabel_5            matlab.ui.control.Label
        xDim_Tab_5                      matlab.ui.control.NumericEditField
        EmissionLabel_14                matlab.ui.control.Label
        ChB_Em_Tab_5                    matlab.ui.control.NumericEditField
        EmissionLabel_15                matlab.ui.control.Label
        ChC_Em_Tab_5                    matlab.ui.control.NumericEditField
        ImagepropertiesLabel_5          matlab.ui.control.Label
        yDimEditFieldLabel_5            matlab.ui.control.Label
        yDim_Tab_5                      matlab.ui.control.NumericEditField
        zDimEditFieldLabel_5            matlab.ui.control.Label
        zDim_Tab_5                      matlab.ui.control.NumericEditField
        includeTS_group_Tab_5           matlab.ui.container.ButtonGroup
        includeTS_all_Tab_5             matlab.ui.control.RadioButton
        includeTS_selected_Tab_5        matlab.ui.control.RadioButton
        ChBDropDownLabel_5              matlab.ui.control.Label
        ChB_Tab_5                       matlab.ui.control.DropDown
        ChCDropDownLabel_5              matlab.ui.control.Label
        ChC_Tab_5                       matlab.ui.control.DropDown
        Tab_6                           matlab.ui.container.Tab
        TimeSeriesEditFieldLabel_6      matlab.ui.control.Label
        TS_Tab_6                        matlab.ui.control.NumericEditField
        ChADropDownLabel_6              matlab.ui.control.Label
        ChA_Tab_6                       matlab.ui.control.DropDown
        EmissionLabel_16                matlab.ui.control.Label
        ChA_Em_Tab_6                    matlab.ui.control.NumericEditField
        ExperimentEditField_2Label_6    matlab.ui.control.Label
        experimentID_Tab_6              matlab.ui.control.EditField
        activateTab_6                   matlab.ui.control.CheckBox
        xDimEditFieldLabel_6            matlab.ui.control.Label
        xDim_Tab_6                      matlab.ui.control.NumericEditField
        EmissionLabel_17                matlab.ui.control.Label
        ChB_Em_Tab_6                    matlab.ui.control.NumericEditField
        EmissionLabel_18                matlab.ui.control.Label
        ChC_Em_Tab_6                    matlab.ui.control.NumericEditField
        ImagepropertiesLabel_6          matlab.ui.control.Label
        yDimEditFieldLabel_6            matlab.ui.control.Label
        yDim_Tab_6                      matlab.ui.control.NumericEditField
        zDimEditFieldLabel_6            matlab.ui.control.Label
        zDim_Tab_6                      matlab.ui.control.NumericEditField
        includeTS_group_Tab_6           matlab.ui.container.ButtonGroup
        includeTS_all_Tab_6             matlab.ui.control.RadioButton
        includeTS_selected_Tab_6        matlab.ui.control.RadioButton
        ChBDropDownLabel_6              matlab.ui.control.Label
        ChB_Tab_6                       matlab.ui.control.DropDown
        ChCDropDownLabel_6              matlab.ui.control.Label
        ChC_Tab_6                       matlab.ui.control.DropDown
        Tab_7                           matlab.ui.container.Tab
        TimeSeriesEditFieldLabel_7      matlab.ui.control.Label
        TS_Tab_7                        matlab.ui.control.NumericEditField
        ChADropDownLabel_7              matlab.ui.control.Label
        ChA_Tab_7                       matlab.ui.control.DropDown
        EmissionLabel_19                matlab.ui.control.Label
        ChA_Em_Tab_7                    matlab.ui.control.NumericEditField
        ExperimentEditField_2Label_7    matlab.ui.control.Label
        experimentID_Tab_7              matlab.ui.control.EditField
        activateTab_7                   matlab.ui.control.CheckBox
        xDimEditFieldLabel_7            matlab.ui.control.Label
        xDim_Tab_7                      matlab.ui.control.NumericEditField
        EmissionLabel_20                matlab.ui.control.Label
        ChB_Em_Tab_7                    matlab.ui.control.NumericEditField
        EmissionLabel_21                matlab.ui.control.Label
        ChC_Em_Tab_7                    matlab.ui.control.NumericEditField
        ImagepropertiesLabel_7          matlab.ui.control.Label
        yDimEditFieldLabel_7            matlab.ui.control.Label
        yDim_Tab_7                      matlab.ui.control.NumericEditField
        zDimEditFieldLabel_7            matlab.ui.control.Label
        zDim_Tab_7                      matlab.ui.control.NumericEditField
        includeTS_group_Tab_7           matlab.ui.container.ButtonGroup
        includeTS_all_Tab_7             matlab.ui.control.RadioButton
        includeTS_selected_Tab_7        matlab.ui.control.RadioButton
        ChBDropDownLabel_7              matlab.ui.control.Label
        ChB_Tab_7                       matlab.ui.control.DropDown
        ChCDropDownLabel_7              matlab.ui.control.Label
        ChC_Tab_7                       matlab.ui.control.DropDown
        Tab_8                           matlab.ui.container.Tab
        TimeSeriesEditFieldLabel_8      matlab.ui.control.Label
        TS_Tab_8                        matlab.ui.control.NumericEditField
        ChADropDownLabel_8              matlab.ui.control.Label
        ChA_Tab_8                       matlab.ui.control.DropDown
        EmissionLabel_22                matlab.ui.control.Label
        ChA_Em_Tab_8                    matlab.ui.control.NumericEditField
        ExperimentEditField_2Label_8    matlab.ui.control.Label
        experimentID_Tab_8              matlab.ui.control.EditField
        activateTab_8                   matlab.ui.control.CheckBox
        xDimEditFieldLabel_8            matlab.ui.control.Label
        xDim_Tab_8                      matlab.ui.control.NumericEditField
        EmissionLabel_23                matlab.ui.control.Label
        ChB_Em_Tab_8                    matlab.ui.control.NumericEditField
        EmissionLabel_24                matlab.ui.control.Label
        ChC_Em_Tab_8                    matlab.ui.control.NumericEditField
        ImagepropertiesLabel_8          matlab.ui.control.Label
        yDimEditFieldLabel_8            matlab.ui.control.Label
        yDim_Tab_8                      matlab.ui.control.NumericEditField
        zDimEditFieldLabel_8            matlab.ui.control.Label
        zDim_Tab_8                      matlab.ui.control.NumericEditField
        includeTS_group_Tab_8           matlab.ui.container.ButtonGroup
        includeTS_all_Tab_8             matlab.ui.control.RadioButton
        includeTS_selected_Tab_8        matlab.ui.control.RadioButton
        ChBDropDownLabel_8              matlab.ui.control.Label
        ChB_Tab_8                       matlab.ui.control.DropDown
        ChCDropDownLabel_8              matlab.ui.control.Label
        ChC_Tab_8                       matlab.ui.control.DropDown
        Tab_9                           matlab.ui.container.Tab
        TimeSeriesEditFieldLabel_9      matlab.ui.control.Label
        TS_Tab_9                        matlab.ui.control.NumericEditField
        ChADropDownLabel_9              matlab.ui.control.Label
        ChA_Tab_9                       matlab.ui.control.DropDown
        EmissionLabel_25                matlab.ui.control.Label
        ChA_Em_Tab_9                    matlab.ui.control.NumericEditField
        ExperimentEditField_2Label_9    matlab.ui.control.Label
        experimentID_Tab_9              matlab.ui.control.EditField
        activateTab_9                   matlab.ui.control.CheckBox
        xDimEditFieldLabel_9            matlab.ui.control.Label
        xDim_Tab_9                      matlab.ui.control.NumericEditField
        EmissionLabel_26                matlab.ui.control.Label
        ChB_Em_Tab_9                    matlab.ui.control.NumericEditField
        EmissionLabel_27                matlab.ui.control.Label
        ChC_Em_Tab_9                    matlab.ui.control.NumericEditField
        ImagepropertiesLabel_9          matlab.ui.control.Label
        yDimEditFieldLabel_9            matlab.ui.control.Label
        yDim_Tab_9                      matlab.ui.control.NumericEditField
        zDimEditFieldLabel_9            matlab.ui.control.Label
        zDim_Tab_9                      matlab.ui.control.NumericEditField
        includeTS_group_Tab_9           matlab.ui.container.ButtonGroup
        includeTS_all_Tab_9             matlab.ui.control.RadioButton
        includeTS_selected_Tab_9        matlab.ui.control.RadioButton
        ChBDropDownLabel_9              matlab.ui.control.Label
        ChB_Tab_9                       matlab.ui.control.DropDown
        ChCDropDownLabel_9              matlab.ui.control.Label
        ChC_Tab_9                       matlab.ui.control.DropDown
        Tab_10                          matlab.ui.container.Tab
        TimeSeriesEditFieldLabel_10     matlab.ui.control.Label
        TS_Tab_10                       matlab.ui.control.NumericEditField
        ChADropDownLabel_10             matlab.ui.control.Label
        ChA_Tab_10                      matlab.ui.control.DropDown
        EmissionLabel_28                matlab.ui.control.Label
        ChA_Em_Tab_10                   matlab.ui.control.NumericEditField
        ExperimentEditField_2Label_10   matlab.ui.control.Label
        experimentID_Tab_10             matlab.ui.control.EditField
        activateTab_10                  matlab.ui.control.CheckBox
        xDimEditFieldLabel_10           matlab.ui.control.Label
        xDim_Tab_10                     matlab.ui.control.NumericEditField
        EmissionLabel_29                matlab.ui.control.Label
        ChB_Em_Tab_10                   matlab.ui.control.NumericEditField
        EmissionLabel_30                matlab.ui.control.Label
        ChC_Em_Tab_10                   matlab.ui.control.NumericEditField
        ImagepropertiesLabel_10         matlab.ui.control.Label
        yDimEditFieldLabel_10           matlab.ui.control.Label
        yDim_Tab_10                     matlab.ui.control.NumericEditField
        zDimEditFieldLabel_10           matlab.ui.control.Label
        zDim_Tab_10                     matlab.ui.control.NumericEditField
        includeTS_group_Tab_10          matlab.ui.container.ButtonGroup
        includeTS_all_Tab_10            matlab.ui.control.RadioButton
        includeTS_selected_Tab_10       matlab.ui.control.RadioButton
        ChBDropDownLabel_10             matlab.ui.control.Label
        ChB_Tab_10                      matlab.ui.control.DropDown
        ChCDropDownLabel_10             matlab.ui.control.Label
        ChC_Tab_10                      matlab.ui.control.DropDown
        Lamp                            matlab.ui.control.Lamp
        TabGroup4                       matlab.ui.container.TabGroup
        ProcessingTab                   matlab.ui.container.Tab
        ImageProcessingPanel            matlab.ui.container.Panel
        StartProcessingButton           matlab.ui.control.Button
        CreateFoldersButton             matlab.ui.control.Button
        EventROIsTab                    matlab.ui.container.Tab
        CreateEventROIsPanel            matlab.ui.container.Panel
        ExtendROIEditFieldLabel         matlab.ui.control.Label
        ExtendROI                       matlab.ui.control.NumericEditField
        TimesPreEditFieldLabel          matlab.ui.control.Label
        TimesPre                        matlab.ui.control.NumericEditField
        TimesPostEditFieldLabel         matlab.ui.control.Label
        TimesPost                       matlab.ui.control.NumericEditField
        IncludeTimeSeriesButtonGroup    matlab.ui.container.ButtonGroup
        roiTS_all                       matlab.ui.control.RadioButton
        roiTS_selected                  matlab.ui.control.RadioButton
        IncludeEventsButtonGroup        matlab.ui.container.ButtonGroup
        roiEvents_all                   matlab.ui.control.RadioButton
        roiEvents_selected              matlab.ui.control.RadioButton
        RunCreateROIs                   matlab.ui.control.Button
        skipCelldata                    matlab.ui.control.CheckBox
        skipImageBackground             matlab.ui.control.CheckBox
        createEventKey                  matlab.ui.control.Button
        EventPanelsTab                  matlab.ui.container.Tab
        CreateEventROIPanel             matlab.ui.container.Panel
        ExtendPlanesEditFieldLabel      matlab.ui.control.Label
        ExtendPlanes                    matlab.ui.control.NumericEditField
        xSpacersEditFieldLabel          matlab.ui.control.Label
        xSpacers                        matlab.ui.control.NumericEditField
        ModeDropDownLabel               matlab.ui.control.Label
        Mode                            matlab.ui.control.DropDown
        CreateROIPanelButton            matlab.ui.control.Button
        IncludeTimeSeriesButtonGroup_3  matlab.ui.container.ButtonGroup
        eventPanelTS_all                matlab.ui.control.RadioButton
        eventPanelTS_selected           matlab.ui.control.RadioButton
        IncludeEventsButtonGroup_2      matlab.ui.container.ButtonGroup
        eventPanelEvents_all            matlab.ui.control.RadioButton
        eventPanelEvents_selected       matlab.ui.control.RadioButton
        IncludeCellsButtonGroup         matlab.ui.container.ButtonGroup
        eventPanelCells_all             matlab.ui.control.RadioButton
        eventPanelCells_selected        matlab.ui.control.RadioButton
        ySpacersEditFieldLabel          matlab.ui.control.Label
        ySpacers                        matlab.ui.control.NumericEditField
        xPanelDimEditFieldLabel         matlab.ui.control.Label
        xPanelDim                       matlab.ui.control.NumericEditField
        yPanelDimEditFieldLabel         matlab.ui.control.Label
        yPanelDim                       matlab.ui.control.NumericEditField
        ExportFolderTimeSeriesFolderEditFieldLabel  matlab.ui.control.Label
        exportFolder                    matlab.ui.control.EditField
        PanelNameEditFieldLabel         matlab.ui.control.Label
        panelName                       matlab.ui.control.EditField
        skipCAC_eventPanels             matlab.ui.control.CheckBox
        skipValidated_panels            matlab.ui.control.CheckBox
        SelectDataDropDownLabel_2       matlab.ui.control.Label
        dataType_panel                  matlab.ui.control.DropDown
        TrackingTab                     matlab.ui.container.Tab
        EventTrackingPanel              matlab.ui.container.Panel
        IncludeTimeSeriesButtonGroup_4  matlab.ui.container.ButtonGroup
        trackTS_all                     matlab.ui.control.RadioButton
        trackTS_selected                matlab.ui.control.RadioButton
        IncludeEventsButtonGroup_3      matlab.ui.container.ButtonGroup
        trackEvents_all                 matlab.ui.control.RadioButton
        trackEvents_selected            matlab.ui.control.RadioButton
        EventDetectionSearchRadiusEditFieldLabel  matlab.ui.control.Label
        EventDetectionSearchRadius      matlab.ui.control.NumericEditField
        EventTrackingSearchRadiusEditFieldLabel  matlab.ui.control.Label
        EventTrackingSearchRadius       matlab.ui.control.NumericEditField
        StartEventDetectionEditFieldLabel  matlab.ui.control.Label
        StartEventDetection             matlab.ui.control.NumericEditField
        ConfirmEventDetectionEditFieldLabel  matlab.ui.control.Label
        ConfirmEventDetection           matlab.ui.control.NumericEditField
        TrackTimesPostEventEditFieldLabel  matlab.ui.control.Label
        TrackTimesPostEvent             matlab.ui.control.NumericEditField
        TrackTimesPreEventEditFieldLabel  matlab.ui.control.Label
        TrackTimesPreEvent              matlab.ui.control.NumericEditField
        MinTimesPreEditField_2Label     matlab.ui.control.Label
        MinTimesPre                     matlab.ui.control.NumericEditField
        zSearchDistanceEditField_2Label  matlab.ui.control.Label
        zSearchDistance                 matlab.ui.control.NumericEditField
        EventDetectionThresholdEditFieldLabel  matlab.ui.control.Label
        EventDetectionThreshold         matlab.ui.control.NumericEditField
        TrackCompartmentsButton         matlab.ui.control.Button
        ObjectMaskThresholdLabel        matlab.ui.control.Label
        ObjectMaskThreshold             matlab.ui.control.NumericEditField
        PrimaryButtonGroup              matlab.ui.container.ButtonGroup
        ChAButton_3                     matlab.ui.control.RadioButton
        ChBButton_3                     matlab.ui.control.RadioButton
        ChCButton_3                     matlab.ui.control.RadioButton
        SecondaryButtonGroup            matlab.ui.container.ButtonGroup
        ChAButton_2                     matlab.ui.control.RadioButton
        ChBButton_2                     matlab.ui.control.RadioButton
        ChCButton_2                     matlab.ui.control.RadioButton
        PartitionManualCargoTracksPanel  matlab.ui.container.Panel
        PartitionTracksButton           matlab.ui.control.Button
        manTrackscsvpanelMetadatamatEditFieldLabel  matlab.ui.control.Label
        manTracksPath                   matlab.ui.control.EditField
        FitCargoTrackingLabel           matlab.ui.control.Label
        fitManTracks                    matlab.ui.control.NumericEditField
        runCargoTracking                matlab.ui.control.Button
        TertiaryButtonGroup             matlab.ui.container.ButtonGroup
        ChAButton                       matlab.ui.control.RadioButton
        ChBButton                       matlab.ui.control.RadioButton
        ChCButton                       matlab.ui.control.RadioButton
        ChannelOrderLabel               matlab.ui.control.Label
        PredeterminedObjectMaskSizeLabel  matlab.ui.control.Label
        predetObjectMask                matlab.ui.control.NumericEditField
        skipCAC_tracking                matlab.ui.control.CheckBox
        skipAutoDetection               matlab.ui.control.CheckBox
        modifyTracks_compartment        matlab.ui.control.Button
        modifyTracks_cargo              matlab.ui.control.Button
        NewObjectMaskSizeLabel          matlab.ui.control.Label
        predetObjectMask_retrack        matlab.ui.control.NumericEditField
        VerifynewquantificationofallselecteddataCheckBox  matlab.ui.control.CheckBox
        skipValidated_tracking          matlab.ui.control.CheckBox
        NormalizeTab                    matlab.ui.container.Tab
        NormalizeTrackingDataPanel      matlab.ui.container.Panel
        ObjectIntensityThresholdEditFieldLabel  matlab.ui.control.Label
        ObjectIntensityThreshold        matlab.ui.control.NumericEditField
        NormalizeDataButton             matlab.ui.control.Button
        IncludeTimeSeriesButtonGroup_5  matlab.ui.container.ButtonGroup
        normTS_all                      matlab.ui.control.RadioButton
        normTS_selected                 matlab.ui.control.RadioButton
        IncludeEventsButtonGroup_4      matlab.ui.container.ButtonGroup
        normEvents_all                  matlab.ui.control.RadioButton
        normEvents_selected             matlab.ui.control.RadioButton
        ChADropDownLabel_11             matlab.ui.control.Label
        ChADropDown                     matlab.ui.control.DropDown
        ChBDropDownLabel_11             matlab.ui.control.Label
        ChBDropDown                     matlab.ui.control.DropDown
        ChCDropDownLabel_11             matlab.ui.control.Label
        ChCDropDown                     matlab.ui.control.DropDown
        SelectDataDropDownLabel         matlab.ui.control.Label
        dataType                        matlab.ui.control.DropDown
        LocalbackgroundrollingmeanLabel  matlab.ui.control.Label
        nRoll                           matlab.ui.control.NumericEditField
        bgCorrection_ChA                matlab.ui.control.DropDown
        bgCorrection_ChB                matlab.ui.control.DropDown
        bgCorrection_ChC                matlab.ui.control.DropDown
        NormalizationLabel              matlab.ui.control.Label
        BackgroundcorrectionLabel       matlab.ui.control.Label
        ObjectmeasurementLabel          matlab.ui.control.Label
        LocalbackgroundmeasurementLabel  matlab.ui.control.Label
        ChA_objMeasure                  matlab.ui.control.DropDown
        ChB_objMeasure                  matlab.ui.control.DropDown
        ChC_objMeasure                  matlab.ui.control.DropDown
        ChA_lbgMeasure                  matlab.ui.control.DropDown
        ChB_lbgMeasure                  matlab.ui.control.DropDown
        ChC_lbgMeasure                  matlab.ui.control.DropDown
        CollectTab                      matlab.ui.container.Tab
        CollectTrackingDataPanel        matlab.ui.container.Panel
        IncludeTimeSeriesButtonGroup_6  matlab.ui.container.ButtonGroup
        collectTS_all                   matlab.ui.control.RadioButton
        collectTS_selected              matlab.ui.control.RadioButton
        IncludeEventsButtonGroup_5      matlab.ui.container.ButtonGroup
        collectEvents_all               matlab.ui.control.RadioButton
        collectEvents_selected          matlab.ui.control.RadioButton
        CollectDataButton               matlab.ui.control.Button
        SelectDataDropDown_2Label       matlab.ui.control.Label
        SelectDataDropDown_2            matlab.ui.control.DropDown
        CollectandStratifyDataButton    matlab.ui.control.Button
        StratificationGroupsButtonGroup  matlab.ui.container.ButtonGroup
        TwoGroupsButton                 matlab.ui.control.RadioButton
        ThreeGroupsButton               matlab.ui.control.RadioButton
        StratificationFeatureDropDownLabel  matlab.ui.control.Label
        StratificationFeatureDropDown   matlab.ui.control.DropDown
        curateData                      matlab.ui.control.CheckBox
        ModifyTrackingParametersTab     matlab.ui.container.Tab
        EventTrackingSearchRadiusEditFieldLabel_2  matlab.ui.control.Label
        trackingDistance                matlab.ui.control.EditField
        EventDetectionSearchRadiusEditFieldLabel_2  matlab.ui.control.Label
        searchDistance                  matlab.ui.control.EditField
        zSearchDistanceLabel            matlab.ui.control.Label
        zsearchDistance                 matlab.ui.control.EditField
        StartEventDetectionEditFieldLabel_2  matlab.ui.control.Label
        startDetection                  matlab.ui.control.EditField
        EventDetectionThresholdEditFieldLabel_2  matlab.ui.control.Label
        detectionThreshold              matlab.ui.control.EditField
        ObjectMaskSizeLabel             matlab.ui.control.Label
        maskSize                        matlab.ui.control.EditField
        ExperimentEditFieldLabel        matlab.ui.control.Label
        modEXP                          matlab.ui.control.EditField
        AcquisitionEditFieldLabel       matlab.ui.control.Label
        modTS                           matlab.ui.control.EditField
        CellEditFieldLabel              matlab.ui.control.Label
        modCELL                         matlab.ui.control.EditField
        EventEditFieldLabel             matlab.ui.control.Label
        modEVENT                        matlab.ui.control.EditField
        ModifyParametersButton          matlab.ui.control.Button
        SettingsTab                     matlab.ui.container.Tab
        TabGroup3                       matlab.ui.container.TabGroup
        HomeFolderTab                   matlab.ui.container.Tab
        DirectoryPathLabel              matlab.ui.control.Label
        Home                            matlab.ui.control.EditField
        SSDTab                          matlab.ui.container.Tab
        DirectoryPathLabel_3            matlab.ui.control.Label
        SSD                             matlab.ui.control.EditField
        OfflineDriveTab                 matlab.ui.container.Tab
        pdp_2Label                      matlab.ui.control.Label
        offlineDrivePath                matlab.ui.control.EditField
        CompressionDriveTab             matlab.ui.container.Tab
        DirectoryPathLabel_4            matlab.ui.control.Label
        compressionDrive                matlab.ui.control.EditField
        BackupOfflineDrive              matlab.ui.container.Tab
        offlineDrive_2Label             matlab.ui.control.Label
        BackupOfflineDrivePath          matlab.ui.control.EditField
        TabGroup2                       matlab.ui.container.TabGroup
        PSF1Tab                         matlab.ui.container.Tab
        PathEditField_9Label            matlab.ui.control.Label
        pathPSF1                        matlab.ui.control.EditField
        EmissionEditField_5Label        matlab.ui.control.Label
        EmissionPSF1                    matlab.ui.control.NumericEditField
        PSFConfigurationLabel           matlab.ui.control.Label
        ChannelmatchingintervalLabel_2  matlab.ui.control.Label
        MinLabel_2                      matlab.ui.control.Label
        minIntervalPSF1                 matlab.ui.control.NumericEditField
        MaxLabel_2                      matlab.ui.control.Label
        maxIntervalPSF1                 matlab.ui.control.NumericEditField
        PSF2Tab                         matlab.ui.container.Tab
        PathEditField_10Label           matlab.ui.control.Label
        pathPSF2                        matlab.ui.control.EditField
        EmissionEditField_6Label        matlab.ui.control.Label
        EmissionPSF2                    matlab.ui.control.NumericEditField
        PSFconfigurationLabel_2         matlab.ui.control.Label
        ChannelmatchingintervalLabel_3  matlab.ui.control.Label
        MinLabel_3                      matlab.ui.control.Label
        minIntervalPSF2                 matlab.ui.control.NumericEditField
        MaxLabel_3                      matlab.ui.control.Label
        maxIntervalPSF2                 matlab.ui.control.NumericEditField
        PSF3Tab                         matlab.ui.container.Tab
        PathEditField_11Label           matlab.ui.control.Label
        pathPSF3                        matlab.ui.control.EditField
        EmissionEditField_7Label        matlab.ui.control.Label
        EmissionPSF3                    matlab.ui.control.NumericEditField
        PSFconfigurationLabel_3         matlab.ui.control.Label
        MinLabel                        matlab.ui.control.Label
        minIntervalPSF3                 matlab.ui.control.NumericEditField
        MaxLabel                        matlab.ui.control.Label
        maxIntervalPSF3                 matlab.ui.control.NumericEditField
        ChannelmatchingintervalLabel    matlab.ui.control.Label
        PSF4Tab                         matlab.ui.container.Tab
        PathEditField_12Label           matlab.ui.control.Label
        pathPSF4                        matlab.ui.control.EditField
        EmissionEditField_8Label        matlab.ui.control.Label
        EmissionPSF4                    matlab.ui.control.NumericEditField
        PSFconfigurationLabel_4         matlab.ui.control.Label
        ChannelmatchingintervalLabel_4  matlab.ui.control.Label
        MinLabel_4                      matlab.ui.control.Label
        minIntervalPSF4                 matlab.ui.control.NumericEditField
        MaxLabel_4                      matlab.ui.control.Label
        maxIntervalPSF4                 matlab.ui.control.NumericEditField
    end

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: CollectDataButton
        function CollectDataButtonPushed(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Collect tracking data')
        end

        % Button pushed function: CreateFoldersButton
        function CreateFoldersButtonPushed(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Create folders');
        end

        % Button pushed function: CreateROIPanelButton
        function CreateROIPanelButtonPushed(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Create event panel');
        end

        % Button pushed function: ModifyParametersButton
        function ModifyParametersButtonPushed(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Modify tracking parameters');
        end

        % Button pushed function: NormalizeDataButton
        function NormalizeDataButtonPushed(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Normalize tracking data')
        end

        % Button pushed function: PartitionTracksButton
        function PartitionTracksButtonPushed(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Partition manTracks');
        end

        % Callback function
        function RunButton_12Pushed(app, event)
         cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'OfflineStorageOps');   
        end

        % Button pushed function: RunCreateROIs
        function RunCreateROIsPushed(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Create ROIs')
        end

        % Button pushed function: StartProcessingButton
        function StartProcessingButtonPushed(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Image processing');
        end

        % Button pushed function: TrackCompartmentsButton
        function TrackCompartmentsButtonPushed(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Track events')
        end

        % Button pushed function: createEventKey
        function createEventKeyBtn(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Create eventKey');
        end

        % Callback function
        function exportPanel(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Export panel');
        end

        % Button pushed function: modifyTracks_cargo
        function modifyTracks_cargoButtonPushed(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Modify tracks cargo');
        end

        % Button pushed function: modifyTracks_compartment
        function modifyTracks_compartmentPushed(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Modify tracks compartments');
        end

        % Button pushed function: runCargoTracking
        function runCargoTrackingButtonPushed(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Cargo Tracking');
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create QuantEscape2020aUIFigure and hide until all components are created
            app.QuantEscape2020aUIFigure = uifigure('Visible', 'off');
            app.QuantEscape2020aUIFigure.Color = [0.1294 0.149 0.1882];
            app.QuantEscape2020aUIFigure.Position = [100 100 1166 560];
            app.QuantEscape2020aUIFigure.Name = 'QuantEscape 2020a';
            app.QuantEscape2020aUIFigure.Resize = 'off';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.QuantEscape2020aUIFigure);
            app.TabGroup.TabLocation = 'left';
            app.TabGroup.Position = [8 9 413 545];

            % Create Tab
            app.Tab = uitab(app.TabGroup);
            app.Tab.Title = '1';
            app.Tab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create TimeSeriesEditFieldLabel
            app.TimeSeriesEditFieldLabel = uilabel(app.Tab);
            app.TimeSeriesEditFieldLabel.HorizontalAlignment = 'right';
            app.TimeSeriesEditFieldLabel.VerticalAlignment = 'top';
            app.TimeSeriesEditFieldLabel.FontColor = [1 1 1];
            app.TimeSeriesEditFieldLabel.Position = [227 480 68 15];
            app.TimeSeriesEditFieldLabel.Text = 'Time Series';

            % Create TS_Tab
            app.TS_Tab = uieditfield(app.Tab, 'numeric');
            app.TS_Tab.FontColor = [1 1 1];
            app.TS_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.TS_Tab.Position = [298 476 41 22];

            % Create ChADropDownLabel
            app.ChADropDownLabel = uilabel(app.Tab);
            app.ChADropDownLabel.HorizontalAlignment = 'right';
            app.ChADropDownLabel.VerticalAlignment = 'top';
            app.ChADropDownLabel.FontColor = [1 1 1];
            app.ChADropDownLabel.Position = [18 436 35 15];
            app.ChADropDownLabel.Text = 'Ch. A';

            % Create ChA_Tab
            app.ChA_Tab = uidropdown(app.Tab);
            app.ChA_Tab.Items = {'Not selected', 'mCherry-Rab5', 'DY547-chol-siRNA', 'YFP-galectin-9'};
            app.ChA_Tab.Editable = 'on';
            app.ChA_Tab.FontColor = [1 1 1];
            app.ChA_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.ChA_Tab.Position = [68 432 148 22];
            app.ChA_Tab.Value = 'Not selected';

            % Create EmissionLabel
            app.EmissionLabel = uilabel(app.Tab);
            app.EmissionLabel.HorizontalAlignment = 'right';
            app.EmissionLabel.VerticalAlignment = 'top';
            app.EmissionLabel.FontColor = [1 1 1];
            app.EmissionLabel.Position = [229 436 54 15];
            app.EmissionLabel.Text = 'Emission';

            % Create ChA_Em_Tab
            app.ChA_Em_Tab = uieditfield(app.Tab, 'numeric');
            app.ChA_Em_Tab.FontColor = [1 1 1];
            app.ChA_Em_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.ChA_Em_Tab.Position = [298 432 41 22];
            app.ChA_Em_Tab.Value = 509;

            % Create ExperimentEditField_2Label
            app.ExperimentEditField_2Label = uilabel(app.Tab);
            app.ExperimentEditField_2Label.BackgroundColor = [0.1176 0.1294 0.1569];
            app.ExperimentEditField_2Label.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label.FontColor = [1 1 1];
            app.ExperimentEditField_2Label.Position = [12 480 67 15];
            app.ExperimentEditField_2Label.Text = 'Experiment';

            % Create experimentID_Tab
            app.experimentID_Tab = uieditfield(app.Tab, 'text');
            app.experimentID_Tab.FontColor = [1 1 1];
            app.experimentID_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.experimentID_Tab.Position = [94 476 122 22];

            % Create activateTab
            app.activateTab = uicheckbox(app.Tab);
            app.activateTab.Text = 'Activate experiment tab';
            app.activateTab.FontWeight = 'bold';
            app.activateTab.FontColor = [0.902 0.902 0.902];
            app.activateTab.Position = [18 514 159 15];

            % Create xDimEditFieldLabel
            app.xDimEditFieldLabel = uilabel(app.Tab);
            app.xDimEditFieldLabel.VerticalAlignment = 'top';
            app.xDimEditFieldLabel.FontColor = [1 1 1];
            app.xDimEditFieldLabel.Position = [18 315 35 15];
            app.xDimEditFieldLabel.Text = 'x Dim';

            % Create xDim_Tab
            app.xDim_Tab = uieditfield(app.Tab, 'numeric');
            app.xDim_Tab.FontColor = [1 1 1];
            app.xDim_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.xDim_Tab.Position = [69 311 55 22];
            app.xDim_Tab.Value = 2048;

            % Create EmissionLabel_2
            app.EmissionLabel_2 = uilabel(app.Tab);
            app.EmissionLabel_2.HorizontalAlignment = 'right';
            app.EmissionLabel_2.VerticalAlignment = 'top';
            app.EmissionLabel_2.FontColor = [1 1 1];
            app.EmissionLabel_2.Position = [229 405 54 15];
            app.EmissionLabel_2.Text = 'Emission';

            % Create ChB_Em_Tab
            app.ChB_Em_Tab = uieditfield(app.Tab, 'numeric');
            app.ChB_Em_Tab.FontColor = [1 1 1];
            app.ChB_Em_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.ChB_Em_Tab.Position = [298 401 41 22];
            app.ChB_Em_Tab.Value = 610;

            % Create EmissionLabel_3
            app.EmissionLabel_3 = uilabel(app.Tab);
            app.EmissionLabel_3.BackgroundColor = [0.1176 0.1294 0.1569];
            app.EmissionLabel_3.HorizontalAlignment = 'right';
            app.EmissionLabel_3.VerticalAlignment = 'top';
            app.EmissionLabel_3.FontColor = [1 1 1];
            app.EmissionLabel_3.Position = [229 376 54 15];
            app.EmissionLabel_3.Text = 'Emission';

            % Create ChC_Em_Tab
            app.ChC_Em_Tab = uieditfield(app.Tab, 'numeric');
            app.ChC_Em_Tab.FontColor = [1 1 1];
            app.ChC_Em_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.ChC_Em_Tab.Position = [298 372 41 22];

            % Create ImagepropertiesLabel
            app.ImagepropertiesLabel = uilabel(app.Tab);
            app.ImagepropertiesLabel.VerticalAlignment = 'top';
            app.ImagepropertiesLabel.FontWeight = 'bold';
            app.ImagepropertiesLabel.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel.Position = [18 336 103 15];
            app.ImagepropertiesLabel.Text = 'Image properties';

            % Create yDimEditFieldLabel
            app.yDimEditFieldLabel = uilabel(app.Tab);
            app.yDimEditFieldLabel.BackgroundColor = [0.1176 0.1294 0.1569];
            app.yDimEditFieldLabel.VerticalAlignment = 'top';
            app.yDimEditFieldLabel.FontColor = [1 1 1];
            app.yDimEditFieldLabel.Position = [18 283 36 15];
            app.yDimEditFieldLabel.Text = 'y Dim';

            % Create yDim_Tab
            app.yDim_Tab = uieditfield(app.Tab, 'numeric');
            app.yDim_Tab.FontColor = [1 1 1];
            app.yDim_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.yDim_Tab.Position = [69 280 55 22];
            app.yDim_Tab.Value = 2048;

            % Create zDimEditFieldLabel
            app.zDimEditFieldLabel = uilabel(app.Tab);
            app.zDimEditFieldLabel.VerticalAlignment = 'top';
            app.zDimEditFieldLabel.FontColor = [1 1 1];
            app.zDimEditFieldLabel.Position = [18 251 36 15];
            app.zDimEditFieldLabel.Text = 'z Dim';

            % Create zDim_Tab
            app.zDim_Tab = uieditfield(app.Tab, 'numeric');
            app.zDim_Tab.FontColor = [1 1 1];
            app.zDim_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.zDim_Tab.Position = [69 247 55 22];
            app.zDim_Tab.Value = 30;

            % Create includeTS_group_Tab
            app.includeTS_group_Tab = uibuttongroup(app.Tab);
            app.includeTS_group_Tab.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab.Title = 'Include Time Series';
            app.includeTS_group_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.includeTS_group_Tab.Position = [177 263 162 56];

            % Create includeTS_all_Tab
            app.includeTS_all_Tab = uiradiobutton(app.includeTS_group_Tab);
            app.includeTS_all_Tab.Text = 'All';
            app.includeTS_all_Tab.FontColor = [1 1 1];
            app.includeTS_all_Tab.Position = [11 10 35.109375 15];
            app.includeTS_all_Tab.Value = true;

            % Create includeTS_selected_Tab
            app.includeTS_selected_Tab = uiradiobutton(app.includeTS_group_Tab);
            app.includeTS_selected_Tab.Text = 'Selected';
            app.includeTS_selected_Tab.FontColor = [1 1 1];
            app.includeTS_selected_Tab.Position = [73 10 69.125 15];

            % Create ChBDropDownLabel
            app.ChBDropDownLabel = uilabel(app.Tab);
            app.ChBDropDownLabel.HorizontalAlignment = 'right';
            app.ChBDropDownLabel.VerticalAlignment = 'top';
            app.ChBDropDownLabel.FontColor = [1 1 1];
            app.ChBDropDownLabel.Position = [17 405 36 15];
            app.ChBDropDownLabel.Text = 'Ch. B';

            % Create ChB_Tab
            app.ChB_Tab = uidropdown(app.Tab);
            app.ChB_Tab.Items = {'Not selected', 'mCherry-Rab5', 'DY547-chol-siRNA', 'YFP-galectin-9'};
            app.ChB_Tab.Editable = 'on';
            app.ChB_Tab.FontColor = [1 1 1];
            app.ChB_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.ChB_Tab.Position = [68 401 148 22];
            app.ChB_Tab.Value = 'Not selected';

            % Create ChCDropDownLabel
            app.ChCDropDownLabel = uilabel(app.Tab);
            app.ChCDropDownLabel.HorizontalAlignment = 'right';
            app.ChCDropDownLabel.VerticalAlignment = 'top';
            app.ChCDropDownLabel.FontColor = [1 1 1];
            app.ChCDropDownLabel.Position = [17 376 36 15];
            app.ChCDropDownLabel.Text = 'Ch. C';

            % Create ChC_Tab
            app.ChC_Tab = uidropdown(app.Tab);
            app.ChC_Tab.Items = {'Not selected'};
            app.ChC_Tab.Editable = 'on';
            app.ChC_Tab.FontColor = [1 1 1];
            app.ChC_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.ChC_Tab.Position = [68 372 148 22];
            app.ChC_Tab.Value = 'Not selected';

            % Create Tab_2
            app.Tab_2 = uitab(app.TabGroup);
            app.Tab_2.Title = '2';
            app.Tab_2.BackgroundColor = [0.1216 0.1294 0.1608];

            % Create TimeSeriesEditFieldLabel_2
            app.TimeSeriesEditFieldLabel_2 = uilabel(app.Tab_2);
            app.TimeSeriesEditFieldLabel_2.HorizontalAlignment = 'right';
            app.TimeSeriesEditFieldLabel_2.VerticalAlignment = 'top';
            app.TimeSeriesEditFieldLabel_2.FontColor = [1 1 1];
            app.TimeSeriesEditFieldLabel_2.Position = [227 480 68 15];
            app.TimeSeriesEditFieldLabel_2.Text = 'Time Series';

            % Create TS_Tab_2
            app.TS_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.TS_Tab_2.FontColor = [1 1 1];
            app.TS_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_2.Position = [298 476 41 22];

            % Create ChADropDownLabel_2
            app.ChADropDownLabel_2 = uilabel(app.Tab_2);
            app.ChADropDownLabel_2.HorizontalAlignment = 'right';
            app.ChADropDownLabel_2.VerticalAlignment = 'top';
            app.ChADropDownLabel_2.FontColor = [1 1 1];
            app.ChADropDownLabel_2.Position = [18 436 35 15];
            app.ChADropDownLabel_2.Text = 'Ch. A';

            % Create ChA_Tab_2
            app.ChA_Tab_2 = uidropdown(app.Tab_2);
            app.ChA_Tab_2.Items = {'Not selected', 'mCherry-Rab5', 'DY547-chol-siRNA', 'YFP-galectin-9'};
            app.ChA_Tab_2.Editable = 'on';
            app.ChA_Tab_2.FontColor = [1 1 1];
            app.ChA_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_2.Position = [68 432 148 22];
            app.ChA_Tab_2.Value = 'Not selected';

            % Create EmissionLabel_4
            app.EmissionLabel_4 = uilabel(app.Tab_2);
            app.EmissionLabel_4.HorizontalAlignment = 'right';
            app.EmissionLabel_4.VerticalAlignment = 'top';
            app.EmissionLabel_4.FontColor = [1 1 1];
            app.EmissionLabel_4.Position = [229 436 54 15];
            app.EmissionLabel_4.Text = 'Emission';

            % Create ChA_Em_Tab_2
            app.ChA_Em_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.ChA_Em_Tab_2.FontColor = [1 1 1];
            app.ChA_Em_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_2.Position = [298 432 41 22];
            app.ChA_Em_Tab_2.Value = 509;

            % Create ExperimentEditField_2Label_2
            app.ExperimentEditField_2Label_2 = uilabel(app.Tab_2);
            app.ExperimentEditField_2Label_2.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_2.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_2.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_2.Position = [12 480 67 15];
            app.ExperimentEditField_2Label_2.Text = 'Experiment';

            % Create experimentID_Tab_2
            app.experimentID_Tab_2 = uieditfield(app.Tab_2, 'text');
            app.experimentID_Tab_2.FontColor = [1 1 1];
            app.experimentID_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_2.Position = [94 476 122 22];

            % Create activateTab_2
            app.activateTab_2 = uicheckbox(app.Tab_2);
            app.activateTab_2.Text = 'Activate experiment tab';
            app.activateTab_2.FontWeight = 'bold';
            app.activateTab_2.FontColor = [0.902 0.902 0.902];
            app.activateTab_2.Position = [18 514 159 15];

            % Create xDimEditFieldLabel_2
            app.xDimEditFieldLabel_2 = uilabel(app.Tab_2);
            app.xDimEditFieldLabel_2.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_2.FontColor = [1 1 1];
            app.xDimEditFieldLabel_2.Position = [18 315 35 15];
            app.xDimEditFieldLabel_2.Text = 'x Dim';

            % Create xDim_Tab_2
            app.xDim_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.xDim_Tab_2.FontColor = [1 1 1];
            app.xDim_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_2.Position = [69 311 55 22];
            app.xDim_Tab_2.Value = 2048;

            % Create EmissionLabel_5
            app.EmissionLabel_5 = uilabel(app.Tab_2);
            app.EmissionLabel_5.HorizontalAlignment = 'right';
            app.EmissionLabel_5.VerticalAlignment = 'top';
            app.EmissionLabel_5.FontColor = [1 1 1];
            app.EmissionLabel_5.Position = [229 405 54 15];
            app.EmissionLabel_5.Text = 'Emission';

            % Create ChB_Em_Tab_2
            app.ChB_Em_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.ChB_Em_Tab_2.FontColor = [1 1 1];
            app.ChB_Em_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_2.Position = [298 401 41 22];
            app.ChB_Em_Tab_2.Value = 610;

            % Create EmissionLabel_6
            app.EmissionLabel_6 = uilabel(app.Tab_2);
            app.EmissionLabel_6.HorizontalAlignment = 'right';
            app.EmissionLabel_6.VerticalAlignment = 'top';
            app.EmissionLabel_6.FontColor = [1 1 1];
            app.EmissionLabel_6.Position = [229 376 54 15];
            app.EmissionLabel_6.Text = 'Emission';

            % Create ChC_Em_Tab_2
            app.ChC_Em_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.ChC_Em_Tab_2.FontColor = [1 1 1];
            app.ChC_Em_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_2.Position = [298 372 41 22];

            % Create ImagepropertiesLabel_2
            app.ImagepropertiesLabel_2 = uilabel(app.Tab_2);
            app.ImagepropertiesLabel_2.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_2.FontWeight = 'bold';
            app.ImagepropertiesLabel_2.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_2.Position = [18 336 103 15];
            app.ImagepropertiesLabel_2.Text = 'Image properties';

            % Create yDimEditFieldLabel_2
            app.yDimEditFieldLabel_2 = uilabel(app.Tab_2);
            app.yDimEditFieldLabel_2.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_2.FontColor = [1 1 1];
            app.yDimEditFieldLabel_2.Position = [18 283 36 15];
            app.yDimEditFieldLabel_2.Text = 'y Dim';

            % Create yDim_Tab_2
            app.yDim_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.yDim_Tab_2.FontColor = [1 1 1];
            app.yDim_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_2.Position = [69 280 55 22];
            app.yDim_Tab_2.Value = 2048;

            % Create zDimEditFieldLabel_2
            app.zDimEditFieldLabel_2 = uilabel(app.Tab_2);
            app.zDimEditFieldLabel_2.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_2.FontColor = [1 1 1];
            app.zDimEditFieldLabel_2.Position = [18 251 36 15];
            app.zDimEditFieldLabel_2.Text = 'z Dim';

            % Create zDim_Tab_2
            app.zDim_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.zDim_Tab_2.FontColor = [1 1 1];
            app.zDim_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_2.Position = [69 247 55 22];
            app.zDim_Tab_2.Value = 30;

            % Create includeTS_group_Tab_2
            app.includeTS_group_Tab_2 = uibuttongroup(app.Tab_2);
            app.includeTS_group_Tab_2.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_2.Title = 'Include Time Series';
            app.includeTS_group_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_2.Position = [177 263 162 56];

            % Create includeTS_all_Tab_2
            app.includeTS_all_Tab_2 = uiradiobutton(app.includeTS_group_Tab_2);
            app.includeTS_all_Tab_2.Text = 'All';
            app.includeTS_all_Tab_2.FontColor = [1 1 1];
            app.includeTS_all_Tab_2.Position = [11 10 35.109375 15];
            app.includeTS_all_Tab_2.Value = true;

            % Create includeTS_selected_Tab_2
            app.includeTS_selected_Tab_2 = uiradiobutton(app.includeTS_group_Tab_2);
            app.includeTS_selected_Tab_2.Text = 'Selected';
            app.includeTS_selected_Tab_2.FontColor = [1 1 1];
            app.includeTS_selected_Tab_2.Position = [73 10 69.125 15];

            % Create ChBDropDownLabel_2
            app.ChBDropDownLabel_2 = uilabel(app.Tab_2);
            app.ChBDropDownLabel_2.HorizontalAlignment = 'right';
            app.ChBDropDownLabel_2.VerticalAlignment = 'top';
            app.ChBDropDownLabel_2.FontColor = [1 1 1];
            app.ChBDropDownLabel_2.Position = [17 405 36 15];
            app.ChBDropDownLabel_2.Text = 'Ch. B';

            % Create ChB_Tab_2
            app.ChB_Tab_2 = uidropdown(app.Tab_2);
            app.ChB_Tab_2.Items = {'Not selected', 'mCherry-Rab5', 'DY547-chol-siRNA', 'Option 1'};
            app.ChB_Tab_2.Editable = 'on';
            app.ChB_Tab_2.FontColor = [1 1 1];
            app.ChB_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_2.Position = [68 401 148 22];
            app.ChB_Tab_2.Value = 'Not selected';

            % Create ChCDropDownLabel_2
            app.ChCDropDownLabel_2 = uilabel(app.Tab_2);
            app.ChCDropDownLabel_2.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_2.VerticalAlignment = 'top';
            app.ChCDropDownLabel_2.FontColor = [1 1 1];
            app.ChCDropDownLabel_2.Position = [17 376 36 15];
            app.ChCDropDownLabel_2.Text = 'Ch. C';

            % Create ChC_Tab_2
            app.ChC_Tab_2 = uidropdown(app.Tab_2);
            app.ChC_Tab_2.Items = {'AF647-EpCAM'};
            app.ChC_Tab_2.Editable = 'on';
            app.ChC_Tab_2.FontColor = [1 1 1];
            app.ChC_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_2.Position = [68 372 148 22];
            app.ChC_Tab_2.Value = 'AF647-EpCAM';

            % Create Tab_3
            app.Tab_3 = uitab(app.TabGroup);
            app.Tab_3.Title = '3';
            app.Tab_3.BackgroundColor = [0.1216 0.1294 0.1608];

            % Create TimeSeriesEditFieldLabel_3
            app.TimeSeriesEditFieldLabel_3 = uilabel(app.Tab_3);
            app.TimeSeriesEditFieldLabel_3.HorizontalAlignment = 'right';
            app.TimeSeriesEditFieldLabel_3.VerticalAlignment = 'top';
            app.TimeSeriesEditFieldLabel_3.FontColor = [1 1 1];
            app.TimeSeriesEditFieldLabel_3.Position = [227 480 68 15];
            app.TimeSeriesEditFieldLabel_3.Text = 'Time Series';

            % Create TS_Tab_3
            app.TS_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.TS_Tab_3.FontColor = [1 1 1];
            app.TS_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_3.Position = [298 476 41 22];

            % Create ChADropDownLabel_3
            app.ChADropDownLabel_3 = uilabel(app.Tab_3);
            app.ChADropDownLabel_3.HorizontalAlignment = 'right';
            app.ChADropDownLabel_3.VerticalAlignment = 'top';
            app.ChADropDownLabel_3.FontColor = [1 1 1];
            app.ChADropDownLabel_3.Position = [18 436 35 15];
            app.ChADropDownLabel_3.Text = 'Ch. A';

            % Create ChA_Tab_3
            app.ChA_Tab_3 = uidropdown(app.Tab_3);
            app.ChA_Tab_3.Items = {'Not selected', 'mCherry-Rab5', 'DY547-chol-siRNA', 'YFP-galectin-9'};
            app.ChA_Tab_3.Editable = 'on';
            app.ChA_Tab_3.FontColor = [1 1 1];
            app.ChA_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_3.Position = [68 432 148 22];
            app.ChA_Tab_3.Value = 'Not selected';

            % Create EmissionLabel_7
            app.EmissionLabel_7 = uilabel(app.Tab_3);
            app.EmissionLabel_7.HorizontalAlignment = 'right';
            app.EmissionLabel_7.VerticalAlignment = 'top';
            app.EmissionLabel_7.FontColor = [1 1 1];
            app.EmissionLabel_7.Position = [229 436 54 15];
            app.EmissionLabel_7.Text = 'Emission';

            % Create ChA_Em_Tab_3
            app.ChA_Em_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.ChA_Em_Tab_3.FontColor = [1 1 1];
            app.ChA_Em_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_3.Position = [298 432 41 22];
            app.ChA_Em_Tab_3.Value = 509;

            % Create ExperimentEditField_2Label_3
            app.ExperimentEditField_2Label_3 = uilabel(app.Tab_3);
            app.ExperimentEditField_2Label_3.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_3.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_3.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_3.Position = [12 480 67 15];
            app.ExperimentEditField_2Label_3.Text = 'Experiment';

            % Create experimentID_Tab_3
            app.experimentID_Tab_3 = uieditfield(app.Tab_3, 'text');
            app.experimentID_Tab_3.FontColor = [1 1 1];
            app.experimentID_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_3.Position = [94 476 122 22];

            % Create activateTab_3
            app.activateTab_3 = uicheckbox(app.Tab_3);
            app.activateTab_3.Text = 'Activate experiment tab';
            app.activateTab_3.FontWeight = 'bold';
            app.activateTab_3.FontColor = [0.902 0.902 0.902];
            app.activateTab_3.Position = [18 514 159 15];

            % Create xDimEditFieldLabel_3
            app.xDimEditFieldLabel_3 = uilabel(app.Tab_3);
            app.xDimEditFieldLabel_3.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_3.FontColor = [1 1 1];
            app.xDimEditFieldLabel_3.Position = [18 315 35 15];
            app.xDimEditFieldLabel_3.Text = 'x Dim';

            % Create xDim_Tab_3
            app.xDim_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.xDim_Tab_3.FontColor = [1 1 1];
            app.xDim_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_3.Position = [69 311 55 22];
            app.xDim_Tab_3.Value = 2048;

            % Create EmissionLabel_8
            app.EmissionLabel_8 = uilabel(app.Tab_3);
            app.EmissionLabel_8.HorizontalAlignment = 'right';
            app.EmissionLabel_8.VerticalAlignment = 'top';
            app.EmissionLabel_8.FontColor = [1 1 1];
            app.EmissionLabel_8.Position = [229 405 54 15];
            app.EmissionLabel_8.Text = 'Emission';

            % Create ChB_Em_Tab_3
            app.ChB_Em_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.ChB_Em_Tab_3.FontColor = [1 1 1];
            app.ChB_Em_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_3.Position = [298 401 41 22];
            app.ChB_Em_Tab_3.Value = 610;

            % Create EmissionLabel_9
            app.EmissionLabel_9 = uilabel(app.Tab_3);
            app.EmissionLabel_9.HorizontalAlignment = 'right';
            app.EmissionLabel_9.VerticalAlignment = 'top';
            app.EmissionLabel_9.FontColor = [1 1 1];
            app.EmissionLabel_9.Position = [229 376 54 15];
            app.EmissionLabel_9.Text = 'Emission';

            % Create ChC_Em_Tab_3
            app.ChC_Em_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.ChC_Em_Tab_3.FontColor = [1 1 1];
            app.ChC_Em_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_3.Position = [298 372 41 22];

            % Create ImagepropertiesLabel_3
            app.ImagepropertiesLabel_3 = uilabel(app.Tab_3);
            app.ImagepropertiesLabel_3.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_3.FontWeight = 'bold';
            app.ImagepropertiesLabel_3.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_3.Position = [18 336 103 15];
            app.ImagepropertiesLabel_3.Text = 'Image properties';

            % Create yDimEditFieldLabel_3
            app.yDimEditFieldLabel_3 = uilabel(app.Tab_3);
            app.yDimEditFieldLabel_3.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_3.FontColor = [1 1 1];
            app.yDimEditFieldLabel_3.Position = [18 283 36 15];
            app.yDimEditFieldLabel_3.Text = 'y Dim';

            % Create yDim_Tab_3
            app.yDim_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.yDim_Tab_3.FontColor = [1 1 1];
            app.yDim_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_3.Position = [69 280 55 22];
            app.yDim_Tab_3.Value = 2048;

            % Create zDimEditFieldLabel_3
            app.zDimEditFieldLabel_3 = uilabel(app.Tab_3);
            app.zDimEditFieldLabel_3.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_3.FontColor = [1 1 1];
            app.zDimEditFieldLabel_3.Position = [18 251 36 15];
            app.zDimEditFieldLabel_3.Text = 'z Dim';

            % Create zDim_Tab_3
            app.zDim_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.zDim_Tab_3.FontColor = [1 1 1];
            app.zDim_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_3.Position = [69 247 55 22];
            app.zDim_Tab_3.Value = 30;

            % Create includeTS_group_Tab_3
            app.includeTS_group_Tab_3 = uibuttongroup(app.Tab_3);
            app.includeTS_group_Tab_3.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_3.Title = 'Include Time Series';
            app.includeTS_group_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_3.Position = [177 263 162 56];

            % Create includeTS_all_Tab_3
            app.includeTS_all_Tab_3 = uiradiobutton(app.includeTS_group_Tab_3);
            app.includeTS_all_Tab_3.Text = 'All';
            app.includeTS_all_Tab_3.FontColor = [1 1 1];
            app.includeTS_all_Tab_3.Position = [11 10 35.109375 15];
            app.includeTS_all_Tab_3.Value = true;

            % Create includeTS_selected_Tab_3
            app.includeTS_selected_Tab_3 = uiradiobutton(app.includeTS_group_Tab_3);
            app.includeTS_selected_Tab_3.Text = 'Selected';
            app.includeTS_selected_Tab_3.FontColor = [1 1 1];
            app.includeTS_selected_Tab_3.Position = [73 10 69.125 15];

            % Create ChBDropDownLabel_3
            app.ChBDropDownLabel_3 = uilabel(app.Tab_3);
            app.ChBDropDownLabel_3.HorizontalAlignment = 'right';
            app.ChBDropDownLabel_3.VerticalAlignment = 'top';
            app.ChBDropDownLabel_3.FontColor = [1 1 1];
            app.ChBDropDownLabel_3.Position = [17 405 36 15];
            app.ChBDropDownLabel_3.Text = 'Ch. B';

            % Create ChB_Tab_3
            app.ChB_Tab_3 = uidropdown(app.Tab_3);
            app.ChB_Tab_3.Items = {'Not selected', 'mCherry-Rab5', 'DY547-chol-siRNA', 'Option 1'};
            app.ChB_Tab_3.Editable = 'on';
            app.ChB_Tab_3.FontColor = [1 1 1];
            app.ChB_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_3.Position = [68 401 148 22];
            app.ChB_Tab_3.Value = 'Not selected';

            % Create ChCDropDownLabel_3
            app.ChCDropDownLabel_3 = uilabel(app.Tab_3);
            app.ChCDropDownLabel_3.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_3.VerticalAlignment = 'top';
            app.ChCDropDownLabel_3.FontColor = [1 1 1];
            app.ChCDropDownLabel_3.Position = [17 376 36 15];
            app.ChCDropDownLabel_3.Text = 'Ch. C';

            % Create ChC_Tab_3
            app.ChC_Tab_3 = uidropdown(app.Tab_3);
            app.ChC_Tab_3.Items = {'Not selected'};
            app.ChC_Tab_3.Editable = 'on';
            app.ChC_Tab_3.FontColor = [1 1 1];
            app.ChC_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_3.Position = [68 372 148 22];
            app.ChC_Tab_3.Value = 'Not selected';

            % Create Tab_4
            app.Tab_4 = uitab(app.TabGroup);
            app.Tab_4.Title = '4';
            app.Tab_4.BackgroundColor = [0.1216 0.1294 0.1608];

            % Create TimeSeriesEditFieldLabel_4
            app.TimeSeriesEditFieldLabel_4 = uilabel(app.Tab_4);
            app.TimeSeriesEditFieldLabel_4.HorizontalAlignment = 'right';
            app.TimeSeriesEditFieldLabel_4.VerticalAlignment = 'top';
            app.TimeSeriesEditFieldLabel_4.FontColor = [1 1 1];
            app.TimeSeriesEditFieldLabel_4.Position = [227 480 68 15];
            app.TimeSeriesEditFieldLabel_4.Text = 'Time Series';

            % Create TS_Tab_4
            app.TS_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.TS_Tab_4.FontColor = [1 1 1];
            app.TS_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_4.Position = [298 476 41 22];

            % Create ChADropDownLabel_4
            app.ChADropDownLabel_4 = uilabel(app.Tab_4);
            app.ChADropDownLabel_4.HorizontalAlignment = 'right';
            app.ChADropDownLabel_4.VerticalAlignment = 'top';
            app.ChADropDownLabel_4.FontColor = [1 1 1];
            app.ChADropDownLabel_4.Position = [18 436 35 15];
            app.ChADropDownLabel_4.Text = 'Ch. A';

            % Create ChA_Tab_4
            app.ChA_Tab_4 = uidropdown(app.Tab_4);
            app.ChA_Tab_4.Items = {'Not selected', 'mCherry-Rab5', 'DY547-chol-siRNA', 'Option 1'};
            app.ChA_Tab_4.Editable = 'on';
            app.ChA_Tab_4.FontColor = [1 1 1];
            app.ChA_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_4.Position = [68 432 148 22];
            app.ChA_Tab_4.Value = 'Not selected';

            % Create EmissionLabel_10
            app.EmissionLabel_10 = uilabel(app.Tab_4);
            app.EmissionLabel_10.HorizontalAlignment = 'right';
            app.EmissionLabel_10.VerticalAlignment = 'top';
            app.EmissionLabel_10.FontColor = [1 1 1];
            app.EmissionLabel_10.Position = [229 436 54 15];
            app.EmissionLabel_10.Text = 'Emission';

            % Create ChA_Em_Tab_4
            app.ChA_Em_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.ChA_Em_Tab_4.FontColor = [1 1 1];
            app.ChA_Em_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_4.Position = [298 432 41 22];
            app.ChA_Em_Tab_4.Value = 509;

            % Create ExperimentEditField_2Label_4
            app.ExperimentEditField_2Label_4 = uilabel(app.Tab_4);
            app.ExperimentEditField_2Label_4.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_4.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_4.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_4.Position = [12 480 67 15];
            app.ExperimentEditField_2Label_4.Text = 'Experiment';

            % Create experimentID_Tab_4
            app.experimentID_Tab_4 = uieditfield(app.Tab_4, 'text');
            app.experimentID_Tab_4.FontColor = [1 1 1];
            app.experimentID_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_4.Position = [94 476 122 22];

            % Create activateTab_4
            app.activateTab_4 = uicheckbox(app.Tab_4);
            app.activateTab_4.Text = 'Activate experiment tab';
            app.activateTab_4.FontWeight = 'bold';
            app.activateTab_4.FontColor = [0.902 0.902 0.902];
            app.activateTab_4.Position = [18 514 159 15];

            % Create xDimEditFieldLabel_4
            app.xDimEditFieldLabel_4 = uilabel(app.Tab_4);
            app.xDimEditFieldLabel_4.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_4.FontColor = [1 1 1];
            app.xDimEditFieldLabel_4.Position = [18 315 35 15];
            app.xDimEditFieldLabel_4.Text = 'x Dim';

            % Create xDim_Tab_4
            app.xDim_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.xDim_Tab_4.FontColor = [1 1 1];
            app.xDim_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_4.Position = [69 311 55 22];
            app.xDim_Tab_4.Value = 2048;

            % Create EmissionLabel_11
            app.EmissionLabel_11 = uilabel(app.Tab_4);
            app.EmissionLabel_11.HorizontalAlignment = 'right';
            app.EmissionLabel_11.VerticalAlignment = 'top';
            app.EmissionLabel_11.FontColor = [1 1 1];
            app.EmissionLabel_11.Position = [229 405 54 15];
            app.EmissionLabel_11.Text = 'Emission';

            % Create ChB_Em_Tab_4
            app.ChB_Em_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.ChB_Em_Tab_4.FontColor = [1 1 1];
            app.ChB_Em_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_4.Position = [298 401 41 22];
            app.ChB_Em_Tab_4.Value = 610;

            % Create EmissionLabel_12
            app.EmissionLabel_12 = uilabel(app.Tab_4);
            app.EmissionLabel_12.HorizontalAlignment = 'right';
            app.EmissionLabel_12.VerticalAlignment = 'top';
            app.EmissionLabel_12.FontColor = [1 1 1];
            app.EmissionLabel_12.Position = [229 376 54 15];
            app.EmissionLabel_12.Text = 'Emission';

            % Create ChC_Em_Tab_4
            app.ChC_Em_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.ChC_Em_Tab_4.FontColor = [1 1 1];
            app.ChC_Em_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_4.Position = [298 372 41 22];

            % Create ImagepropertiesLabel_4
            app.ImagepropertiesLabel_4 = uilabel(app.Tab_4);
            app.ImagepropertiesLabel_4.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_4.FontWeight = 'bold';
            app.ImagepropertiesLabel_4.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_4.Position = [18 336 103 15];
            app.ImagepropertiesLabel_4.Text = 'Image properties';

            % Create yDimEditFieldLabel_4
            app.yDimEditFieldLabel_4 = uilabel(app.Tab_4);
            app.yDimEditFieldLabel_4.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_4.FontColor = [1 1 1];
            app.yDimEditFieldLabel_4.Position = [18 283 36 15];
            app.yDimEditFieldLabel_4.Text = 'y Dim';

            % Create yDim_Tab_4
            app.yDim_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.yDim_Tab_4.FontColor = [1 1 1];
            app.yDim_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_4.Position = [69 280 55 22];
            app.yDim_Tab_4.Value = 2048;

            % Create zDimEditFieldLabel_4
            app.zDimEditFieldLabel_4 = uilabel(app.Tab_4);
            app.zDimEditFieldLabel_4.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_4.FontColor = [1 1 1];
            app.zDimEditFieldLabel_4.Position = [18 251 36 15];
            app.zDimEditFieldLabel_4.Text = 'z Dim';

            % Create zDim_Tab_4
            app.zDim_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.zDim_Tab_4.FontColor = [1 1 1];
            app.zDim_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_4.Position = [69 247 55 22];
            app.zDim_Tab_4.Value = 30;

            % Create includeTS_group_Tab_4
            app.includeTS_group_Tab_4 = uibuttongroup(app.Tab_4);
            app.includeTS_group_Tab_4.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_4.Title = 'Include Time Series';
            app.includeTS_group_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_4.Position = [177 263 162 56];

            % Create includeTS_all_Tab_4
            app.includeTS_all_Tab_4 = uiradiobutton(app.includeTS_group_Tab_4);
            app.includeTS_all_Tab_4.Text = 'All';
            app.includeTS_all_Tab_4.FontColor = [1 1 1];
            app.includeTS_all_Tab_4.Position = [11 10 35.109375 15];
            app.includeTS_all_Tab_4.Value = true;

            % Create includeTS_selected_Tab_4
            app.includeTS_selected_Tab_4 = uiradiobutton(app.includeTS_group_Tab_4);
            app.includeTS_selected_Tab_4.Text = 'Selected';
            app.includeTS_selected_Tab_4.FontColor = [1 1 1];
            app.includeTS_selected_Tab_4.Position = [73 10 69.125 15];

            % Create ChBDropDownLabel_4
            app.ChBDropDownLabel_4 = uilabel(app.Tab_4);
            app.ChBDropDownLabel_4.HorizontalAlignment = 'right';
            app.ChBDropDownLabel_4.VerticalAlignment = 'top';
            app.ChBDropDownLabel_4.FontColor = [1 1 1];
            app.ChBDropDownLabel_4.Position = [17 405 36 15];
            app.ChBDropDownLabel_4.Text = 'Ch. B';

            % Create ChB_Tab_4
            app.ChB_Tab_4 = uidropdown(app.Tab_4);
            app.ChB_Tab_4.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChB_Tab_4.Editable = 'on';
            app.ChB_Tab_4.FontColor = [1 1 1];
            app.ChB_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_4.Position = [68 401 148 22];
            app.ChB_Tab_4.Value = 'Not selected';

            % Create ChCDropDownLabel_4
            app.ChCDropDownLabel_4 = uilabel(app.Tab_4);
            app.ChCDropDownLabel_4.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_4.VerticalAlignment = 'top';
            app.ChCDropDownLabel_4.FontColor = [1 1 1];
            app.ChCDropDownLabel_4.Position = [17 376 36 15];
            app.ChCDropDownLabel_4.Text = 'Ch. C';

            % Create ChC_Tab_4
            app.ChC_Tab_4 = uidropdown(app.Tab_4);
            app.ChC_Tab_4.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChC_Tab_4.Editable = 'on';
            app.ChC_Tab_4.FontColor = [1 1 1];
            app.ChC_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_4.Position = [68 372 148 22];
            app.ChC_Tab_4.Value = 'Not selected';

            % Create Tab_5
            app.Tab_5 = uitab(app.TabGroup);
            app.Tab_5.Title = '5';
            app.Tab_5.BackgroundColor = [0.1216 0.1294 0.1608];

            % Create TimeSeriesEditFieldLabel_5
            app.TimeSeriesEditFieldLabel_5 = uilabel(app.Tab_5);
            app.TimeSeriesEditFieldLabel_5.HorizontalAlignment = 'right';
            app.TimeSeriesEditFieldLabel_5.VerticalAlignment = 'top';
            app.TimeSeriesEditFieldLabel_5.FontColor = [1 1 1];
            app.TimeSeriesEditFieldLabel_5.Position = [227 480 68 15];
            app.TimeSeriesEditFieldLabel_5.Text = 'Time Series';

            % Create TS_Tab_5
            app.TS_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.TS_Tab_5.FontColor = [1 1 1];
            app.TS_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_5.Position = [298 476 41 22];

            % Create ChADropDownLabel_5
            app.ChADropDownLabel_5 = uilabel(app.Tab_5);
            app.ChADropDownLabel_5.HorizontalAlignment = 'right';
            app.ChADropDownLabel_5.VerticalAlignment = 'top';
            app.ChADropDownLabel_5.FontColor = [1 1 1];
            app.ChADropDownLabel_5.Position = [18 436 35 15];
            app.ChADropDownLabel_5.Text = 'Ch. A';

            % Create ChA_Tab_5
            app.ChA_Tab_5 = uidropdown(app.Tab_5);
            app.ChA_Tab_5.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChA_Tab_5.Editable = 'on';
            app.ChA_Tab_5.FontColor = [1 1 1];
            app.ChA_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_5.Position = [68 432 148 22];
            app.ChA_Tab_5.Value = 'YFP-Galectin9';

            % Create EmissionLabel_13
            app.EmissionLabel_13 = uilabel(app.Tab_5);
            app.EmissionLabel_13.HorizontalAlignment = 'right';
            app.EmissionLabel_13.VerticalAlignment = 'top';
            app.EmissionLabel_13.FontColor = [1 1 1];
            app.EmissionLabel_13.Position = [229 436 54 15];
            app.EmissionLabel_13.Text = 'Emission';

            % Create ChA_Em_Tab_5
            app.ChA_Em_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.ChA_Em_Tab_5.FontColor = [1 1 1];
            app.ChA_Em_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_5.Position = [298 432 41 22];
            app.ChA_Em_Tab_5.Value = 509;

            % Create ExperimentEditField_2Label_5
            app.ExperimentEditField_2Label_5 = uilabel(app.Tab_5);
            app.ExperimentEditField_2Label_5.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_5.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_5.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_5.Position = [12 480 67 15];
            app.ExperimentEditField_2Label_5.Text = 'Experiment';

            % Create experimentID_Tab_5
            app.experimentID_Tab_5 = uieditfield(app.Tab_5, 'text');
            app.experimentID_Tab_5.FontColor = [1 1 1];
            app.experimentID_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_5.Position = [94 476 122 22];

            % Create activateTab_5
            app.activateTab_5 = uicheckbox(app.Tab_5);
            app.activateTab_5.Text = 'Activate experiment tab';
            app.activateTab_5.FontWeight = 'bold';
            app.activateTab_5.FontColor = [0.902 0.902 0.902];
            app.activateTab_5.Position = [18 514 159 15];

            % Create xDimEditFieldLabel_5
            app.xDimEditFieldLabel_5 = uilabel(app.Tab_5);
            app.xDimEditFieldLabel_5.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_5.FontColor = [1 1 1];
            app.xDimEditFieldLabel_5.Position = [18 315 35 15];
            app.xDimEditFieldLabel_5.Text = 'x Dim';

            % Create xDim_Tab_5
            app.xDim_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.xDim_Tab_5.FontColor = [1 1 1];
            app.xDim_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_5.Position = [69 311 55 22];
            app.xDim_Tab_5.Value = 2048;

            % Create EmissionLabel_14
            app.EmissionLabel_14 = uilabel(app.Tab_5);
            app.EmissionLabel_14.HorizontalAlignment = 'right';
            app.EmissionLabel_14.VerticalAlignment = 'top';
            app.EmissionLabel_14.FontColor = [1 1 1];
            app.EmissionLabel_14.Position = [229 405 54 15];
            app.EmissionLabel_14.Text = 'Emission';

            % Create ChB_Em_Tab_5
            app.ChB_Em_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.ChB_Em_Tab_5.FontColor = [1 1 1];
            app.ChB_Em_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_5.Position = [298 401 41 22];
            app.ChB_Em_Tab_5.Value = 610;

            % Create EmissionLabel_15
            app.EmissionLabel_15 = uilabel(app.Tab_5);
            app.EmissionLabel_15.HorizontalAlignment = 'right';
            app.EmissionLabel_15.VerticalAlignment = 'top';
            app.EmissionLabel_15.FontColor = [1 1 1];
            app.EmissionLabel_15.Position = [229 376 54 15];
            app.EmissionLabel_15.Text = 'Emission';

            % Create ChC_Em_Tab_5
            app.ChC_Em_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.ChC_Em_Tab_5.FontColor = [1 1 1];
            app.ChC_Em_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_5.Position = [298 372 41 22];

            % Create ImagepropertiesLabel_5
            app.ImagepropertiesLabel_5 = uilabel(app.Tab_5);
            app.ImagepropertiesLabel_5.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_5.FontWeight = 'bold';
            app.ImagepropertiesLabel_5.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_5.Position = [18 336 103 15];
            app.ImagepropertiesLabel_5.Text = 'Image properties';

            % Create yDimEditFieldLabel_5
            app.yDimEditFieldLabel_5 = uilabel(app.Tab_5);
            app.yDimEditFieldLabel_5.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_5.FontColor = [1 1 1];
            app.yDimEditFieldLabel_5.Position = [18 283 36 15];
            app.yDimEditFieldLabel_5.Text = 'y Dim';

            % Create yDim_Tab_5
            app.yDim_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.yDim_Tab_5.FontColor = [1 1 1];
            app.yDim_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_5.Position = [69 280 55 22];
            app.yDim_Tab_5.Value = 2048;

            % Create zDimEditFieldLabel_5
            app.zDimEditFieldLabel_5 = uilabel(app.Tab_5);
            app.zDimEditFieldLabel_5.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_5.FontColor = [1 1 1];
            app.zDimEditFieldLabel_5.Position = [18 251 36 15];
            app.zDimEditFieldLabel_5.Text = 'z Dim';

            % Create zDim_Tab_5
            app.zDim_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.zDim_Tab_5.FontColor = [1 1 1];
            app.zDim_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_5.Position = [69 247 55 22];
            app.zDim_Tab_5.Value = 30;

            % Create includeTS_group_Tab_5
            app.includeTS_group_Tab_5 = uibuttongroup(app.Tab_5);
            app.includeTS_group_Tab_5.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_5.Title = 'Include Time Series';
            app.includeTS_group_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_5.Position = [177 263 162 56];

            % Create includeTS_all_Tab_5
            app.includeTS_all_Tab_5 = uiradiobutton(app.includeTS_group_Tab_5);
            app.includeTS_all_Tab_5.Text = 'All';
            app.includeTS_all_Tab_5.FontColor = [1 1 1];
            app.includeTS_all_Tab_5.Position = [11 10 35.109375 15];
            app.includeTS_all_Tab_5.Value = true;

            % Create includeTS_selected_Tab_5
            app.includeTS_selected_Tab_5 = uiradiobutton(app.includeTS_group_Tab_5);
            app.includeTS_selected_Tab_5.Text = 'Selected';
            app.includeTS_selected_Tab_5.FontColor = [1 1 1];
            app.includeTS_selected_Tab_5.Position = [73 10 69.125 15];

            % Create ChBDropDownLabel_5
            app.ChBDropDownLabel_5 = uilabel(app.Tab_5);
            app.ChBDropDownLabel_5.HorizontalAlignment = 'right';
            app.ChBDropDownLabel_5.VerticalAlignment = 'top';
            app.ChBDropDownLabel_5.FontColor = [1 1 1];
            app.ChBDropDownLabel_5.Position = [17 405 36 15];
            app.ChBDropDownLabel_5.Text = 'Ch. B';

            % Create ChB_Tab_5
            app.ChB_Tab_5 = uidropdown(app.Tab_5);
            app.ChB_Tab_5.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChB_Tab_5.Editable = 'on';
            app.ChB_Tab_5.FontColor = [1 1 1];
            app.ChB_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_5.Position = [68 401 148 22];
            app.ChB_Tab_5.Value = 'Not selected';

            % Create ChCDropDownLabel_5
            app.ChCDropDownLabel_5 = uilabel(app.Tab_5);
            app.ChCDropDownLabel_5.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_5.VerticalAlignment = 'top';
            app.ChCDropDownLabel_5.FontColor = [1 1 1];
            app.ChCDropDownLabel_5.Position = [17 376 36 15];
            app.ChCDropDownLabel_5.Text = 'Ch. C';

            % Create ChC_Tab_5
            app.ChC_Tab_5 = uidropdown(app.Tab_5);
            app.ChC_Tab_5.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChC_Tab_5.Editable = 'on';
            app.ChC_Tab_5.FontColor = [1 1 1];
            app.ChC_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_5.Position = [68 372 148 22];
            app.ChC_Tab_5.Value = 'Not selected';

            % Create Tab_6
            app.Tab_6 = uitab(app.TabGroup);
            app.Tab_6.Title = '6';
            app.Tab_6.BackgroundColor = [0.1216 0.1294 0.1608];

            % Create TimeSeriesEditFieldLabel_6
            app.TimeSeriesEditFieldLabel_6 = uilabel(app.Tab_6);
            app.TimeSeriesEditFieldLabel_6.HorizontalAlignment = 'right';
            app.TimeSeriesEditFieldLabel_6.VerticalAlignment = 'top';
            app.TimeSeriesEditFieldLabel_6.FontColor = [1 1 1];
            app.TimeSeriesEditFieldLabel_6.Position = [227 480 68 15];
            app.TimeSeriesEditFieldLabel_6.Text = 'Time Series';

            % Create TS_Tab_6
            app.TS_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.TS_Tab_6.FontColor = [1 1 1];
            app.TS_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_6.Position = [298 476 41 22];

            % Create ChADropDownLabel_6
            app.ChADropDownLabel_6 = uilabel(app.Tab_6);
            app.ChADropDownLabel_6.HorizontalAlignment = 'right';
            app.ChADropDownLabel_6.VerticalAlignment = 'top';
            app.ChADropDownLabel_6.FontColor = [1 1 1];
            app.ChADropDownLabel_6.Position = [18 436 35 15];
            app.ChADropDownLabel_6.Text = 'Ch. A';

            % Create ChA_Tab_6
            app.ChA_Tab_6 = uidropdown(app.Tab_6);
            app.ChA_Tab_6.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChA_Tab_6.Editable = 'on';
            app.ChA_Tab_6.FontColor = [1 1 1];
            app.ChA_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_6.Position = [68 432 148 22];
            app.ChA_Tab_6.Value = 'YFP-Galectin9';

            % Create EmissionLabel_16
            app.EmissionLabel_16 = uilabel(app.Tab_6);
            app.EmissionLabel_16.HorizontalAlignment = 'right';
            app.EmissionLabel_16.VerticalAlignment = 'top';
            app.EmissionLabel_16.FontColor = [1 1 1];
            app.EmissionLabel_16.Position = [229 436 54 15];
            app.EmissionLabel_16.Text = 'Emission';

            % Create ChA_Em_Tab_6
            app.ChA_Em_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.ChA_Em_Tab_6.FontColor = [1 1 1];
            app.ChA_Em_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_6.Position = [298 432 41 22];
            app.ChA_Em_Tab_6.Value = 509;

            % Create ExperimentEditField_2Label_6
            app.ExperimentEditField_2Label_6 = uilabel(app.Tab_6);
            app.ExperimentEditField_2Label_6.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_6.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_6.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_6.Position = [12 480 67 15];
            app.ExperimentEditField_2Label_6.Text = 'Experiment';

            % Create experimentID_Tab_6
            app.experimentID_Tab_6 = uieditfield(app.Tab_6, 'text');
            app.experimentID_Tab_6.FontColor = [1 1 1];
            app.experimentID_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_6.Position = [94 476 122 22];

            % Create activateTab_6
            app.activateTab_6 = uicheckbox(app.Tab_6);
            app.activateTab_6.Text = 'Activate experiment tab';
            app.activateTab_6.FontWeight = 'bold';
            app.activateTab_6.FontColor = [0.902 0.902 0.902];
            app.activateTab_6.Position = [18 514 159 15];

            % Create xDimEditFieldLabel_6
            app.xDimEditFieldLabel_6 = uilabel(app.Tab_6);
            app.xDimEditFieldLabel_6.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_6.FontColor = [1 1 1];
            app.xDimEditFieldLabel_6.Position = [18 315 35 15];
            app.xDimEditFieldLabel_6.Text = 'x Dim';

            % Create xDim_Tab_6
            app.xDim_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.xDim_Tab_6.FontColor = [1 1 1];
            app.xDim_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_6.Position = [69 311 55 22];
            app.xDim_Tab_6.Value = 2048;

            % Create EmissionLabel_17
            app.EmissionLabel_17 = uilabel(app.Tab_6);
            app.EmissionLabel_17.HorizontalAlignment = 'right';
            app.EmissionLabel_17.VerticalAlignment = 'top';
            app.EmissionLabel_17.FontColor = [1 1 1];
            app.EmissionLabel_17.Position = [229 405 54 15];
            app.EmissionLabel_17.Text = 'Emission';

            % Create ChB_Em_Tab_6
            app.ChB_Em_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.ChB_Em_Tab_6.FontColor = [1 1 1];
            app.ChB_Em_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_6.Position = [298 401 41 22];
            app.ChB_Em_Tab_6.Value = 610;

            % Create EmissionLabel_18
            app.EmissionLabel_18 = uilabel(app.Tab_6);
            app.EmissionLabel_18.HorizontalAlignment = 'right';
            app.EmissionLabel_18.VerticalAlignment = 'top';
            app.EmissionLabel_18.FontColor = [1 1 1];
            app.EmissionLabel_18.Position = [229 376 54 15];
            app.EmissionLabel_18.Text = 'Emission';

            % Create ChC_Em_Tab_6
            app.ChC_Em_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.ChC_Em_Tab_6.FontColor = [1 1 1];
            app.ChC_Em_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_6.Position = [298 372 41 22];

            % Create ImagepropertiesLabel_6
            app.ImagepropertiesLabel_6 = uilabel(app.Tab_6);
            app.ImagepropertiesLabel_6.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_6.FontWeight = 'bold';
            app.ImagepropertiesLabel_6.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_6.Position = [18 336 103 15];
            app.ImagepropertiesLabel_6.Text = 'Image properties';

            % Create yDimEditFieldLabel_6
            app.yDimEditFieldLabel_6 = uilabel(app.Tab_6);
            app.yDimEditFieldLabel_6.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_6.FontColor = [1 1 1];
            app.yDimEditFieldLabel_6.Position = [18 283 36 15];
            app.yDimEditFieldLabel_6.Text = 'y Dim';

            % Create yDim_Tab_6
            app.yDim_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.yDim_Tab_6.FontColor = [1 1 1];
            app.yDim_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_6.Position = [69 280 55 22];
            app.yDim_Tab_6.Value = 2048;

            % Create zDimEditFieldLabel_6
            app.zDimEditFieldLabel_6 = uilabel(app.Tab_6);
            app.zDimEditFieldLabel_6.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_6.FontColor = [1 1 1];
            app.zDimEditFieldLabel_6.Position = [18 251 36 15];
            app.zDimEditFieldLabel_6.Text = 'z Dim';

            % Create zDim_Tab_6
            app.zDim_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.zDim_Tab_6.FontColor = [1 1 1];
            app.zDim_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_6.Position = [69 247 55 22];
            app.zDim_Tab_6.Value = 30;

            % Create includeTS_group_Tab_6
            app.includeTS_group_Tab_6 = uibuttongroup(app.Tab_6);
            app.includeTS_group_Tab_6.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_6.Title = 'Include Time Series';
            app.includeTS_group_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_6.Position = [177 263 162 56];

            % Create includeTS_all_Tab_6
            app.includeTS_all_Tab_6 = uiradiobutton(app.includeTS_group_Tab_6);
            app.includeTS_all_Tab_6.Text = 'All';
            app.includeTS_all_Tab_6.FontColor = [1 1 1];
            app.includeTS_all_Tab_6.Position = [11 10 35.109375 15];
            app.includeTS_all_Tab_6.Value = true;

            % Create includeTS_selected_Tab_6
            app.includeTS_selected_Tab_6 = uiradiobutton(app.includeTS_group_Tab_6);
            app.includeTS_selected_Tab_6.Text = 'Selected';
            app.includeTS_selected_Tab_6.FontColor = [1 1 1];
            app.includeTS_selected_Tab_6.Position = [73 10 69.125 15];

            % Create ChBDropDownLabel_6
            app.ChBDropDownLabel_6 = uilabel(app.Tab_6);
            app.ChBDropDownLabel_6.HorizontalAlignment = 'right';
            app.ChBDropDownLabel_6.VerticalAlignment = 'top';
            app.ChBDropDownLabel_6.FontColor = [1 1 1];
            app.ChBDropDownLabel_6.Position = [17 405 36 15];
            app.ChBDropDownLabel_6.Text = 'Ch. B';

            % Create ChB_Tab_6
            app.ChB_Tab_6 = uidropdown(app.Tab_6);
            app.ChB_Tab_6.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChB_Tab_6.Editable = 'on';
            app.ChB_Tab_6.FontColor = [1 1 1];
            app.ChB_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_6.Position = [68 401 148 22];
            app.ChB_Tab_6.Value = 'Not selected';

            % Create ChCDropDownLabel_6
            app.ChCDropDownLabel_6 = uilabel(app.Tab_6);
            app.ChCDropDownLabel_6.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_6.VerticalAlignment = 'top';
            app.ChCDropDownLabel_6.FontColor = [1 1 1];
            app.ChCDropDownLabel_6.Position = [17 376 36 15];
            app.ChCDropDownLabel_6.Text = 'Ch. C';

            % Create ChC_Tab_6
            app.ChC_Tab_6 = uidropdown(app.Tab_6);
            app.ChC_Tab_6.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChC_Tab_6.Editable = 'on';
            app.ChC_Tab_6.FontColor = [1 1 1];
            app.ChC_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_6.Position = [68 372 148 22];
            app.ChC_Tab_6.Value = 'Not selected';

            % Create Tab_7
            app.Tab_7 = uitab(app.TabGroup);
            app.Tab_7.Title = '7';
            app.Tab_7.BackgroundColor = [0.1216 0.1294 0.1608];

            % Create TimeSeriesEditFieldLabel_7
            app.TimeSeriesEditFieldLabel_7 = uilabel(app.Tab_7);
            app.TimeSeriesEditFieldLabel_7.HorizontalAlignment = 'right';
            app.TimeSeriesEditFieldLabel_7.VerticalAlignment = 'top';
            app.TimeSeriesEditFieldLabel_7.FontColor = [1 1 1];
            app.TimeSeriesEditFieldLabel_7.Position = [227 480 68 15];
            app.TimeSeriesEditFieldLabel_7.Text = 'Time Series';

            % Create TS_Tab_7
            app.TS_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.TS_Tab_7.FontColor = [1 1 1];
            app.TS_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_7.Position = [298 476 41 22];

            % Create ChADropDownLabel_7
            app.ChADropDownLabel_7 = uilabel(app.Tab_7);
            app.ChADropDownLabel_7.HorizontalAlignment = 'right';
            app.ChADropDownLabel_7.VerticalAlignment = 'top';
            app.ChADropDownLabel_7.FontColor = [1 1 1];
            app.ChADropDownLabel_7.Position = [18 436 35 15];
            app.ChADropDownLabel_7.Text = 'Ch. A';

            % Create ChA_Tab_7
            app.ChA_Tab_7 = uidropdown(app.Tab_7);
            app.ChA_Tab_7.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChA_Tab_7.Editable = 'on';
            app.ChA_Tab_7.FontColor = [1 1 1];
            app.ChA_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_7.Position = [68 432 148 22];
            app.ChA_Tab_7.Value = 'YFP-Galectin9';

            % Create EmissionLabel_19
            app.EmissionLabel_19 = uilabel(app.Tab_7);
            app.EmissionLabel_19.HorizontalAlignment = 'right';
            app.EmissionLabel_19.VerticalAlignment = 'top';
            app.EmissionLabel_19.FontColor = [1 1 1];
            app.EmissionLabel_19.Position = [229 436 54 15];
            app.EmissionLabel_19.Text = 'Emission';

            % Create ChA_Em_Tab_7
            app.ChA_Em_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.ChA_Em_Tab_7.FontColor = [1 1 1];
            app.ChA_Em_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_7.Position = [298 432 41 22];
            app.ChA_Em_Tab_7.Value = 509;

            % Create ExperimentEditField_2Label_7
            app.ExperimentEditField_2Label_7 = uilabel(app.Tab_7);
            app.ExperimentEditField_2Label_7.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_7.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_7.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_7.Position = [12 480 67 15];
            app.ExperimentEditField_2Label_7.Text = 'Experiment';

            % Create experimentID_Tab_7
            app.experimentID_Tab_7 = uieditfield(app.Tab_7, 'text');
            app.experimentID_Tab_7.FontColor = [1 1 1];
            app.experimentID_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_7.Position = [94 476 122 22];

            % Create activateTab_7
            app.activateTab_7 = uicheckbox(app.Tab_7);
            app.activateTab_7.Text = 'Activate experiment tab';
            app.activateTab_7.FontWeight = 'bold';
            app.activateTab_7.FontColor = [0.902 0.902 0.902];
            app.activateTab_7.Position = [18 514 159 15];

            % Create xDimEditFieldLabel_7
            app.xDimEditFieldLabel_7 = uilabel(app.Tab_7);
            app.xDimEditFieldLabel_7.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_7.FontColor = [1 1 1];
            app.xDimEditFieldLabel_7.Position = [18 315 35 15];
            app.xDimEditFieldLabel_7.Text = 'x Dim';

            % Create xDim_Tab_7
            app.xDim_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.xDim_Tab_7.FontColor = [1 1 1];
            app.xDim_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_7.Position = [69 311 55 22];
            app.xDim_Tab_7.Value = 2048;

            % Create EmissionLabel_20
            app.EmissionLabel_20 = uilabel(app.Tab_7);
            app.EmissionLabel_20.HorizontalAlignment = 'right';
            app.EmissionLabel_20.VerticalAlignment = 'top';
            app.EmissionLabel_20.FontColor = [1 1 1];
            app.EmissionLabel_20.Position = [229 405 54 15];
            app.EmissionLabel_20.Text = 'Emission';

            % Create ChB_Em_Tab_7
            app.ChB_Em_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.ChB_Em_Tab_7.FontColor = [1 1 1];
            app.ChB_Em_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_7.Position = [298 401 41 22];
            app.ChB_Em_Tab_7.Value = 610;

            % Create EmissionLabel_21
            app.EmissionLabel_21 = uilabel(app.Tab_7);
            app.EmissionLabel_21.HorizontalAlignment = 'right';
            app.EmissionLabel_21.VerticalAlignment = 'top';
            app.EmissionLabel_21.FontColor = [1 1 1];
            app.EmissionLabel_21.Position = [229 376 54 15];
            app.EmissionLabel_21.Text = 'Emission';

            % Create ChC_Em_Tab_7
            app.ChC_Em_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.ChC_Em_Tab_7.FontColor = [1 1 1];
            app.ChC_Em_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_7.Position = [298 372 41 22];

            % Create ImagepropertiesLabel_7
            app.ImagepropertiesLabel_7 = uilabel(app.Tab_7);
            app.ImagepropertiesLabel_7.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_7.FontWeight = 'bold';
            app.ImagepropertiesLabel_7.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_7.Position = [18 336 103 15];
            app.ImagepropertiesLabel_7.Text = 'Image properties';

            % Create yDimEditFieldLabel_7
            app.yDimEditFieldLabel_7 = uilabel(app.Tab_7);
            app.yDimEditFieldLabel_7.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_7.FontColor = [1 1 1];
            app.yDimEditFieldLabel_7.Position = [18 283 36 15];
            app.yDimEditFieldLabel_7.Text = 'y Dim';

            % Create yDim_Tab_7
            app.yDim_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.yDim_Tab_7.FontColor = [1 1 1];
            app.yDim_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_7.Position = [69 280 55 22];
            app.yDim_Tab_7.Value = 2048;

            % Create zDimEditFieldLabel_7
            app.zDimEditFieldLabel_7 = uilabel(app.Tab_7);
            app.zDimEditFieldLabel_7.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_7.FontColor = [1 1 1];
            app.zDimEditFieldLabel_7.Position = [18 251 36 15];
            app.zDimEditFieldLabel_7.Text = 'z Dim';

            % Create zDim_Tab_7
            app.zDim_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.zDim_Tab_7.FontColor = [1 1 1];
            app.zDim_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_7.Position = [69 247 55 22];
            app.zDim_Tab_7.Value = 30;

            % Create includeTS_group_Tab_7
            app.includeTS_group_Tab_7 = uibuttongroup(app.Tab_7);
            app.includeTS_group_Tab_7.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_7.Title = 'Include Time Series';
            app.includeTS_group_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_7.Position = [177 263 162 56];

            % Create includeTS_all_Tab_7
            app.includeTS_all_Tab_7 = uiradiobutton(app.includeTS_group_Tab_7);
            app.includeTS_all_Tab_7.Text = 'All';
            app.includeTS_all_Tab_7.FontColor = [1 1 1];
            app.includeTS_all_Tab_7.Position = [11 10 35.109375 15];
            app.includeTS_all_Tab_7.Value = true;

            % Create includeTS_selected_Tab_7
            app.includeTS_selected_Tab_7 = uiradiobutton(app.includeTS_group_Tab_7);
            app.includeTS_selected_Tab_7.Text = 'Selected';
            app.includeTS_selected_Tab_7.FontColor = [1 1 1];
            app.includeTS_selected_Tab_7.Position = [73 10 69.125 15];

            % Create ChBDropDownLabel_7
            app.ChBDropDownLabel_7 = uilabel(app.Tab_7);
            app.ChBDropDownLabel_7.HorizontalAlignment = 'right';
            app.ChBDropDownLabel_7.VerticalAlignment = 'top';
            app.ChBDropDownLabel_7.FontColor = [1 1 1];
            app.ChBDropDownLabel_7.Position = [17 405 36 15];
            app.ChBDropDownLabel_7.Text = 'Ch. B';

            % Create ChB_Tab_7
            app.ChB_Tab_7 = uidropdown(app.Tab_7);
            app.ChB_Tab_7.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChB_Tab_7.Editable = 'on';
            app.ChB_Tab_7.FontColor = [1 1 1];
            app.ChB_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_7.Position = [68 401 148 22];
            app.ChB_Tab_7.Value = 'Not selected';

            % Create ChCDropDownLabel_7
            app.ChCDropDownLabel_7 = uilabel(app.Tab_7);
            app.ChCDropDownLabel_7.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_7.VerticalAlignment = 'top';
            app.ChCDropDownLabel_7.FontColor = [1 1 1];
            app.ChCDropDownLabel_7.Position = [17 376 36 15];
            app.ChCDropDownLabel_7.Text = 'Ch. C';

            % Create ChC_Tab_7
            app.ChC_Tab_7 = uidropdown(app.Tab_7);
            app.ChC_Tab_7.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChC_Tab_7.Editable = 'on';
            app.ChC_Tab_7.FontColor = [1 1 1];
            app.ChC_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_7.Position = [68 372 148 22];
            app.ChC_Tab_7.Value = 'Not selected';

            % Create Tab_8
            app.Tab_8 = uitab(app.TabGroup);
            app.Tab_8.Title = '8';
            app.Tab_8.BackgroundColor = [0.1216 0.1294 0.1608];

            % Create TimeSeriesEditFieldLabel_8
            app.TimeSeriesEditFieldLabel_8 = uilabel(app.Tab_8);
            app.TimeSeriesEditFieldLabel_8.HorizontalAlignment = 'right';
            app.TimeSeriesEditFieldLabel_8.VerticalAlignment = 'top';
            app.TimeSeriesEditFieldLabel_8.FontColor = [1 1 1];
            app.TimeSeriesEditFieldLabel_8.Position = [227 480 68 15];
            app.TimeSeriesEditFieldLabel_8.Text = 'Time Series';

            % Create TS_Tab_8
            app.TS_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.TS_Tab_8.FontColor = [1 1 1];
            app.TS_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_8.Position = [298 476 41 22];

            % Create ChADropDownLabel_8
            app.ChADropDownLabel_8 = uilabel(app.Tab_8);
            app.ChADropDownLabel_8.HorizontalAlignment = 'right';
            app.ChADropDownLabel_8.VerticalAlignment = 'top';
            app.ChADropDownLabel_8.FontColor = [1 1 1];
            app.ChADropDownLabel_8.Position = [18 436 35 15];
            app.ChADropDownLabel_8.Text = 'Ch. A';

            % Create ChA_Tab_8
            app.ChA_Tab_8 = uidropdown(app.Tab_8);
            app.ChA_Tab_8.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChA_Tab_8.Editable = 'on';
            app.ChA_Tab_8.FontColor = [1 1 1];
            app.ChA_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_8.Position = [68 432 148 22];
            app.ChA_Tab_8.Value = 'YFP-Galectin9';

            % Create EmissionLabel_22
            app.EmissionLabel_22 = uilabel(app.Tab_8);
            app.EmissionLabel_22.HorizontalAlignment = 'right';
            app.EmissionLabel_22.VerticalAlignment = 'top';
            app.EmissionLabel_22.FontColor = [1 1 1];
            app.EmissionLabel_22.Position = [229 436 54 15];
            app.EmissionLabel_22.Text = 'Emission';

            % Create ChA_Em_Tab_8
            app.ChA_Em_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.ChA_Em_Tab_8.FontColor = [1 1 1];
            app.ChA_Em_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_8.Position = [298 432 41 22];
            app.ChA_Em_Tab_8.Value = 509;

            % Create ExperimentEditField_2Label_8
            app.ExperimentEditField_2Label_8 = uilabel(app.Tab_8);
            app.ExperimentEditField_2Label_8.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_8.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_8.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_8.Position = [12 480 67 15];
            app.ExperimentEditField_2Label_8.Text = 'Experiment';

            % Create experimentID_Tab_8
            app.experimentID_Tab_8 = uieditfield(app.Tab_8, 'text');
            app.experimentID_Tab_8.FontColor = [1 1 1];
            app.experimentID_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_8.Position = [94 476 122 22];

            % Create activateTab_8
            app.activateTab_8 = uicheckbox(app.Tab_8);
            app.activateTab_8.Text = 'Activate experiment tab';
            app.activateTab_8.FontWeight = 'bold';
            app.activateTab_8.FontColor = [0.902 0.902 0.902];
            app.activateTab_8.Position = [18 514 159 15];

            % Create xDimEditFieldLabel_8
            app.xDimEditFieldLabel_8 = uilabel(app.Tab_8);
            app.xDimEditFieldLabel_8.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_8.FontColor = [1 1 1];
            app.xDimEditFieldLabel_8.Position = [18 315 35 15];
            app.xDimEditFieldLabel_8.Text = 'x Dim';

            % Create xDim_Tab_8
            app.xDim_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.xDim_Tab_8.FontColor = [1 1 1];
            app.xDim_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_8.Position = [69 311 55 22];
            app.xDim_Tab_8.Value = 2048;

            % Create EmissionLabel_23
            app.EmissionLabel_23 = uilabel(app.Tab_8);
            app.EmissionLabel_23.HorizontalAlignment = 'right';
            app.EmissionLabel_23.VerticalAlignment = 'top';
            app.EmissionLabel_23.FontColor = [1 1 1];
            app.EmissionLabel_23.Position = [229 405 54 15];
            app.EmissionLabel_23.Text = 'Emission';

            % Create ChB_Em_Tab_8
            app.ChB_Em_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.ChB_Em_Tab_8.FontColor = [1 1 1];
            app.ChB_Em_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_8.Position = [298 401 41 22];
            app.ChB_Em_Tab_8.Value = 610;

            % Create EmissionLabel_24
            app.EmissionLabel_24 = uilabel(app.Tab_8);
            app.EmissionLabel_24.HorizontalAlignment = 'right';
            app.EmissionLabel_24.VerticalAlignment = 'top';
            app.EmissionLabel_24.FontColor = [1 1 1];
            app.EmissionLabel_24.Position = [229 376 54 15];
            app.EmissionLabel_24.Text = 'Emission';

            % Create ChC_Em_Tab_8
            app.ChC_Em_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.ChC_Em_Tab_8.FontColor = [1 1 1];
            app.ChC_Em_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_8.Position = [298 372 41 22];

            % Create ImagepropertiesLabel_8
            app.ImagepropertiesLabel_8 = uilabel(app.Tab_8);
            app.ImagepropertiesLabel_8.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_8.FontWeight = 'bold';
            app.ImagepropertiesLabel_8.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_8.Position = [18 336 103 15];
            app.ImagepropertiesLabel_8.Text = 'Image properties';

            % Create yDimEditFieldLabel_8
            app.yDimEditFieldLabel_8 = uilabel(app.Tab_8);
            app.yDimEditFieldLabel_8.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_8.FontColor = [1 1 1];
            app.yDimEditFieldLabel_8.Position = [18 283 36 15];
            app.yDimEditFieldLabel_8.Text = 'y Dim';

            % Create yDim_Tab_8
            app.yDim_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.yDim_Tab_8.FontColor = [1 1 1];
            app.yDim_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_8.Position = [69 280 55 22];
            app.yDim_Tab_8.Value = 2048;

            % Create zDimEditFieldLabel_8
            app.zDimEditFieldLabel_8 = uilabel(app.Tab_8);
            app.zDimEditFieldLabel_8.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_8.FontColor = [1 1 1];
            app.zDimEditFieldLabel_8.Position = [18 251 36 15];
            app.zDimEditFieldLabel_8.Text = 'z Dim';

            % Create zDim_Tab_8
            app.zDim_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.zDim_Tab_8.FontColor = [1 1 1];
            app.zDim_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_8.Position = [69 247 55 22];
            app.zDim_Tab_8.Value = 30;

            % Create includeTS_group_Tab_8
            app.includeTS_group_Tab_8 = uibuttongroup(app.Tab_8);
            app.includeTS_group_Tab_8.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_8.Title = 'Include Time Series';
            app.includeTS_group_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_8.Position = [177 263 162 56];

            % Create includeTS_all_Tab_8
            app.includeTS_all_Tab_8 = uiradiobutton(app.includeTS_group_Tab_8);
            app.includeTS_all_Tab_8.Text = 'All';
            app.includeTS_all_Tab_8.FontColor = [1 1 1];
            app.includeTS_all_Tab_8.Position = [11 10 35.109375 15];
            app.includeTS_all_Tab_8.Value = true;

            % Create includeTS_selected_Tab_8
            app.includeTS_selected_Tab_8 = uiradiobutton(app.includeTS_group_Tab_8);
            app.includeTS_selected_Tab_8.Text = 'Selected';
            app.includeTS_selected_Tab_8.FontColor = [1 1 1];
            app.includeTS_selected_Tab_8.Position = [73 10 69.125 15];

            % Create ChBDropDownLabel_8
            app.ChBDropDownLabel_8 = uilabel(app.Tab_8);
            app.ChBDropDownLabel_8.HorizontalAlignment = 'right';
            app.ChBDropDownLabel_8.VerticalAlignment = 'top';
            app.ChBDropDownLabel_8.FontColor = [1 1 1];
            app.ChBDropDownLabel_8.Position = [17 405 36 15];
            app.ChBDropDownLabel_8.Text = 'Ch. B';

            % Create ChB_Tab_8
            app.ChB_Tab_8 = uidropdown(app.Tab_8);
            app.ChB_Tab_8.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChB_Tab_8.Editable = 'on';
            app.ChB_Tab_8.FontColor = [1 1 1];
            app.ChB_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_8.Position = [68 401 148 22];
            app.ChB_Tab_8.Value = 'Not selected';

            % Create ChCDropDownLabel_8
            app.ChCDropDownLabel_8 = uilabel(app.Tab_8);
            app.ChCDropDownLabel_8.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_8.VerticalAlignment = 'top';
            app.ChCDropDownLabel_8.FontColor = [1 1 1];
            app.ChCDropDownLabel_8.Position = [17 376 36 15];
            app.ChCDropDownLabel_8.Text = 'Ch. C';

            % Create ChC_Tab_8
            app.ChC_Tab_8 = uidropdown(app.Tab_8);
            app.ChC_Tab_8.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChC_Tab_8.Editable = 'on';
            app.ChC_Tab_8.FontColor = [1 1 1];
            app.ChC_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_8.Position = [68 372 148 22];
            app.ChC_Tab_8.Value = 'Not selected';

            % Create Tab_9
            app.Tab_9 = uitab(app.TabGroup);
            app.Tab_9.Title = '9';
            app.Tab_9.BackgroundColor = [0.1216 0.1294 0.1608];

            % Create TimeSeriesEditFieldLabel_9
            app.TimeSeriesEditFieldLabel_9 = uilabel(app.Tab_9);
            app.TimeSeriesEditFieldLabel_9.HorizontalAlignment = 'right';
            app.TimeSeriesEditFieldLabel_9.VerticalAlignment = 'top';
            app.TimeSeriesEditFieldLabel_9.FontColor = [1 1 1];
            app.TimeSeriesEditFieldLabel_9.Position = [227 480 68 15];
            app.TimeSeriesEditFieldLabel_9.Text = 'Time Series';

            % Create TS_Tab_9
            app.TS_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.TS_Tab_9.FontColor = [1 1 1];
            app.TS_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_9.Position = [298 476 41 22];

            % Create ChADropDownLabel_9
            app.ChADropDownLabel_9 = uilabel(app.Tab_9);
            app.ChADropDownLabel_9.HorizontalAlignment = 'right';
            app.ChADropDownLabel_9.VerticalAlignment = 'top';
            app.ChADropDownLabel_9.FontColor = [1 1 1];
            app.ChADropDownLabel_9.Position = [18 436 35 15];
            app.ChADropDownLabel_9.Text = 'Ch. A';

            % Create ChA_Tab_9
            app.ChA_Tab_9 = uidropdown(app.Tab_9);
            app.ChA_Tab_9.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChA_Tab_9.Editable = 'on';
            app.ChA_Tab_9.FontColor = [1 1 1];
            app.ChA_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_9.Position = [68 432 148 22];
            app.ChA_Tab_9.Value = 'YFP-Galectin9';

            % Create EmissionLabel_25
            app.EmissionLabel_25 = uilabel(app.Tab_9);
            app.EmissionLabel_25.HorizontalAlignment = 'right';
            app.EmissionLabel_25.VerticalAlignment = 'top';
            app.EmissionLabel_25.FontColor = [1 1 1];
            app.EmissionLabel_25.Position = [229 436 54 15];
            app.EmissionLabel_25.Text = 'Emission';

            % Create ChA_Em_Tab_9
            app.ChA_Em_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.ChA_Em_Tab_9.FontColor = [1 1 1];
            app.ChA_Em_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_9.Position = [298 432 41 22];
            app.ChA_Em_Tab_9.Value = 509;

            % Create ExperimentEditField_2Label_9
            app.ExperimentEditField_2Label_9 = uilabel(app.Tab_9);
            app.ExperimentEditField_2Label_9.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_9.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_9.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_9.Position = [12 480 67 15];
            app.ExperimentEditField_2Label_9.Text = 'Experiment';

            % Create experimentID_Tab_9
            app.experimentID_Tab_9 = uieditfield(app.Tab_9, 'text');
            app.experimentID_Tab_9.FontColor = [1 1 1];
            app.experimentID_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_9.Position = [94 476 122 22];

            % Create activateTab_9
            app.activateTab_9 = uicheckbox(app.Tab_9);
            app.activateTab_9.Text = 'Activate experiment tab';
            app.activateTab_9.FontWeight = 'bold';
            app.activateTab_9.FontColor = [0.902 0.902 0.902];
            app.activateTab_9.Position = [18 514 159 15];

            % Create xDimEditFieldLabel_9
            app.xDimEditFieldLabel_9 = uilabel(app.Tab_9);
            app.xDimEditFieldLabel_9.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_9.FontColor = [1 1 1];
            app.xDimEditFieldLabel_9.Position = [18 315 35 15];
            app.xDimEditFieldLabel_9.Text = 'x Dim';

            % Create xDim_Tab_9
            app.xDim_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.xDim_Tab_9.FontColor = [1 1 1];
            app.xDim_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_9.Position = [69 311 55 22];
            app.xDim_Tab_9.Value = 2048;

            % Create EmissionLabel_26
            app.EmissionLabel_26 = uilabel(app.Tab_9);
            app.EmissionLabel_26.HorizontalAlignment = 'right';
            app.EmissionLabel_26.VerticalAlignment = 'top';
            app.EmissionLabel_26.FontColor = [1 1 1];
            app.EmissionLabel_26.Position = [229 405 54 15];
            app.EmissionLabel_26.Text = 'Emission';

            % Create ChB_Em_Tab_9
            app.ChB_Em_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.ChB_Em_Tab_9.FontColor = [1 1 1];
            app.ChB_Em_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_9.Position = [298 401 41 22];
            app.ChB_Em_Tab_9.Value = 610;

            % Create EmissionLabel_27
            app.EmissionLabel_27 = uilabel(app.Tab_9);
            app.EmissionLabel_27.HorizontalAlignment = 'right';
            app.EmissionLabel_27.VerticalAlignment = 'top';
            app.EmissionLabel_27.FontColor = [1 1 1];
            app.EmissionLabel_27.Position = [229 376 54 15];
            app.EmissionLabel_27.Text = 'Emission';

            % Create ChC_Em_Tab_9
            app.ChC_Em_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.ChC_Em_Tab_9.FontColor = [1 1 1];
            app.ChC_Em_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_9.Position = [298 372 41 22];

            % Create ImagepropertiesLabel_9
            app.ImagepropertiesLabel_9 = uilabel(app.Tab_9);
            app.ImagepropertiesLabel_9.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_9.FontWeight = 'bold';
            app.ImagepropertiesLabel_9.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_9.Position = [18 336 103 15];
            app.ImagepropertiesLabel_9.Text = 'Image properties';

            % Create yDimEditFieldLabel_9
            app.yDimEditFieldLabel_9 = uilabel(app.Tab_9);
            app.yDimEditFieldLabel_9.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_9.FontColor = [1 1 1];
            app.yDimEditFieldLabel_9.Position = [18 283 36 15];
            app.yDimEditFieldLabel_9.Text = 'y Dim';

            % Create yDim_Tab_9
            app.yDim_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.yDim_Tab_9.FontColor = [1 1 1];
            app.yDim_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_9.Position = [69 280 55 22];
            app.yDim_Tab_9.Value = 2048;

            % Create zDimEditFieldLabel_9
            app.zDimEditFieldLabel_9 = uilabel(app.Tab_9);
            app.zDimEditFieldLabel_9.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_9.FontColor = [1 1 1];
            app.zDimEditFieldLabel_9.Position = [18 251 36 15];
            app.zDimEditFieldLabel_9.Text = 'z Dim';

            % Create zDim_Tab_9
            app.zDim_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.zDim_Tab_9.FontColor = [1 1 1];
            app.zDim_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_9.Position = [69 247 55 22];
            app.zDim_Tab_9.Value = 30;

            % Create includeTS_group_Tab_9
            app.includeTS_group_Tab_9 = uibuttongroup(app.Tab_9);
            app.includeTS_group_Tab_9.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_9.Title = 'Include Time Series';
            app.includeTS_group_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_9.Position = [177 263 162 56];

            % Create includeTS_all_Tab_9
            app.includeTS_all_Tab_9 = uiradiobutton(app.includeTS_group_Tab_9);
            app.includeTS_all_Tab_9.Text = 'All';
            app.includeTS_all_Tab_9.FontColor = [1 1 1];
            app.includeTS_all_Tab_9.Position = [11 10 35.109375 15];
            app.includeTS_all_Tab_9.Value = true;

            % Create includeTS_selected_Tab_9
            app.includeTS_selected_Tab_9 = uiradiobutton(app.includeTS_group_Tab_9);
            app.includeTS_selected_Tab_9.Text = 'Selected';
            app.includeTS_selected_Tab_9.FontColor = [1 1 1];
            app.includeTS_selected_Tab_9.Position = [73 10 69.125 15];

            % Create ChBDropDownLabel_9
            app.ChBDropDownLabel_9 = uilabel(app.Tab_9);
            app.ChBDropDownLabel_9.HorizontalAlignment = 'right';
            app.ChBDropDownLabel_9.VerticalAlignment = 'top';
            app.ChBDropDownLabel_9.FontColor = [1 1 1];
            app.ChBDropDownLabel_9.Position = [17 405 36 15];
            app.ChBDropDownLabel_9.Text = 'Ch. B';

            % Create ChB_Tab_9
            app.ChB_Tab_9 = uidropdown(app.Tab_9);
            app.ChB_Tab_9.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChB_Tab_9.Editable = 'on';
            app.ChB_Tab_9.FontColor = [1 1 1];
            app.ChB_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_9.Position = [68 401 148 22];
            app.ChB_Tab_9.Value = 'Not selected';

            % Create ChCDropDownLabel_9
            app.ChCDropDownLabel_9 = uilabel(app.Tab_9);
            app.ChCDropDownLabel_9.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_9.VerticalAlignment = 'top';
            app.ChCDropDownLabel_9.FontColor = [1 1 1];
            app.ChCDropDownLabel_9.Position = [17 376 36 15];
            app.ChCDropDownLabel_9.Text = 'Ch. C';

            % Create ChC_Tab_9
            app.ChC_Tab_9 = uidropdown(app.Tab_9);
            app.ChC_Tab_9.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChC_Tab_9.Editable = 'on';
            app.ChC_Tab_9.FontColor = [1 1 1];
            app.ChC_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_9.Position = [68 372 148 22];
            app.ChC_Tab_9.Value = 'Not selected';

            % Create Tab_10
            app.Tab_10 = uitab(app.TabGroup);
            app.Tab_10.Title = '10';
            app.Tab_10.BackgroundColor = [0.1216 0.1294 0.1608];

            % Create TimeSeriesEditFieldLabel_10
            app.TimeSeriesEditFieldLabel_10 = uilabel(app.Tab_10);
            app.TimeSeriesEditFieldLabel_10.HorizontalAlignment = 'right';
            app.TimeSeriesEditFieldLabel_10.VerticalAlignment = 'top';
            app.TimeSeriesEditFieldLabel_10.FontColor = [1 1 1];
            app.TimeSeriesEditFieldLabel_10.Position = [227 480 68 15];
            app.TimeSeriesEditFieldLabel_10.Text = 'Time Series';

            % Create TS_Tab_10
            app.TS_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.TS_Tab_10.FontColor = [1 1 1];
            app.TS_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_10.Position = [298 476 41 22];

            % Create ChADropDownLabel_10
            app.ChADropDownLabel_10 = uilabel(app.Tab_10);
            app.ChADropDownLabel_10.HorizontalAlignment = 'right';
            app.ChADropDownLabel_10.VerticalAlignment = 'top';
            app.ChADropDownLabel_10.FontColor = [1 1 1];
            app.ChADropDownLabel_10.Position = [18 436 35 15];
            app.ChADropDownLabel_10.Text = 'Ch. A';

            % Create ChA_Tab_10
            app.ChA_Tab_10 = uidropdown(app.Tab_10);
            app.ChA_Tab_10.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChA_Tab_10.Editable = 'on';
            app.ChA_Tab_10.FontColor = [1 1 1];
            app.ChA_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_10.Position = [68 432 148 22];
            app.ChA_Tab_10.Value = 'YFP-Galectin9';

            % Create EmissionLabel_28
            app.EmissionLabel_28 = uilabel(app.Tab_10);
            app.EmissionLabel_28.HorizontalAlignment = 'right';
            app.EmissionLabel_28.VerticalAlignment = 'top';
            app.EmissionLabel_28.FontColor = [1 1 1];
            app.EmissionLabel_28.Position = [229 436 54 15];
            app.EmissionLabel_28.Text = 'Emission';

            % Create ChA_Em_Tab_10
            app.ChA_Em_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.ChA_Em_Tab_10.FontColor = [1 1 1];
            app.ChA_Em_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_10.Position = [298 432 41 22];
            app.ChA_Em_Tab_10.Value = 509;

            % Create ExperimentEditField_2Label_10
            app.ExperimentEditField_2Label_10 = uilabel(app.Tab_10);
            app.ExperimentEditField_2Label_10.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_10.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_10.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_10.Position = [12 480 67 15];
            app.ExperimentEditField_2Label_10.Text = 'Experiment';

            % Create experimentID_Tab_10
            app.experimentID_Tab_10 = uieditfield(app.Tab_10, 'text');
            app.experimentID_Tab_10.FontColor = [1 1 1];
            app.experimentID_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_10.Position = [94 476 122 22];

            % Create activateTab_10
            app.activateTab_10 = uicheckbox(app.Tab_10);
            app.activateTab_10.Text = 'Activate experiment tab';
            app.activateTab_10.FontWeight = 'bold';
            app.activateTab_10.FontColor = [0.902 0.902 0.902];
            app.activateTab_10.Position = [18 514 159 15];

            % Create xDimEditFieldLabel_10
            app.xDimEditFieldLabel_10 = uilabel(app.Tab_10);
            app.xDimEditFieldLabel_10.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_10.FontColor = [1 1 1];
            app.xDimEditFieldLabel_10.Position = [18 315 35 15];
            app.xDimEditFieldLabel_10.Text = 'x Dim';

            % Create xDim_Tab_10
            app.xDim_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.xDim_Tab_10.FontColor = [1 1 1];
            app.xDim_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_10.Position = [69 311 55 22];
            app.xDim_Tab_10.Value = 2048;

            % Create EmissionLabel_29
            app.EmissionLabel_29 = uilabel(app.Tab_10);
            app.EmissionLabel_29.HorizontalAlignment = 'right';
            app.EmissionLabel_29.VerticalAlignment = 'top';
            app.EmissionLabel_29.FontColor = [1 1 1];
            app.EmissionLabel_29.Position = [229 405 54 15];
            app.EmissionLabel_29.Text = 'Emission';

            % Create ChB_Em_Tab_10
            app.ChB_Em_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.ChB_Em_Tab_10.FontColor = [1 1 1];
            app.ChB_Em_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_10.Position = [298 401 41 22];
            app.ChB_Em_Tab_10.Value = 610;

            % Create EmissionLabel_30
            app.EmissionLabel_30 = uilabel(app.Tab_10);
            app.EmissionLabel_30.HorizontalAlignment = 'right';
            app.EmissionLabel_30.VerticalAlignment = 'top';
            app.EmissionLabel_30.FontColor = [1 1 1];
            app.EmissionLabel_30.Position = [229 376 54 15];
            app.EmissionLabel_30.Text = 'Emission';

            % Create ChC_Em_Tab_10
            app.ChC_Em_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.ChC_Em_Tab_10.FontColor = [1 1 1];
            app.ChC_Em_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_10.Position = [298 372 41 22];

            % Create ImagepropertiesLabel_10
            app.ImagepropertiesLabel_10 = uilabel(app.Tab_10);
            app.ImagepropertiesLabel_10.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_10.FontWeight = 'bold';
            app.ImagepropertiesLabel_10.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_10.Position = [18 336 103 15];
            app.ImagepropertiesLabel_10.Text = 'Image properties';

            % Create yDimEditFieldLabel_10
            app.yDimEditFieldLabel_10 = uilabel(app.Tab_10);
            app.yDimEditFieldLabel_10.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_10.FontColor = [1 1 1];
            app.yDimEditFieldLabel_10.Position = [18 283 36 15];
            app.yDimEditFieldLabel_10.Text = 'y Dim';

            % Create yDim_Tab_10
            app.yDim_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.yDim_Tab_10.FontColor = [1 1 1];
            app.yDim_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_10.Position = [69 280 55 22];
            app.yDim_Tab_10.Value = 2048;

            % Create zDimEditFieldLabel_10
            app.zDimEditFieldLabel_10 = uilabel(app.Tab_10);
            app.zDimEditFieldLabel_10.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_10.FontColor = [1 1 1];
            app.zDimEditFieldLabel_10.Position = [18 251 36 15];
            app.zDimEditFieldLabel_10.Text = 'z Dim';

            % Create zDim_Tab_10
            app.zDim_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.zDim_Tab_10.FontColor = [1 1 1];
            app.zDim_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_10.Position = [69 247 55 22];
            app.zDim_Tab_10.Value = 30;

            % Create includeTS_group_Tab_10
            app.includeTS_group_Tab_10 = uibuttongroup(app.Tab_10);
            app.includeTS_group_Tab_10.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_10.Title = 'Include Time Series';
            app.includeTS_group_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_10.Position = [177 263 162 56];

            % Create includeTS_all_Tab_10
            app.includeTS_all_Tab_10 = uiradiobutton(app.includeTS_group_Tab_10);
            app.includeTS_all_Tab_10.Text = 'All';
            app.includeTS_all_Tab_10.FontColor = [1 1 1];
            app.includeTS_all_Tab_10.Position = [11 10 35.109375 15];
            app.includeTS_all_Tab_10.Value = true;

            % Create includeTS_selected_Tab_10
            app.includeTS_selected_Tab_10 = uiradiobutton(app.includeTS_group_Tab_10);
            app.includeTS_selected_Tab_10.Text = 'Selected';
            app.includeTS_selected_Tab_10.FontColor = [1 1 1];
            app.includeTS_selected_Tab_10.Position = [73 10 69.125 15];

            % Create ChBDropDownLabel_10
            app.ChBDropDownLabel_10 = uilabel(app.Tab_10);
            app.ChBDropDownLabel_10.HorizontalAlignment = 'right';
            app.ChBDropDownLabel_10.VerticalAlignment = 'top';
            app.ChBDropDownLabel_10.FontColor = [1 1 1];
            app.ChBDropDownLabel_10.Position = [17 405 36 15];
            app.ChBDropDownLabel_10.Text = 'Ch. B';

            % Create ChB_Tab_10
            app.ChB_Tab_10 = uidropdown(app.Tab_10);
            app.ChB_Tab_10.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChB_Tab_10.Editable = 'on';
            app.ChB_Tab_10.FontColor = [1 1 1];
            app.ChB_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_10.Position = [68 401 148 22];
            app.ChB_Tab_10.Value = 'Not selected';

            % Create ChCDropDownLabel_10
            app.ChCDropDownLabel_10 = uilabel(app.Tab_10);
            app.ChCDropDownLabel_10.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_10.VerticalAlignment = 'top';
            app.ChCDropDownLabel_10.FontColor = [1 1 1];
            app.ChCDropDownLabel_10.Position = [17 376 36 15];
            app.ChCDropDownLabel_10.Text = 'Ch. C';

            % Create ChC_Tab_10
            app.ChC_Tab_10 = uidropdown(app.Tab_10);
            app.ChC_Tab_10.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChC_Tab_10.Editable = 'on';
            app.ChC_Tab_10.FontColor = [1 1 1];
            app.ChC_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_10.Position = [68 372 148 22];
            app.ChC_Tab_10.Value = 'Not selected';

            % Create Lamp
            app.Lamp = uilamp(app.QuantEscape2020aUIFigure);
            app.Lamp.Position = [1137.03125 538 15 15];
            app.Lamp.Color = [0.4706 0.6706 0.1882];

            % Create TabGroup4
            app.TabGroup4 = uitabgroup(app.QuantEscape2020aUIFigure);
            app.TabGroup4.Position = [428 9 710 545];

            % Create ProcessingTab
            app.ProcessingTab = uitab(app.TabGroup4);
            app.ProcessingTab.Title = 'Processing';
            app.ProcessingTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create ImageProcessingPanel
            app.ImageProcessingPanel = uipanel(app.ProcessingTab);
            app.ImageProcessingPanel.ForegroundColor = [0.902 0.902 0.902];
            app.ImageProcessingPanel.Title = 'Image Processing';
            app.ImageProcessingPanel.BackgroundColor = [0.1176 0.1294 0.1608];
            app.ImageProcessingPanel.FontWeight = 'bold';
            app.ImageProcessingPanel.Position = [0 2 710 522];

            % Create StartProcessingButton
            app.StartProcessingButton = uibutton(app.ImageProcessingPanel, 'push');
            app.StartProcessingButton.ButtonPushedFcn = createCallbackFcn(app, @StartProcessingButtonPushed, true);
            app.StartProcessingButton.BackgroundColor = [0.4627 0.1961 0.2471];
            app.StartProcessingButton.FontColor = [1 1 1];
            app.StartProcessingButton.Position = [205.5 439 127 30];
            app.StartProcessingButton.Text = 'Start Processing';

            % Create CreateFoldersButton
            app.CreateFoldersButton = uibutton(app.ImageProcessingPanel, 'push');
            app.CreateFoldersButton.ButtonPushedFcn = createCallbackFcn(app, @CreateFoldersButtonPushed, true);
            app.CreateFoldersButton.BackgroundColor = [0.4627 0.1961 0.2471];
            app.CreateFoldersButton.FontColor = [1 1 1];
            app.CreateFoldersButton.Position = [371.5 439 127 30];
            app.CreateFoldersButton.Text = 'Create Folders';

            % Create EventROIsTab
            app.EventROIsTab = uitab(app.TabGroup4);
            app.EventROIsTab.Title = 'Event ROIs';
            app.EventROIsTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create CreateEventROIsPanel
            app.CreateEventROIsPanel = uipanel(app.EventROIsTab);
            app.CreateEventROIsPanel.ForegroundColor = [0.902 0.902 0.902];
            app.CreateEventROIsPanel.Title = 'Create Event ROIs';
            app.CreateEventROIsPanel.BackgroundColor = [0.1176 0.1294 0.1608];
            app.CreateEventROIsPanel.FontWeight = 'bold';
            app.CreateEventROIsPanel.Position = [0 2 710 520];

            % Create ExtendROIEditFieldLabel
            app.ExtendROIEditFieldLabel = uilabel(app.CreateEventROIsPanel);
            app.ExtendROIEditFieldLabel.HorizontalAlignment = 'right';
            app.ExtendROIEditFieldLabel.VerticalAlignment = 'top';
            app.ExtendROIEditFieldLabel.FontColor = [1 1 1];
            app.ExtendROIEditFieldLabel.Position = [9 472 67 15];
            app.ExtendROIEditFieldLabel.Text = 'Extend ROI';

            % Create ExtendROI
            app.ExtendROI = uieditfield(app.CreateEventROIsPanel, 'numeric');
            app.ExtendROI.FontColor = [1 1 1];
            app.ExtendROI.BackgroundColor = [0.2 0.2196 0.2706];
            app.ExtendROI.Position = [89 468 48 22];
            app.ExtendROI.Value = 75;

            % Create TimesPreEditFieldLabel
            app.TimesPreEditFieldLabel = uilabel(app.CreateEventROIsPanel);
            app.TimesPreEditFieldLabel.VerticalAlignment = 'top';
            app.TimesPreEditFieldLabel.FontColor = [1 1 1];
            app.TimesPreEditFieldLabel.Position = [15 442 59 15];
            app.TimesPreEditFieldLabel.Text = 'Times Pre';

            % Create TimesPre
            app.TimesPre = uieditfield(app.CreateEventROIsPanel, 'numeric');
            app.TimesPre.FontColor = [1 1 1];
            app.TimesPre.BackgroundColor = [0.2 0.2196 0.2706];
            app.TimesPre.Position = [89 438 48 22];
            app.TimesPre.Value = 30;

            % Create TimesPostEditFieldLabel
            app.TimesPostEditFieldLabel = uilabel(app.CreateEventROIsPanel);
            app.TimesPostEditFieldLabel.VerticalAlignment = 'top';
            app.TimesPostEditFieldLabel.FontColor = [1 1 1];
            app.TimesPostEditFieldLabel.Position = [15 412 66 15];
            app.TimesPostEditFieldLabel.Text = 'Times Post';

            % Create TimesPost
            app.TimesPost = uieditfield(app.CreateEventROIsPanel, 'numeric');
            app.TimesPost.FontColor = [1 1 1];
            app.TimesPost.BackgroundColor = [0.2 0.2196 0.2706];
            app.TimesPost.Position = [89 408 48 22];
            app.TimesPost.Value = 60;

            % Create IncludeTimeSeriesButtonGroup
            app.IncludeTimeSeriesButtonGroup = uibuttongroup(app.CreateEventROIsPanel);
            app.IncludeTimeSeriesButtonGroup.ForegroundColor = [1 1 1];
            app.IncludeTimeSeriesButtonGroup.Title = 'Include Time Series';
            app.IncludeTimeSeriesButtonGroup.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeTimeSeriesButtonGroup.Position = [449 408 123 78];

            % Create roiTS_all
            app.roiTS_all = uiradiobutton(app.IncludeTimeSeriesButtonGroup);
            app.roiTS_all.Text = 'All';
            app.roiTS_all.FontColor = [1 1 1];
            app.roiTS_all.Position = [11 32 35.109375 15];
            app.roiTS_all.Value = true;

            % Create roiTS_selected
            app.roiTS_selected = uiradiobutton(app.IncludeTimeSeriesButtonGroup);
            app.roiTS_selected.Text = 'Selected';
            app.roiTS_selected.FontColor = [1 1 1];
            app.roiTS_selected.Position = [11 10 69.125 15];

            % Create IncludeEventsButtonGroup
            app.IncludeEventsButtonGroup = uibuttongroup(app.CreateEventROIsPanel);
            app.IncludeEventsButtonGroup.ForegroundColor = [1 1 1];
            app.IncludeEventsButtonGroup.Title = 'Include Events';
            app.IncludeEventsButtonGroup.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeEventsButtonGroup.Position = [579 408 123 78];

            % Create roiEvents_all
            app.roiEvents_all = uiradiobutton(app.IncludeEventsButtonGroup);
            app.roiEvents_all.Text = 'All';
            app.roiEvents_all.FontColor = [1 1 1];
            app.roiEvents_all.Position = [11 32 35.109375 15];
            app.roiEvents_all.Value = true;

            % Create roiEvents_selected
            app.roiEvents_selected = uiradiobutton(app.IncludeEventsButtonGroup);
            app.roiEvents_selected.Text = 'Selected';
            app.roiEvents_selected.FontColor = [1 1 1];
            app.roiEvents_selected.Position = [11 10 69.125 15];

            % Create RunCreateROIs
            app.RunCreateROIs = uibutton(app.CreateEventROIsPanel, 'push');
            app.RunCreateROIs.ButtonPushedFcn = createCallbackFcn(app, @RunCreateROIsPushed, true);
            app.RunCreateROIs.BackgroundColor = [0.4627 0.1961 0.2471];
            app.RunCreateROIs.FontColor = [1 1 1];
            app.RunCreateROIs.Position = [449.5 331 114 30];
            app.RunCreateROIs.Text = 'Create Event ROIs';

            % Create skipCelldata
            app.skipCelldata = uicheckbox(app.CreateEventROIsPanel);
            app.skipCelldata.Text = 'Skip cell data extraction';
            app.skipCelldata.FontColor = [1 1 1];
            app.skipCelldata.Position = [178 454 151 15];

            % Create skipImageBackground
            app.skipImageBackground = uicheckbox(app.CreateEventROIsPanel);
            app.skipImageBackground.Text = 'Skip image background data extraction';
            app.skipImageBackground.FontColor = [1 1 1];
            app.skipImageBackground.Position = [178 428 236 15];

            % Create createEventKey
            app.createEventKey = uibutton(app.CreateEventROIsPanel, 'push');
            app.createEventKey.ButtonPushedFcn = createCallbackFcn(app, @createEventKeyBtn, true);
            app.createEventKey.BackgroundColor = [0.4627 0.1961 0.2471];
            app.createEventKey.FontColor = [1 1 1];
            app.createEventKey.Position = [449.5 245 114 30];
            app.createEventKey.Text = 'Create Event Key';

            % Create EventPanelsTab
            app.EventPanelsTab = uitab(app.TabGroup4);
            app.EventPanelsTab.Title = 'Event Panels';
            app.EventPanelsTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create CreateEventROIPanel
            app.CreateEventROIPanel = uipanel(app.EventPanelsTab);
            app.CreateEventROIPanel.ForegroundColor = [0.902 0.902 0.902];
            app.CreateEventROIPanel.Title = 'Create Event ROI Panel';
            app.CreateEventROIPanel.BackgroundColor = [0.1176 0.1294 0.1608];
            app.CreateEventROIPanel.FontWeight = 'bold';
            app.CreateEventROIPanel.Position = [1 2 709 519];

            % Create ExtendPlanesEditFieldLabel
            app.ExtendPlanesEditFieldLabel = uilabel(app.CreateEventROIPanel);
            app.ExtendPlanesEditFieldLabel.VerticalAlignment = 'top';
            app.ExtendPlanesEditFieldLabel.FontColor = [1 1 1];
            app.ExtendPlanesEditFieldLabel.Position = [19 471 84 15];
            app.ExtendPlanesEditFieldLabel.Text = 'Extend Planes';

            % Create ExtendPlanes
            app.ExtendPlanes = uieditfield(app.CreateEventROIPanel, 'numeric');
            app.ExtendPlanes.FontColor = [1 1 1];
            app.ExtendPlanes.BackgroundColor = [0.2 0.2196 0.2706];
            app.ExtendPlanes.Position = [118 467 48 22];
            app.ExtendPlanes.Value = 30;

            % Create xSpacersEditFieldLabel
            app.xSpacersEditFieldLabel = uilabel(app.CreateEventROIPanel);
            app.xSpacersEditFieldLabel.VerticalAlignment = 'top';
            app.xSpacersEditFieldLabel.FontColor = [1 1 1];
            app.xSpacersEditFieldLabel.Position = [19 442 59 15];
            app.xSpacersEditFieldLabel.Text = 'x Spacers';

            % Create xSpacers
            app.xSpacers = uieditfield(app.CreateEventROIPanel, 'numeric');
            app.xSpacers.FontColor = [1 1 1];
            app.xSpacers.BackgroundColor = [0.2 0.2196 0.2706];
            app.xSpacers.Position = [118 438 48 22];
            app.xSpacers.Value = 75;

            % Create ModeDropDownLabel
            app.ModeDropDownLabel = uilabel(app.CreateEventROIPanel);
            app.ModeDropDownLabel.HorizontalAlignment = 'right';
            app.ModeDropDownLabel.VerticalAlignment = 'top';
            app.ModeDropDownLabel.FontColor = [1 1 1];
            app.ModeDropDownLabel.Position = [8 285 36 15];
            app.ModeDropDownLabel.Text = 'Mode';

            % Create Mode
            app.Mode = uidropdown(app.CreateEventROIPanel);
            app.Mode.Items = {'MIP Untracked', 'MIP Tracked', 'z-Cropped Tracked', 'z-Complete Untracked'};
            app.Mode.FontColor = [1 1 1];
            app.Mode.BackgroundColor = [0.2 0.2196 0.2706];
            app.Mode.Position = [59 281 173 22];
            app.Mode.Value = 'MIP Untracked';

            % Create CreateROIPanelButton
            app.CreateROIPanelButton = uibutton(app.CreateEventROIPanel, 'push');
            app.CreateROIPanelButton.ButtonPushedFcn = createCallbackFcn(app, @CreateROIPanelButtonPushed, true);
            app.CreateROIPanelButton.BackgroundColor = [0.4627 0.1961 0.2471];
            app.CreateROIPanelButton.FontColor = [1 1 1];
            app.CreateROIPanelButton.Position = [255 89 108 30];
            app.CreateROIPanelButton.Text = 'Create ROI Panel';

            % Create IncludeTimeSeriesButtonGroup_3
            app.IncludeTimeSeriesButtonGroup_3 = uibuttongroup(app.CreateEventROIPanel);
            app.IncludeTimeSeriesButtonGroup_3.ForegroundColor = [1 1 1];
            app.IncludeTimeSeriesButtonGroup_3.Title = 'Include Time Series';
            app.IncludeTimeSeriesButtonGroup_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeTimeSeriesButtonGroup_3.Position = [14 321 123 78];

            % Create eventPanelTS_all
            app.eventPanelTS_all = uiradiobutton(app.IncludeTimeSeriesButtonGroup_3);
            app.eventPanelTS_all.Text = 'All';
            app.eventPanelTS_all.FontColor = [1 1 1];
            app.eventPanelTS_all.Position = [11 32 35.109375 15];
            app.eventPanelTS_all.Value = true;

            % Create eventPanelTS_selected
            app.eventPanelTS_selected = uiradiobutton(app.IncludeTimeSeriesButtonGroup_3);
            app.eventPanelTS_selected.Text = 'Selected';
            app.eventPanelTS_selected.FontColor = [1 1 1];
            app.eventPanelTS_selected.Position = [11 10 69.125 15];

            % Create IncludeEventsButtonGroup_2
            app.IncludeEventsButtonGroup_2 = uibuttongroup(app.CreateEventROIPanel);
            app.IncludeEventsButtonGroup_2.ForegroundColor = [1 1 1];
            app.IncludeEventsButtonGroup_2.Title = 'Include Events';
            app.IncludeEventsButtonGroup_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeEventsButtonGroup_2.Position = [280 321 123 78];

            % Create eventPanelEvents_all
            app.eventPanelEvents_all = uiradiobutton(app.IncludeEventsButtonGroup_2);
            app.eventPanelEvents_all.Text = 'All';
            app.eventPanelEvents_all.FontColor = [1 1 1];
            app.eventPanelEvents_all.Position = [11 32 35.109375 15];
            app.eventPanelEvents_all.Value = true;

            % Create eventPanelEvents_selected
            app.eventPanelEvents_selected = uiradiobutton(app.IncludeEventsButtonGroup_2);
            app.eventPanelEvents_selected.Text = 'Selected';
            app.eventPanelEvents_selected.FontColor = [1 1 1];
            app.eventPanelEvents_selected.Position = [11 10 69.125 15];

            % Create IncludeCellsButtonGroup
            app.IncludeCellsButtonGroup = uibuttongroup(app.CreateEventROIPanel);
            app.IncludeCellsButtonGroup.ForegroundColor = [1 1 1];
            app.IncludeCellsButtonGroup.Title = 'Include Cells';
            app.IncludeCellsButtonGroup.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeCellsButtonGroup.Position = [147 321 123 78];

            % Create eventPanelCells_all
            app.eventPanelCells_all = uiradiobutton(app.IncludeCellsButtonGroup);
            app.eventPanelCells_all.Text = 'All';
            app.eventPanelCells_all.FontColor = [1 1 1];
            app.eventPanelCells_all.Position = [11 32 35.109375 15];
            app.eventPanelCells_all.Value = true;

            % Create eventPanelCells_selected
            app.eventPanelCells_selected = uiradiobutton(app.IncludeCellsButtonGroup);
            app.eventPanelCells_selected.Text = 'Selected';
            app.eventPanelCells_selected.FontColor = [1 1 1];
            app.eventPanelCells_selected.Position = [11 10 69.125 15];

            % Create ySpacersEditFieldLabel
            app.ySpacersEditFieldLabel = uilabel(app.CreateEventROIPanel);
            app.ySpacersEditFieldLabel.VerticalAlignment = 'top';
            app.ySpacersEditFieldLabel.FontColor = [1 1 1];
            app.ySpacersEditFieldLabel.Position = [19 411 59 15];
            app.ySpacersEditFieldLabel.Text = 'y Spacers';

            % Create ySpacers
            app.ySpacers = uieditfield(app.CreateEventROIPanel, 'numeric');
            app.ySpacers.FontColor = [1 1 1];
            app.ySpacers.BackgroundColor = [0.2 0.2196 0.2706];
            app.ySpacers.Position = [118 407 48 22];
            app.ySpacers.Value = 100;

            % Create xPanelDimEditFieldLabel
            app.xPanelDimEditFieldLabel = uilabel(app.CreateEventROIPanel);
            app.xPanelDimEditFieldLabel.VerticalAlignment = 'top';
            app.xPanelDimEditFieldLabel.FontColor = [1 1 1];
            app.xPanelDimEditFieldLabel.Position = [185 471 70 15];
            app.xPanelDimEditFieldLabel.Text = 'x Panel Dim';

            % Create xPanelDim
            app.xPanelDim = uieditfield(app.CreateEventROIPanel, 'numeric');
            app.xPanelDim.FontColor = [1 1 1];
            app.xPanelDim.BackgroundColor = [0.2 0.2196 0.2706];
            app.xPanelDim.Position = [284 467 48 22];
            app.xPanelDim.Value = 1000;

            % Create yPanelDimEditFieldLabel
            app.yPanelDimEditFieldLabel = uilabel(app.CreateEventROIPanel);
            app.yPanelDimEditFieldLabel.VerticalAlignment = 'top';
            app.yPanelDimEditFieldLabel.FontColor = [1 1 1];
            app.yPanelDimEditFieldLabel.Position = [185 442 70 15];
            app.yPanelDimEditFieldLabel.Text = 'y Panel Dim';

            % Create yPanelDim
            app.yPanelDim = uieditfield(app.CreateEventROIPanel, 'numeric');
            app.yPanelDim.FontColor = [1 1 1];
            app.yPanelDim.BackgroundColor = [0.2 0.2196 0.2706];
            app.yPanelDim.Position = [284 438 48 22];
            app.yPanelDim.Value = 2500;

            % Create ExportFolderTimeSeriesFolderEditFieldLabel
            app.ExportFolderTimeSeriesFolderEditFieldLabel = uilabel(app.CreateEventROIPanel);
            app.ExportFolderTimeSeriesFolderEditFieldLabel.HorizontalAlignment = 'right';
            app.ExportFolderTimeSeriesFolderEditFieldLabel.VerticalAlignment = 'top';
            app.ExportFolderTimeSeriesFolderEditFieldLabel.FontColor = [1 1 1];
            app.ExportFolderTimeSeriesFolderEditFieldLabel.Position = [8 172 193 15];
            app.ExportFolderTimeSeriesFolderEditFieldLabel.Text = 'Export Folder (Time Series Folder)';

            % Create exportFolder
            app.exportFolder = uieditfield(app.CreateEventROIPanel, 'text');
            app.exportFolder.FontColor = [1 1 1];
            app.exportFolder.BackgroundColor = [0.2 0.2235 0.2706];
            app.exportFolder.Position = [13 148 390 22];

            % Create PanelNameEditFieldLabel
            app.PanelNameEditFieldLabel = uilabel(app.CreateEventROIPanel);
            app.PanelNameEditFieldLabel.HorizontalAlignment = 'right';
            app.PanelNameEditFieldLabel.VerticalAlignment = 'top';
            app.PanelNameEditFieldLabel.FontColor = [1 1 1];
            app.PanelNameEditFieldLabel.Position = [8 117 73 15];
            app.PanelNameEditFieldLabel.Text = 'Panel Name';

            % Create panelName
            app.panelName = uieditfield(app.CreateEventROIPanel, 'text');
            app.panelName.FontColor = [1 1 1];
            app.panelName.BackgroundColor = [0.2 0.2235 0.2706];
            app.panelName.Position = [13 93 173 22];
            app.panelName.Value = 'Panel01';

            % Create skipCAC_eventPanels
            app.skipCAC_eventPanels = uicheckbox(app.CreateEventROIPanel);
            app.skipCAC_eventPanels.Text = 'Skip chromatic aberration correction';
            app.skipCAC_eventPanels.FontColor = [1 1 1];
            app.skipCAC_eventPanels.Position = [254 285 219 15];

            % Create skipValidated_panels
            app.skipValidated_panels = uicheckbox(app.CreateEventROIPanel);
            app.skipValidated_panels.Text = 'Skip events validated in eventMasterKey';
            app.skipValidated_panels.FontColor = [1 1 1];
            app.skipValidated_panels.Position = [254 247 241.390625 15];

            % Create SelectDataDropDownLabel_2
            app.SelectDataDropDownLabel_2 = uilabel(app.CreateEventROIPanel);
            app.SelectDataDropDownLabel_2.HorizontalAlignment = 'right';
            app.SelectDataDropDownLabel_2.VerticalAlignment = 'top';
            app.SelectDataDropDownLabel_2.FontColor = [1 1 1];
            app.SelectDataDropDownLabel_2.Position = [8 247 68 15];
            app.SelectDataDropDownLabel_2.Text = 'Select Data';

            % Create dataType_panel
            app.dataType_panel = uidropdown(app.CreateEventROIPanel);
            app.dataType_panel.Items = {'Compartment tracking data', 'Cargo tracking data'};
            app.dataType_panel.FontColor = [1 1 1];
            app.dataType_panel.BackgroundColor = [0.2 0.2196 0.2706];
            app.dataType_panel.Position = [11 222 221 22];
            app.dataType_panel.Value = 'Compartment tracking data';

            % Create TrackingTab
            app.TrackingTab = uitab(app.TabGroup4);
            app.TrackingTab.Title = 'Tracking';
            app.TrackingTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create EventTrackingPanel
            app.EventTrackingPanel = uipanel(app.TrackingTab);
            app.EventTrackingPanel.ForegroundColor = [0.902 0.902 0.902];
            app.EventTrackingPanel.Title = 'Event Tracking';
            app.EventTrackingPanel.BackgroundColor = [0.1176 0.1294 0.1569];
            app.EventTrackingPanel.FontWeight = 'bold';
            app.EventTrackingPanel.Position = [0 2 710 519];

            % Create IncludeTimeSeriesButtonGroup_4
            app.IncludeTimeSeriesButtonGroup_4 = uibuttongroup(app.EventTrackingPanel);
            app.IncludeTimeSeriesButtonGroup_4.ForegroundColor = [1 1 1];
            app.IncludeTimeSeriesButtonGroup_4.Title = 'Include Time Series';
            app.IncludeTimeSeriesButtonGroup_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeTimeSeriesButtonGroup_4.Position = [292 412 123 78];

            % Create trackTS_all
            app.trackTS_all = uiradiobutton(app.IncludeTimeSeriesButtonGroup_4);
            app.trackTS_all.Text = 'All';
            app.trackTS_all.FontColor = [1 1 1];
            app.trackTS_all.Position = [11 32 35.109375 15];
            app.trackTS_all.Value = true;

            % Create trackTS_selected
            app.trackTS_selected = uiradiobutton(app.IncludeTimeSeriesButtonGroup_4);
            app.trackTS_selected.Text = 'Selected';
            app.trackTS_selected.FontColor = [1 1 1];
            app.trackTS_selected.Position = [11 10 69.125 15];

            % Create IncludeEventsButtonGroup_3
            app.IncludeEventsButtonGroup_3 = uibuttongroup(app.EventTrackingPanel);
            app.IncludeEventsButtonGroup_3.ForegroundColor = [1 1 1];
            app.IncludeEventsButtonGroup_3.Title = 'Include Events';
            app.IncludeEventsButtonGroup_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeEventsButtonGroup_3.Position = [292 328 123 78];

            % Create trackEvents_all
            app.trackEvents_all = uiradiobutton(app.IncludeEventsButtonGroup_3);
            app.trackEvents_all.Text = 'All';
            app.trackEvents_all.FontColor = [1 1 1];
            app.trackEvents_all.Position = [11 32 35.109375 15];
            app.trackEvents_all.Value = true;

            % Create trackEvents_selected
            app.trackEvents_selected = uiradiobutton(app.IncludeEventsButtonGroup_3);
            app.trackEvents_selected.Text = 'Selected';
            app.trackEvents_selected.FontColor = [1 1 1];
            app.trackEvents_selected.Position = [11 10 69.125 15];

            % Create EventDetectionSearchRadiusEditFieldLabel
            app.EventDetectionSearchRadiusEditFieldLabel = uilabel(app.EventTrackingPanel);
            app.EventDetectionSearchRadiusEditFieldLabel.VerticalAlignment = 'top';
            app.EventDetectionSearchRadiusEditFieldLabel.FontColor = [1 1 1];
            app.EventDetectionSearchRadiusEditFieldLabel.Position = [13 386 172 15];
            app.EventDetectionSearchRadiusEditFieldLabel.Text = 'Event Detection Search Radius';

            % Create EventDetectionSearchRadius
            app.EventDetectionSearchRadius = uieditfield(app.EventTrackingPanel, 'numeric');
            app.EventDetectionSearchRadius.FontColor = [1 1 1];
            app.EventDetectionSearchRadius.BackgroundColor = [0.2 0.2196 0.2706];
            app.EventDetectionSearchRadius.Position = [202 383 48 22];
            app.EventDetectionSearchRadius.Value = 3;

            % Create EventTrackingSearchRadiusEditFieldLabel
            app.EventTrackingSearchRadiusEditFieldLabel = uilabel(app.EventTrackingPanel);
            app.EventTrackingSearchRadiusEditFieldLabel.VerticalAlignment = 'top';
            app.EventTrackingSearchRadiusEditFieldLabel.FontColor = [1 1 1];
            app.EventTrackingSearchRadiusEditFieldLabel.Position = [13 359 166 15];
            app.EventTrackingSearchRadiusEditFieldLabel.Text = 'Event Tracking Search Radius';

            % Create EventTrackingSearchRadius
            app.EventTrackingSearchRadius = uieditfield(app.EventTrackingPanel, 'numeric');
            app.EventTrackingSearchRadius.FontColor = [1 1 1];
            app.EventTrackingSearchRadius.BackgroundColor = [0.2 0.2196 0.2706];
            app.EventTrackingSearchRadius.Position = [202 356 48 22];
            app.EventTrackingSearchRadius.Value = 8;

            % Create StartEventDetectionEditFieldLabel
            app.StartEventDetectionEditFieldLabel = uilabel(app.EventTrackingPanel);
            app.StartEventDetectionEditFieldLabel.VerticalAlignment = 'top';
            app.StartEventDetectionEditFieldLabel.FontColor = [1 1 1];
            app.StartEventDetectionEditFieldLabel.Position = [13 305 120 15];
            app.StartEventDetectionEditFieldLabel.Text = 'Start Event Detection';

            % Create StartEventDetection
            app.StartEventDetection = uieditfield(app.EventTrackingPanel, 'numeric');
            app.StartEventDetection.FontColor = [1 1 1];
            app.StartEventDetection.BackgroundColor = [0.2 0.2196 0.2706];
            app.StartEventDetection.Position = [202 302 48 22];
            app.StartEventDetection.Value = 20;

            % Create ConfirmEventDetectionEditFieldLabel
            app.ConfirmEventDetectionEditFieldLabel = uilabel(app.EventTrackingPanel);
            app.ConfirmEventDetectionEditFieldLabel.VerticalAlignment = 'top';
            app.ConfirmEventDetectionEditFieldLabel.FontColor = [1 1 1];
            app.ConfirmEventDetectionEditFieldLabel.Position = [13 278 137 15];
            app.ConfirmEventDetectionEditFieldLabel.Text = 'Confirm Event Detection';

            % Create ConfirmEventDetection
            app.ConfirmEventDetection = uieditfield(app.EventTrackingPanel, 'numeric');
            app.ConfirmEventDetection.FontColor = [1 1 1];
            app.ConfirmEventDetection.BackgroundColor = [0.2 0.2196 0.2706];
            app.ConfirmEventDetection.Position = [202 275 48 22];
            app.ConfirmEventDetection.Value = 5;

            % Create TrackTimesPostEventEditFieldLabel
            app.TrackTimesPostEventEditFieldLabel = uilabel(app.EventTrackingPanel);
            app.TrackTimesPostEventEditFieldLabel.VerticalAlignment = 'top';
            app.TrackTimesPostEventEditFieldLabel.FontColor = [1 1 1];
            app.TrackTimesPostEventEditFieldLabel.Position = [13 440 133 15];
            app.TrackTimesPostEventEditFieldLabel.Text = 'Track Times Post-Event';

            % Create TrackTimesPostEvent
            app.TrackTimesPostEvent = uieditfield(app.EventTrackingPanel, 'numeric');
            app.TrackTimesPostEvent.FontColor = [1 1 1];
            app.TrackTimesPostEvent.BackgroundColor = [0.2 0.2196 0.2706];
            app.TrackTimesPostEvent.Position = [202 437 48 22];
            app.TrackTimesPostEvent.Value = 50;

            % Create TrackTimesPreEventEditFieldLabel
            app.TrackTimesPreEventEditFieldLabel = uilabel(app.EventTrackingPanel);
            app.TrackTimesPreEventEditFieldLabel.VerticalAlignment = 'top';
            app.TrackTimesPreEventEditFieldLabel.FontColor = [1 1 1];
            app.TrackTimesPreEventEditFieldLabel.Position = [13 467 126 15];
            app.TrackTimesPreEventEditFieldLabel.Text = 'Track Times Pre-Event';

            % Create TrackTimesPreEvent
            app.TrackTimesPreEvent = uieditfield(app.EventTrackingPanel, 'numeric');
            app.TrackTimesPreEvent.FontColor = [1 1 1];
            app.TrackTimesPreEvent.BackgroundColor = [0.2 0.2196 0.2706];
            app.TrackTimesPreEvent.Position = [202 464 48 22];
            app.TrackTimesPreEvent.Value = 20;

            % Create MinTimesPreEditField_2Label
            app.MinTimesPreEditField_2Label = uilabel(app.EventTrackingPanel);
            app.MinTimesPreEditField_2Label.VerticalAlignment = 'top';
            app.MinTimesPreEditField_2Label.FontColor = [1 1 1];
            app.MinTimesPreEditField_2Label.Position = [13 413 82 15];
            app.MinTimesPreEditField_2Label.Text = 'Min Times Pre';

            % Create MinTimesPre
            app.MinTimesPre = uieditfield(app.EventTrackingPanel, 'numeric');
            app.MinTimesPre.FontColor = [1 1 1];
            app.MinTimesPre.BackgroundColor = [0.2 0.2196 0.2706];
            app.MinTimesPre.Position = [202 410 48 22];
            app.MinTimesPre.Value = 5;

            % Create zSearchDistanceEditField_2Label
            app.zSearchDistanceEditField_2Label = uilabel(app.EventTrackingPanel);
            app.zSearchDistanceEditField_2Label.VerticalAlignment = 'top';
            app.zSearchDistanceEditField_2Label.FontColor = [1 1 1];
            app.zSearchDistanceEditField_2Label.Position = [13 332 102 15];
            app.zSearchDistanceEditField_2Label.Text = 'z Search Distance';

            % Create zSearchDistance
            app.zSearchDistance = uieditfield(app.EventTrackingPanel, 'numeric');
            app.zSearchDistance.FontColor = [1 1 1];
            app.zSearchDistance.BackgroundColor = [0.2 0.2196 0.2706];
            app.zSearchDistance.Position = [202 329 48 22];
            app.zSearchDistance.Value = 5;

            % Create EventDetectionThresholdEditFieldLabel
            app.EventDetectionThresholdEditFieldLabel = uilabel(app.EventTrackingPanel);
            app.EventDetectionThresholdEditFieldLabel.VerticalAlignment = 'top';
            app.EventDetectionThresholdEditFieldLabel.FontColor = [1 1 1];
            app.EventDetectionThresholdEditFieldLabel.Position = [13 251 147 15];
            app.EventDetectionThresholdEditFieldLabel.Text = 'Event Detection Threshold';

            % Create EventDetectionThreshold
            app.EventDetectionThreshold = uieditfield(app.EventTrackingPanel, 'numeric');
            app.EventDetectionThreshold.FontColor = [1 1 1];
            app.EventDetectionThreshold.BackgroundColor = [0.2 0.2196 0.2706];
            app.EventDetectionThreshold.Position = [202 248 48 22];
            app.EventDetectionThreshold.Value = 5;

            % Create TrackCompartmentsButton
            app.TrackCompartmentsButton = uibutton(app.EventTrackingPanel, 'push');
            app.TrackCompartmentsButton.ButtonPushedFcn = createCallbackFcn(app, @TrackCompartmentsButtonPushed, true);
            app.TrackCompartmentsButton.BackgroundColor = [0.4627 0.1961 0.2471];
            app.TrackCompartmentsButton.FontColor = [1 1 1];
            app.TrackCompartmentsButton.Position = [443 328 138 30];
            app.TrackCompartmentsButton.Text = 'Track Compartments';

            % Create ObjectMaskThresholdLabel
            app.ObjectMaskThresholdLabel = uilabel(app.EventTrackingPanel);
            app.ObjectMaskThresholdLabel.VerticalAlignment = 'top';
            app.ObjectMaskThresholdLabel.FontColor = [1 1 1];
            app.ObjectMaskThresholdLabel.Position = [13 224 130 15];
            app.ObjectMaskThresholdLabel.Text = 'Object Mask Threshold';

            % Create ObjectMaskThreshold
            app.ObjectMaskThreshold = uieditfield(app.EventTrackingPanel, 'numeric');
            app.ObjectMaskThreshold.FontColor = [1 1 1];
            app.ObjectMaskThreshold.BackgroundColor = [0.2 0.2196 0.2706];
            app.ObjectMaskThreshold.Position = [202 221 48 22];
            app.ObjectMaskThreshold.Value = 5;

            % Create PrimaryButtonGroup
            app.PrimaryButtonGroup = uibuttongroup(app.EventTrackingPanel);
            app.PrimaryButtonGroup.ForegroundColor = [1 1 1];
            app.PrimaryButtonGroup.TitlePosition = 'centertop';
            app.PrimaryButtonGroup.Title = 'Primary';
            app.PrimaryButtonGroup.BackgroundColor = [0.2 0.2196 0.2706];
            app.PrimaryButtonGroup.Position = [443 369 69 99];

            % Create ChAButton_3
            app.ChAButton_3 = uiradiobutton(app.PrimaryButtonGroup);
            app.ChAButton_3.Text = 'Ch. A';
            app.ChAButton_3.FontColor = [1 1 1];
            app.ChAButton_3.Position = [11 53 51.796875 15];
            app.ChAButton_3.Value = true;

            % Create ChBButton_3
            app.ChBButton_3 = uiradiobutton(app.PrimaryButtonGroup);
            app.ChBButton_3.Text = 'Ch. B';
            app.ChBButton_3.FontColor = [1 1 1];
            app.ChBButton_3.Position = [11 31 52.234375 15];

            % Create ChCButton_3
            app.ChCButton_3 = uiradiobutton(app.PrimaryButtonGroup);
            app.ChCButton_3.Text = 'Ch. C';
            app.ChCButton_3.FontColor = [1 1 1];
            app.ChCButton_3.Position = [11 9 52.6875 15];

            % Create SecondaryButtonGroup
            app.SecondaryButtonGroup = uibuttongroup(app.EventTrackingPanel);
            app.SecondaryButtonGroup.ForegroundColor = [1 1 1];
            app.SecondaryButtonGroup.TitlePosition = 'centertop';
            app.SecondaryButtonGroup.Title = 'Secondary';
            app.SecondaryButtonGroup.BackgroundColor = [0.2 0.2196 0.2706];
            app.SecondaryButtonGroup.Position = [532 369 69 99];

            % Create ChAButton_2
            app.ChAButton_2 = uiradiobutton(app.SecondaryButtonGroup);
            app.ChAButton_2.Text = 'Ch. A';
            app.ChAButton_2.FontColor = [1 1 1];
            app.ChAButton_2.Position = [11 53 51.796875 15];

            % Create ChBButton_2
            app.ChBButton_2 = uiradiobutton(app.SecondaryButtonGroup);
            app.ChBButton_2.Text = 'Ch. B';
            app.ChBButton_2.FontColor = [1 1 1];
            app.ChBButton_2.Position = [11 31 52.234375 15];
            app.ChBButton_2.Value = true;

            % Create ChCButton_2
            app.ChCButton_2 = uiradiobutton(app.SecondaryButtonGroup);
            app.ChCButton_2.Text = 'Ch. C';
            app.ChCButton_2.FontColor = [1 1 1];
            app.ChCButton_2.Position = [11 9 52.6875 15];

            % Create PartitionManualCargoTracksPanel
            app.PartitionManualCargoTracksPanel = uipanel(app.EventTrackingPanel);
            app.PartitionManualCargoTracksPanel.ForegroundColor = [0.902 0.902 0.902];
            app.PartitionManualCargoTracksPanel.Title = 'Partition Manual Cargo Tracks';
            app.PartitionManualCargoTracksPanel.BackgroundColor = [0.1216 0.1294 0.1608];
            app.PartitionManualCargoTracksPanel.FontWeight = 'bold';
            app.PartitionManualCargoTracksPanel.Position = [0 -5 710 94];

            % Create PartitionTracksButton
            app.PartitionTracksButton = uibutton(app.PartitionManualCargoTracksPanel, 'push');
            app.PartitionTracksButton.ButtonPushedFcn = createCallbackFcn(app, @PartitionTracksButtonPushed, true);
            app.PartitionTracksButton.BackgroundColor = [0.4627 0.1961 0.2471];
            app.PartitionTracksButton.FontColor = [1 1 1];
            app.PartitionTracksButton.Position = [573.5 12 100 30];
            app.PartitionTracksButton.Text = 'Partition Tracks';

            % Create manTrackscsvpanelMetadatamatEditFieldLabel
            app.manTrackscsvpanelMetadatamatEditFieldLabel = uilabel(app.PartitionManualCargoTracksPanel);
            app.manTrackscsvpanelMetadatamatEditFieldLabel.HorizontalAlignment = 'right';
            app.manTrackscsvpanelMetadatamatEditFieldLabel.VerticalAlignment = 'top';
            app.manTrackscsvpanelMetadatamatEditFieldLabel.FontAngle = 'italic';
            app.manTrackscsvpanelMetadatamatEditFieldLabel.FontColor = [1 1 1];
            app.manTrackscsvpanelMetadatamatEditFieldLabel.Position = [20 45 191 15];
            app.manTrackscsvpanelMetadatamatEditFieldLabel.Text = 'manTracks.csv panelMetadata.mat';

            % Create manTracksPath
            app.manTracksPath = uieditfield(app.PartitionManualCargoTracksPanel, 'text');
            app.manTracksPath.FontColor = [1 1 1];
            app.manTracksPath.BackgroundColor = [0.2 0.2196 0.2706];
            app.manTracksPath.Position = [21 16 504 22];

            % Create FitCargoTrackingLabel
            app.FitCargoTrackingLabel = uilabel(app.EventTrackingPanel);
            app.FitCargoTrackingLabel.VerticalAlignment = 'top';
            app.FitCargoTrackingLabel.FontColor = [1 1 1];
            app.FitCargoTrackingLabel.Position = [13 198 103 15];
            app.FitCargoTrackingLabel.Text = 'Fit Cargo Tracking';

            % Create fitManTracks
            app.fitManTracks = uieditfield(app.EventTrackingPanel, 'numeric');
            app.fitManTracks.FontColor = [1 1 1];
            app.fitManTracks.BackgroundColor = [0.2 0.2196 0.2706];
            app.fitManTracks.Position = [202 194 48 22];
            app.fitManTracks.Value = 1;

            % Create runCargoTracking
            app.runCargoTracking = uibutton(app.EventTrackingPanel, 'push');
            app.runCargoTracking.ButtonPushedFcn = createCallbackFcn(app, @runCargoTrackingButtonPushed, true);
            app.runCargoTracking.BackgroundColor = [0.4627 0.1961 0.2471];
            app.runCargoTracking.FontColor = [1 1 1];
            app.runCargoTracking.Position = [589 328 100 30];
            app.runCargoTracking.Text = 'Track Cargo';

            % Create TertiaryButtonGroup
            app.TertiaryButtonGroup = uibuttongroup(app.EventTrackingPanel);
            app.TertiaryButtonGroup.ForegroundColor = [1 1 1];
            app.TertiaryButtonGroup.TitlePosition = 'centertop';
            app.TertiaryButtonGroup.Title = 'Tertiary';
            app.TertiaryButtonGroup.BackgroundColor = [0.2 0.2196 0.2706];
            app.TertiaryButtonGroup.Position = [621 369 68 99];

            % Create ChAButton
            app.ChAButton = uiradiobutton(app.TertiaryButtonGroup);
            app.ChAButton.Text = 'Ch. A';
            app.ChAButton.FontColor = [1 1 1];
            app.ChAButton.Position = [11 53 51.796875 15];

            % Create ChBButton
            app.ChBButton = uiradiobutton(app.TertiaryButtonGroup);
            app.ChBButton.Text = 'Ch. B';
            app.ChBButton.FontColor = [1 1 1];
            app.ChBButton.Position = [11 31 52.234375 15];

            % Create ChCButton
            app.ChCButton = uiradiobutton(app.TertiaryButtonGroup);
            app.ChCButton.Text = 'Ch. C';
            app.ChCButton.FontColor = [1 1 1];
            app.ChCButton.Position = [11 9 52.6875 15];
            app.ChCButton.Value = true;

            % Create ChannelOrderLabel
            app.ChannelOrderLabel = uilabel(app.EventTrackingPanel);
            app.ChannelOrderLabel.VerticalAlignment = 'top';
            app.ChannelOrderLabel.FontWeight = 'bold';
            app.ChannelOrderLabel.FontColor = [1 1 1];
            app.ChannelOrderLabel.Position = [443 473 89 15];
            app.ChannelOrderLabel.Text = 'Channel Order';

            % Create PredeterminedObjectMaskSizeLabel
            app.PredeterminedObjectMaskSizeLabel = uilabel(app.EventTrackingPanel);
            app.PredeterminedObjectMaskSizeLabel.VerticalAlignment = 'top';
            app.PredeterminedObjectMaskSizeLabel.FontColor = [1 1 1];
            app.PredeterminedObjectMaskSizeLabel.Position = [13 172 183 15];
            app.PredeterminedObjectMaskSizeLabel.Text = 'Predetermined Object Mask Size';

            % Create predetObjectMask
            app.predetObjectMask = uieditfield(app.EventTrackingPanel, 'numeric');
            app.predetObjectMask.FontColor = [1 1 1];
            app.predetObjectMask.BackgroundColor = [0.2 0.2196 0.2706];
            app.predetObjectMask.Position = [202 168 48 22];
            app.predetObjectMask.Value = 6;

            % Create skipCAC_tracking
            app.skipCAC_tracking = uicheckbox(app.EventTrackingPanel);
            app.skipCAC_tracking.Text = 'Skip chromatic aberration correction';
            app.skipCAC_tracking.FontColor = [1 1 1];
            app.skipCAC_tracking.Position = [293 275 219 15];

            % Create skipAutoDetection
            app.skipAutoDetection = uicheckbox(app.EventTrackingPanel);
            app.skipAutoDetection.Text = 'Skip automatic event detection';
            app.skipAutoDetection.FontColor = [1 1 1];
            app.skipAutoDetection.Position = [294 248 188 15];

            % Create modifyTracks_compartment
            app.modifyTracks_compartment = uibutton(app.EventTrackingPanel, 'push');
            app.modifyTracks_compartment.ButtonPushedFcn = createCallbackFcn(app, @modifyTracks_compartmentPushed, true);
            app.modifyTracks_compartment.BackgroundColor = [0.4627 0.1961 0.2471];
            app.modifyTracks_compartment.FontColor = [1 1 1];
            app.modifyTracks_compartment.Position = [397.5 100 167 30];
            app.modifyTracks_compartment.Text = 'Re-Quantify Compartments';

            % Create modifyTracks_cargo
            app.modifyTracks_cargo = uibutton(app.EventTrackingPanel, 'push');
            app.modifyTracks_cargo.ButtonPushedFcn = createCallbackFcn(app, @modifyTracks_cargoButtonPushed, true);
            app.modifyTracks_cargo.BackgroundColor = [0.4627 0.1961 0.2471];
            app.modifyTracks_cargo.FontColor = [1 1 1];
            app.modifyTracks_cargo.Position = [574 100 123 30];
            app.modifyTracks_cargo.Text = 'Re-Quantify Cargo';

            % Create NewObjectMaskSizeLabel
            app.NewObjectMaskSizeLabel = uilabel(app.EventTrackingPanel);
            app.NewObjectMaskSizeLabel.VerticalAlignment = 'top';
            app.NewObjectMaskSizeLabel.FontColor = [1 1 1];
            app.NewObjectMaskSizeLabel.Position = [457 147 127 15];
            app.NewObjectMaskSizeLabel.Text = 'New Object Mask Size';

            % Create predetObjectMask_retrack
            app.predetObjectMask_retrack = uieditfield(app.EventTrackingPanel, 'numeric');
            app.predetObjectMask_retrack.FontColor = [1 1 1];
            app.predetObjectMask_retrack.BackgroundColor = [0.2 0.2196 0.2706];
            app.predetObjectMask_retrack.Position = [398 143 48 22];

            % Create VerifynewquantificationofallselecteddataCheckBox
            app.VerifynewquantificationofallselecteddataCheckBox = uicheckbox(app.EventTrackingPanel);
            app.VerifynewquantificationofallselecteddataCheckBox.Text = 'Verify new quantification of all selected data';
            app.VerifynewquantificationofallselecteddataCheckBox.FontColor = [1 1 1];
            app.VerifynewquantificationofallselecteddataCheckBox.Position = [398 175 260.34375 15];

            % Create skipValidated_tracking
            app.skipValidated_tracking = uicheckbox(app.EventTrackingPanel);
            app.skipValidated_tracking.Text = 'Skip events validated in eventMasterKey';
            app.skipValidated_tracking.FontColor = [1 1 1];
            app.skipValidated_tracking.Position = [294 221 241.390625 15];
            app.skipValidated_tracking.Value = true;

            % Create NormalizeTab
            app.NormalizeTab = uitab(app.TabGroup4);
            app.NormalizeTab.Title = 'Normalize';
            app.NormalizeTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create NormalizeTrackingDataPanel
            app.NormalizeTrackingDataPanel = uipanel(app.NormalizeTab);
            app.NormalizeTrackingDataPanel.ForegroundColor = [0.902 0.902 0.902];
            app.NormalizeTrackingDataPanel.Title = 'Normalize Tracking Data';
            app.NormalizeTrackingDataPanel.BackgroundColor = [0.1176 0.1294 0.1608];
            app.NormalizeTrackingDataPanel.FontWeight = 'bold';
            app.NormalizeTrackingDataPanel.Position = [1 2 709 522];

            % Create ObjectIntensityThresholdEditFieldLabel
            app.ObjectIntensityThresholdEditFieldLabel = uilabel(app.NormalizeTrackingDataPanel);
            app.ObjectIntensityThresholdEditFieldLabel.HorizontalAlignment = 'right';
            app.ObjectIntensityThresholdEditFieldLabel.VerticalAlignment = 'top';
            app.ObjectIntensityThresholdEditFieldLabel.FontColor = [1 1 1];
            app.ObjectIntensityThresholdEditFieldLabel.Position = [12 355 146 15];
            app.ObjectIntensityThresholdEditFieldLabel.Text = 'Object Intensity Threshold';

            % Create ObjectIntensityThreshold
            app.ObjectIntensityThreshold = uieditfield(app.NormalizeTrackingDataPanel, 'numeric');
            app.ObjectIntensityThreshold.FontColor = [1 1 1];
            app.ObjectIntensityThreshold.BackgroundColor = [0.2 0.2196 0.2706];
            app.ObjectIntensityThreshold.Position = [196 351 46 22];
            app.ObjectIntensityThreshold.Value = 1;

            % Create NormalizeDataButton
            app.NormalizeDataButton = uibutton(app.NormalizeTrackingDataPanel, 'push');
            app.NormalizeDataButton.ButtonPushedFcn = createCallbackFcn(app, @NormalizeDataButtonPushed, true);
            app.NormalizeDataButton.BackgroundColor = [0.4627 0.1961 0.2471];
            app.NormalizeDataButton.FontColor = [1 1 1];
            app.NormalizeDataButton.Position = [544 449 136 30];
            app.NormalizeDataButton.Text = 'Normalize Data';

            % Create IncludeTimeSeriesButtonGroup_5
            app.IncludeTimeSeriesButtonGroup_5 = uibuttongroup(app.NormalizeTrackingDataPanel);
            app.IncludeTimeSeriesButtonGroup_5.ForegroundColor = [1 1 1];
            app.IncludeTimeSeriesButtonGroup_5.Title = 'Include Time Series';
            app.IncludeTimeSeriesButtonGroup_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeTimeSeriesButtonGroup_5.Position = [12 413 123 78];

            % Create normTS_all
            app.normTS_all = uiradiobutton(app.IncludeTimeSeriesButtonGroup_5);
            app.normTS_all.Text = 'All';
            app.normTS_all.FontColor = [1 1 1];
            app.normTS_all.Position = [11 32 35.109375 15];
            app.normTS_all.Value = true;

            % Create normTS_selected
            app.normTS_selected = uiradiobutton(app.IncludeTimeSeriesButtonGroup_5);
            app.normTS_selected.Text = 'Selected';
            app.normTS_selected.FontColor = [1 1 1];
            app.normTS_selected.Position = [11 10 69.125 15];

            % Create IncludeEventsButtonGroup_4
            app.IncludeEventsButtonGroup_4 = uibuttongroup(app.NormalizeTrackingDataPanel);
            app.IncludeEventsButtonGroup_4.ForegroundColor = [1 1 1];
            app.IncludeEventsButtonGroup_4.Title = 'Include Events';
            app.IncludeEventsButtonGroup_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeEventsButtonGroup_4.Position = [168 413 123 78];

            % Create normEvents_all
            app.normEvents_all = uiradiobutton(app.IncludeEventsButtonGroup_4);
            app.normEvents_all.Text = 'All';
            app.normEvents_all.FontColor = [1 1 1];
            app.normEvents_all.Position = [11 32 35.109375 15];
            app.normEvents_all.Value = true;

            % Create normEvents_selected
            app.normEvents_selected = uiradiobutton(app.IncludeEventsButtonGroup_4);
            app.normEvents_selected.Text = 'Selected';
            app.normEvents_selected.FontColor = [1 1 1];
            app.normEvents_selected.Position = [11 10 69.125 15];

            % Create ChADropDownLabel_11
            app.ChADropDownLabel_11 = uilabel(app.NormalizeTrackingDataPanel);
            app.ChADropDownLabel_11.HorizontalAlignment = 'right';
            app.ChADropDownLabel_11.VerticalAlignment = 'top';
            app.ChADropDownLabel_11.FontColor = [1 1 1];
            app.ChADropDownLabel_11.Position = [6 249 35 15];
            app.ChADropDownLabel_11.Text = 'Ch. A';

            % Create ChADropDown
            app.ChADropDown = uidropdown(app.NormalizeTrackingDataPanel);
            app.ChADropDown.Items = {'Cell objects', 'Pre-release', 'Cell background', 'No normalization', 'Local background'};
            app.ChADropDown.FontColor = [1 1 1];
            app.ChADropDown.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChADropDown.Position = [56 245 136 22];
            app.ChADropDown.Value = 'Cell background';

            % Create ChBDropDownLabel_11
            app.ChBDropDownLabel_11 = uilabel(app.NormalizeTrackingDataPanel);
            app.ChBDropDownLabel_11.HorizontalAlignment = 'right';
            app.ChBDropDownLabel_11.VerticalAlignment = 'top';
            app.ChBDropDownLabel_11.FontColor = [1 1 1];
            app.ChBDropDownLabel_11.Position = [6 217 35 15];
            app.ChBDropDownLabel_11.Text = 'Ch. B';

            % Create ChBDropDown
            app.ChBDropDown = uidropdown(app.NormalizeTrackingDataPanel);
            app.ChBDropDown.Items = {'Cell objects', 'Pre-release', 'Cell background', 'No normalization', 'Local background'};
            app.ChBDropDown.FontColor = [1 1 1];
            app.ChBDropDown.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChBDropDown.Position = [56 213 136 22];
            app.ChBDropDown.Value = 'Cell objects';

            % Create ChCDropDownLabel_11
            app.ChCDropDownLabel_11 = uilabel(app.NormalizeTrackingDataPanel);
            app.ChCDropDownLabel_11.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_11.VerticalAlignment = 'top';
            app.ChCDropDownLabel_11.FontColor = [1 1 1];
            app.ChCDropDownLabel_11.Position = [5 185 36 15];
            app.ChCDropDownLabel_11.Text = 'Ch. C';

            % Create ChCDropDown
            app.ChCDropDown = uidropdown(app.NormalizeTrackingDataPanel);
            app.ChCDropDown.Items = {'Cell objects', 'Pre-release', 'Cell background', 'No normalization', 'Local background'};
            app.ChCDropDown.FontColor = [1 1 1];
            app.ChCDropDown.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChCDropDown.Position = [56 181 136 22];
            app.ChCDropDown.Value = 'Cell objects';

            % Create SelectDataDropDownLabel
            app.SelectDataDropDownLabel = uilabel(app.NormalizeTrackingDataPanel);
            app.SelectDataDropDownLabel.HorizontalAlignment = 'right';
            app.SelectDataDropDownLabel.VerticalAlignment = 'top';
            app.SelectDataDropDownLabel.FontColor = [1 1 1];
            app.SelectDataDropDownLabel.Position = [288 344 68 15];
            app.SelectDataDropDownLabel.Text = 'Select Data';

            % Create dataType
            app.dataType = uidropdown(app.NormalizeTrackingDataPanel);
            app.dataType.Items = {'Compartment tracking data', 'Cargo tracking data'};
            app.dataType.FontColor = [1 1 1];
            app.dataType.BackgroundColor = [0.2 0.2196 0.2706];
            app.dataType.Position = [291 319 228 22];
            app.dataType.Value = 'Compartment tracking data';

            % Create LocalbackgroundrollingmeanLabel
            app.LocalbackgroundrollingmeanLabel = uilabel(app.NormalizeTrackingDataPanel);
            app.LocalbackgroundrollingmeanLabel.BackgroundColor = [0.1176 0.1294 0.1569];
            app.LocalbackgroundrollingmeanLabel.HorizontalAlignment = 'right';
            app.LocalbackgroundrollingmeanLabel.VerticalAlignment = 'top';
            app.LocalbackgroundrollingmeanLabel.FontColor = [1 1 1];
            app.LocalbackgroundrollingmeanLabel.Position = [12 323 174 15];
            app.LocalbackgroundrollingmeanLabel.Text = 'Local background rolling mean';

            % Create nRoll
            app.nRoll = uieditfield(app.NormalizeTrackingDataPanel, 'numeric');
            app.nRoll.FontColor = [1 1 1];
            app.nRoll.BackgroundColor = [0.2 0.2235 0.2706];
            app.nRoll.Position = [196 319 46 22];
            app.nRoll.Value = 5;

            % Create bgCorrection_ChA
            app.bgCorrection_ChA = uidropdown(app.NormalizeTrackingDataPanel);
            app.bgCorrection_ChA.Items = {'Local', 'Cell', 'Image'};
            app.bgCorrection_ChA.FontColor = [1 1 1];
            app.bgCorrection_ChA.BackgroundColor = [0.2 0.2196 0.2706];
            app.bgCorrection_ChA.Position = [203 245 155 22];
            app.bgCorrection_ChA.Value = 'Cell';

            % Create bgCorrection_ChB
            app.bgCorrection_ChB = uidropdown(app.NormalizeTrackingDataPanel);
            app.bgCorrection_ChB.Items = {'Local', 'Cell', 'Image'};
            app.bgCorrection_ChB.FontColor = [1 1 1];
            app.bgCorrection_ChB.BackgroundColor = [0.2 0.2196 0.2706];
            app.bgCorrection_ChB.Position = [203 213 155 22];
            app.bgCorrection_ChB.Value = 'Local';

            % Create bgCorrection_ChC
            app.bgCorrection_ChC = uidropdown(app.NormalizeTrackingDataPanel);
            app.bgCorrection_ChC.Items = {'Local', 'Cell', 'Image'};
            app.bgCorrection_ChC.FontColor = [1 1 1];
            app.bgCorrection_ChC.BackgroundColor = [0.2 0.2196 0.2706];
            app.bgCorrection_ChC.Position = [203 181 155 22];
            app.bgCorrection_ChC.Value = 'Local';

            % Create NormalizationLabel
            app.NormalizationLabel = uilabel(app.NormalizeTrackingDataPanel);
            app.NormalizationLabel.VerticalAlignment = 'top';
            app.NormalizationLabel.FontWeight = 'bold';
            app.NormalizationLabel.FontColor = [0.9412 0.9412 0.9412];
            app.NormalizationLabel.Position = [57 276 85 15];
            app.NormalizationLabel.Text = 'Normalization';

            % Create BackgroundcorrectionLabel
            app.BackgroundcorrectionLabel = uilabel(app.NormalizeTrackingDataPanel);
            app.BackgroundcorrectionLabel.VerticalAlignment = 'top';
            app.BackgroundcorrectionLabel.FontWeight = 'bold';
            app.BackgroundcorrectionLabel.FontColor = [0.9412 0.9412 0.9412];
            app.BackgroundcorrectionLabel.Position = [203 276 138 15];
            app.BackgroundcorrectionLabel.Text = 'Background correction';

            % Create ObjectmeasurementLabel
            app.ObjectmeasurementLabel = uilabel(app.NormalizeTrackingDataPanel);
            app.ObjectmeasurementLabel.VerticalAlignment = 'top';
            app.ObjectmeasurementLabel.FontWeight = 'bold';
            app.ObjectmeasurementLabel.FontColor = [0.9412 0.9412 0.9412];
            app.ObjectmeasurementLabel.Position = [368 276 125 15];
            app.ObjectmeasurementLabel.Text = 'Object measurement';

            % Create LocalbackgroundmeasurementLabel
            app.LocalbackgroundmeasurementLabel = uilabel(app.NormalizeTrackingDataPanel);
            app.LocalbackgroundmeasurementLabel.VerticalAlignment = 'top';
            app.LocalbackgroundmeasurementLabel.FontWeight = 'bold';
            app.LocalbackgroundmeasurementLabel.FontColor = [0.9412 0.9412 0.9412];
            app.LocalbackgroundmeasurementLabel.Position = [516 276 192 15];
            app.LocalbackgroundmeasurementLabel.Text = 'Local background measurement';

            % Create ChA_objMeasure
            app.ChA_objMeasure = uidropdown(app.NormalizeTrackingDataPanel);
            app.ChA_objMeasure.Items = {'Mean', 'Median'};
            app.ChA_objMeasure.FontColor = [1 1 1];
            app.ChA_objMeasure.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_objMeasure.Position = [368 243 136 22];
            app.ChA_objMeasure.Value = 'Mean';

            % Create ChB_objMeasure
            app.ChB_objMeasure = uidropdown(app.NormalizeTrackingDataPanel);
            app.ChB_objMeasure.Items = {'Mean', 'Median'};
            app.ChB_objMeasure.FontColor = [1 1 1];
            app.ChB_objMeasure.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_objMeasure.Position = [368 213 136 22];
            app.ChB_objMeasure.Value = 'Mean';

            % Create ChC_objMeasure
            app.ChC_objMeasure = uidropdown(app.NormalizeTrackingDataPanel);
            app.ChC_objMeasure.Items = {'Mean', 'Median'};
            app.ChC_objMeasure.FontColor = [1 1 1];
            app.ChC_objMeasure.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_objMeasure.Position = [368 181 136 22];
            app.ChC_objMeasure.Value = 'Mean';

            % Create ChA_lbgMeasure
            app.ChA_lbgMeasure = uidropdown(app.NormalizeTrackingDataPanel);
            app.ChA_lbgMeasure.Items = {'Mean', 'Median'};
            app.ChA_lbgMeasure.FontColor = [1 1 1];
            app.ChA_lbgMeasure.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_lbgMeasure.Position = [516 245 136 22];
            app.ChA_lbgMeasure.Value = 'Median';

            % Create ChB_lbgMeasure
            app.ChB_lbgMeasure = uidropdown(app.NormalizeTrackingDataPanel);
            app.ChB_lbgMeasure.Items = {'Mean', 'Median'};
            app.ChB_lbgMeasure.FontColor = [1 1 1];
            app.ChB_lbgMeasure.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_lbgMeasure.Position = [516 213 136 22];
            app.ChB_lbgMeasure.Value = 'Median';

            % Create ChC_lbgMeasure
            app.ChC_lbgMeasure = uidropdown(app.NormalizeTrackingDataPanel);
            app.ChC_lbgMeasure.Items = {'Mean', 'Median'};
            app.ChC_lbgMeasure.FontColor = [1 1 1];
            app.ChC_lbgMeasure.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_lbgMeasure.Position = [516 181 136 22];
            app.ChC_lbgMeasure.Value = 'Median';

            % Create CollectTab
            app.CollectTab = uitab(app.TabGroup4);
            app.CollectTab.Title = 'Collect';
            app.CollectTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create CollectTrackingDataPanel
            app.CollectTrackingDataPanel = uipanel(app.CollectTab);
            app.CollectTrackingDataPanel.ForegroundColor = [0.902 0.902 0.902];
            app.CollectTrackingDataPanel.Title = 'Collect Tracking Data';
            app.CollectTrackingDataPanel.BackgroundColor = [0.1176 0.1294 0.1608];
            app.CollectTrackingDataPanel.FontWeight = 'bold';
            app.CollectTrackingDataPanel.Position = [1 2 709 523];

            % Create IncludeTimeSeriesButtonGroup_6
            app.IncludeTimeSeriesButtonGroup_6 = uibuttongroup(app.CollectTrackingDataPanel);
            app.IncludeTimeSeriesButtonGroup_6.ForegroundColor = [1 1 1];
            app.IncludeTimeSeriesButtonGroup_6.Title = 'Include Time Series';
            app.IncludeTimeSeriesButtonGroup_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeTimeSeriesButtonGroup_6.Position = [11 413 123 78];

            % Create collectTS_all
            app.collectTS_all = uiradiobutton(app.IncludeTimeSeriesButtonGroup_6);
            app.collectTS_all.Text = 'All';
            app.collectTS_all.FontColor = [1 1 1];
            app.collectTS_all.Position = [11 32 35.109375 15];
            app.collectTS_all.Value = true;

            % Create collectTS_selected
            app.collectTS_selected = uiradiobutton(app.IncludeTimeSeriesButtonGroup_6);
            app.collectTS_selected.Text = 'Selected';
            app.collectTS_selected.FontColor = [1 1 1];
            app.collectTS_selected.Position = [11 10 69.125 15];

            % Create IncludeEventsButtonGroup_5
            app.IncludeEventsButtonGroup_5 = uibuttongroup(app.CollectTrackingDataPanel);
            app.IncludeEventsButtonGroup_5.ForegroundColor = [1 1 1];
            app.IncludeEventsButtonGroup_5.Title = 'Include Events';
            app.IncludeEventsButtonGroup_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeEventsButtonGroup_5.Position = [144 413 123 78];

            % Create collectEvents_all
            app.collectEvents_all = uiradiobutton(app.IncludeEventsButtonGroup_5);
            app.collectEvents_all.Text = 'All';
            app.collectEvents_all.FontColor = [1 1 1];
            app.collectEvents_all.Position = [11 32 35.109375 15];
            app.collectEvents_all.Value = true;

            % Create collectEvents_selected
            app.collectEvents_selected = uiradiobutton(app.IncludeEventsButtonGroup_5);
            app.collectEvents_selected.Text = 'Selected';
            app.collectEvents_selected.FontColor = [1 1 1];
            app.collectEvents_selected.Position = [11 10 69.125 15];

            % Create CollectDataButton
            app.CollectDataButton = uibutton(app.CollectTrackingDataPanel, 'push');
            app.CollectDataButton.ButtonPushedFcn = createCallbackFcn(app, @CollectDataButtonPushed, true);
            app.CollectDataButton.BackgroundColor = [0.4627 0.1961 0.2471];
            app.CollectDataButton.FontColor = [1 1 1];
            app.CollectDataButton.Position = [289.5 413 100 30];
            app.CollectDataButton.Text = 'Collect Data';

            % Create SelectDataDropDown_2Label
            app.SelectDataDropDown_2Label = uilabel(app.CollectTrackingDataPanel);
            app.SelectDataDropDown_2Label.HorizontalAlignment = 'right';
            app.SelectDataDropDown_2Label.VerticalAlignment = 'top';
            app.SelectDataDropDown_2Label.FontColor = [1 1 1];
            app.SelectDataDropDown_2Label.Position = [5 374 68 15];
            app.SelectDataDropDown_2Label.Text = 'Select Data';

            % Create SelectDataDropDown_2
            app.SelectDataDropDown_2 = uidropdown(app.CollectTrackingDataPanel);
            app.SelectDataDropDown_2.Items = {'Compartment tracking data', 'Cargo tracking data'};
            app.SelectDataDropDown_2.FontColor = [1 1 1];
            app.SelectDataDropDown_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.SelectDataDropDown_2.Position = [8 345 297 22];
            app.SelectDataDropDown_2.Value = 'Compartment tracking data';

            % Create CollectandStratifyDataButton
            app.CollectandStratifyDataButton = uibutton(app.CollectTrackingDataPanel, 'push');
            app.CollectandStratifyDataButton.BackgroundColor = [0.4627 0.1961 0.2471];
            app.CollectandStratifyDataButton.FontColor = [1 1 1];
            app.CollectandStratifyDataButton.Position = [243.5 163 146 30];
            app.CollectandStratifyDataButton.Text = 'Collect and Stratify Data';

            % Create StratificationGroupsButtonGroup
            app.StratificationGroupsButtonGroup = uibuttongroup(app.CollectTrackingDataPanel);
            app.StratificationGroupsButtonGroup.ForegroundColor = [1 1 1];
            app.StratificationGroupsButtonGroup.Title = 'Stratification Groups';
            app.StratificationGroupsButtonGroup.BackgroundColor = [0.2 0.2196 0.2706];
            app.StratificationGroupsButtonGroup.Position = [11 161 123 85];

            % Create TwoGroupsButton
            app.TwoGroupsButton = uiradiobutton(app.StratificationGroupsButtonGroup);
            app.TwoGroupsButton.Text = 'Two Groups';
            app.TwoGroupsButton.FontColor = [1 1 1];
            app.TwoGroupsButton.Position = [11 39 86.453125 15];
            app.TwoGroupsButton.Value = true;

            % Create ThreeGroupsButton
            app.ThreeGroupsButton = uiradiobutton(app.StratificationGroupsButtonGroup);
            app.ThreeGroupsButton.Text = 'Three Groups';
            app.ThreeGroupsButton.FontColor = [1 1 1];
            app.ThreeGroupsButton.Position = [11 17 95.140625 15];

            % Create StratificationFeatureDropDownLabel
            app.StratificationFeatureDropDownLabel = uilabel(app.CollectTrackingDataPanel);
            app.StratificationFeatureDropDownLabel.HorizontalAlignment = 'right';
            app.StratificationFeatureDropDownLabel.VerticalAlignment = 'top';
            app.StratificationFeatureDropDownLabel.FontColor = [1 1 1];
            app.StratificationFeatureDropDownLabel.Position = [156.03125 229 117 15];
            app.StratificationFeatureDropDownLabel.Text = 'Stratification Feature';

            % Create StratificationFeatureDropDown
            app.StratificationFeatureDropDown = uidropdown(app.CollectTrackingDataPanel);
            app.StratificationFeatureDropDown.Items = {'Primary object intensity', 'Secondary cell intensity', 'Primary recruitment kinetics ', 'Primary object size', 'Primary object movement'};
            app.StratificationFeatureDropDown.FontColor = [1 1 1];
            app.StratificationFeatureDropDown.BackgroundColor = [0.2 0.2196 0.2706];
            app.StratificationFeatureDropDown.Position = [156.03125 200 234 22];
            app.StratificationFeatureDropDown.Value = 'Primary object intensity';

            % Create curateData
            app.curateData = uicheckbox(app.CollectTrackingDataPanel);
            app.curateData.Text = 'Curate data after collecting';
            app.curateData.FontColor = [1 1 1];
            app.curateData.Position = [290 462 167.5625 15];
            app.curateData.Value = true;

            % Create ModifyTrackingParametersTab
            app.ModifyTrackingParametersTab = uitab(app.TabGroup4);
            app.ModifyTrackingParametersTab.Title = 'Modify Tracking Parameters';
            app.ModifyTrackingParametersTab.BackgroundColor = [0.1216 0.1294 0.1608];

            % Create EventTrackingSearchRadiusEditFieldLabel_2
            app.EventTrackingSearchRadiusEditFieldLabel_2 = uilabel(app.ModifyTrackingParametersTab);
            app.EventTrackingSearchRadiusEditFieldLabel_2.VerticalAlignment = 'top';
            app.EventTrackingSearchRadiusEditFieldLabel_2.FontColor = [1 1 1];
            app.EventTrackingSearchRadiusEditFieldLabel_2.Position = [77 187 166 15];
            app.EventTrackingSearchRadiusEditFieldLabel_2.Text = 'Event Tracking Search Radius';

            % Create trackingDistance
            app.trackingDistance = uieditfield(app.ModifyTrackingParametersTab, 'text');
            app.trackingDistance.FontColor = [1 1 1];
            app.trackingDistance.BackgroundColor = [0.2 0.2196 0.2706];
            app.trackingDistance.Position = [32 183 40.96875 22];

            % Create EventDetectionSearchRadiusEditFieldLabel_2
            app.EventDetectionSearchRadiusEditFieldLabel_2 = uilabel(app.ModifyTrackingParametersTab);
            app.EventDetectionSearchRadiusEditFieldLabel_2.HorizontalAlignment = 'right';
            app.EventDetectionSearchRadiusEditFieldLabel_2.VerticalAlignment = 'top';
            app.EventDetectionSearchRadiusEditFieldLabel_2.FontColor = [1 1 1];
            app.EventDetectionSearchRadiusEditFieldLabel_2.Position = [72 223 172 15];
            app.EventDetectionSearchRadiusEditFieldLabel_2.Text = 'Event Detection Search Radius';

            % Create searchDistance
            app.searchDistance = uieditfield(app.ModifyTrackingParametersTab, 'text');
            app.searchDistance.FontColor = [1 1 1];
            app.searchDistance.BackgroundColor = [0.2 0.2196 0.2706];
            app.searchDistance.Position = [32 219 40.96875 22];

            % Create zSearchDistanceLabel
            app.zSearchDistanceLabel = uilabel(app.ModifyTrackingParametersTab);
            app.zSearchDistanceLabel.VerticalAlignment = 'top';
            app.zSearchDistanceLabel.FontColor = [1 1 1];
            app.zSearchDistanceLabel.Position = [77 151 104 15];
            app.zSearchDistanceLabel.Text = 'z-Search Distance';

            % Create zsearchDistance
            app.zsearchDistance = uieditfield(app.ModifyTrackingParametersTab, 'text');
            app.zsearchDistance.FontColor = [1 1 1];
            app.zsearchDistance.BackgroundColor = [0.2 0.2196 0.2706];
            app.zsearchDistance.Position = [32 147 40.96875 22];

            % Create StartEventDetectionEditFieldLabel_2
            app.StartEventDetectionEditFieldLabel_2 = uilabel(app.ModifyTrackingParametersTab);
            app.StartEventDetectionEditFieldLabel_2.VerticalAlignment = 'top';
            app.StartEventDetectionEditFieldLabel_2.FontColor = [1 1 1];
            app.StartEventDetectionEditFieldLabel_2.Position = [78 115 120 15];
            app.StartEventDetectionEditFieldLabel_2.Text = 'Start Event Detection';

            % Create startDetection
            app.startDetection = uieditfield(app.ModifyTrackingParametersTab, 'text');
            app.startDetection.FontColor = [1 1 1];
            app.startDetection.BackgroundColor = [0.2 0.2196 0.2706];
            app.startDetection.Position = [32 112 40.96875 22];

            % Create EventDetectionThresholdEditFieldLabel_2
            app.EventDetectionThresholdEditFieldLabel_2 = uilabel(app.ModifyTrackingParametersTab);
            app.EventDetectionThresholdEditFieldLabel_2.VerticalAlignment = 'top';
            app.EventDetectionThresholdEditFieldLabel_2.FontColor = [1 1 1];
            app.EventDetectionThresholdEditFieldLabel_2.Position = [77 79 147 15];
            app.EventDetectionThresholdEditFieldLabel_2.Text = 'Event Detection Threshold';

            % Create detectionThreshold
            app.detectionThreshold = uieditfield(app.ModifyTrackingParametersTab, 'text');
            app.detectionThreshold.FontColor = [1 1 1];
            app.detectionThreshold.BackgroundColor = [0.2 0.2196 0.2706];
            app.detectionThreshold.Position = [32 77 40.96875 22];

            % Create ObjectMaskSizeLabel
            app.ObjectMaskSizeLabel = uilabel(app.ModifyTrackingParametersTab);
            app.ObjectMaskSizeLabel.VerticalAlignment = 'top';
            app.ObjectMaskSizeLabel.FontColor = [1 1 1];
            app.ObjectMaskSizeLabel.Position = [77 46 100 15];
            app.ObjectMaskSizeLabel.Text = 'Object Mask Size';

            % Create maskSize
            app.maskSize = uieditfield(app.ModifyTrackingParametersTab, 'text');
            app.maskSize.FontColor = [1 1 1];
            app.maskSize.BackgroundColor = [0.2 0.2196 0.2706];
            app.maskSize.Position = [32 42 40.96875 22];

            % Create ExperimentEditFieldLabel
            app.ExperimentEditFieldLabel = uilabel(app.ModifyTrackingParametersTab);
            app.ExperimentEditFieldLabel.VerticalAlignment = 'top';
            app.ExperimentEditFieldLabel.FontColor = [1 1 1];
            app.ExperimentEditFieldLabel.Position = [32 481 66 15];
            app.ExperimentEditFieldLabel.Text = 'Experiment';

            % Create modEXP
            app.modEXP = uieditfield(app.ModifyTrackingParametersTab, 'text');
            app.modEXP.FontColor = [1 1 1];
            app.modEXP.BackgroundColor = [0.2 0.2196 0.2706];
            app.modEXP.Position = [32 454 174 22];

            % Create AcquisitionEditFieldLabel
            app.AcquisitionEditFieldLabel = uilabel(app.ModifyTrackingParametersTab);
            app.AcquisitionEditFieldLabel.VerticalAlignment = 'top';
            app.AcquisitionEditFieldLabel.FontColor = [1 1 1];
            app.AcquisitionEditFieldLabel.Position = [32 428 65 15];
            app.AcquisitionEditFieldLabel.Text = 'Acquisition';

            % Create modTS
            app.modTS = uieditfield(app.ModifyTrackingParametersTab, 'text');
            app.modTS.FontColor = [1 1 1];
            app.modTS.BackgroundColor = [0.2 0.2196 0.2706];
            app.modTS.Position = [32 401 174 22];

            % Create CellEditFieldLabel
            app.CellEditFieldLabel = uilabel(app.ModifyTrackingParametersTab);
            app.CellEditFieldLabel.VerticalAlignment = 'top';
            app.CellEditFieldLabel.FontColor = [1 1 1];
            app.CellEditFieldLabel.Position = [32 370 26 15];
            app.CellEditFieldLabel.Text = 'Cell';

            % Create modCELL
            app.modCELL = uieditfield(app.ModifyTrackingParametersTab, 'text');
            app.modCELL.FontColor = [1 1 1];
            app.modCELL.BackgroundColor = [0.2 0.2196 0.2706];
            app.modCELL.Position = [32 343 174 22];

            % Create EventEditFieldLabel
            app.EventEditFieldLabel = uilabel(app.ModifyTrackingParametersTab);
            app.EventEditFieldLabel.VerticalAlignment = 'top';
            app.EventEditFieldLabel.FontColor = [1 1 1];
            app.EventEditFieldLabel.Position = [32 312 36 15];
            app.EventEditFieldLabel.Text = 'Event';

            % Create modEVENT
            app.modEVENT = uieditfield(app.ModifyTrackingParametersTab, 'text');
            app.modEVENT.FontColor = [1 1 1];
            app.modEVENT.BackgroundColor = [0.2 0.2196 0.2706];
            app.modEVENT.Position = [32 285 174 22];

            % Create ModifyParametersButton
            app.ModifyParametersButton = uibutton(app.ModifyTrackingParametersTab, 'push');
            app.ModifyParametersButton.ButtonPushedFcn = createCallbackFcn(app, @ModifyParametersButtonPushed, true);
            app.ModifyParametersButton.BackgroundColor = [0.4627 0.1961 0.2471];
            app.ModifyParametersButton.FontColor = [1 1 1];
            app.ModifyParametersButton.Position = [296.5 38 117 30];
            app.ModifyParametersButton.Text = 'Modify Parameters';

            % Create SettingsTab
            app.SettingsTab = uitab(app.TabGroup4);
            app.SettingsTab.Title = 'Settings';
            app.SettingsTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create TabGroup3
            app.TabGroup3 = uitabgroup(app.SettingsTab);
            app.TabGroup3.Position = [18 401 676 100];

            % Create HomeFolderTab
            app.HomeFolderTab = uitab(app.TabGroup3);
            app.HomeFolderTab.Title = 'Home Folder';
            app.HomeFolderTab.BackgroundColor = [0.1176 0.1294 0.1608];

            % Create DirectoryPathLabel
            app.DirectoryPathLabel = uilabel(app.HomeFolderTab);
            app.DirectoryPathLabel.HorizontalAlignment = 'right';
            app.DirectoryPathLabel.VerticalAlignment = 'top';
            app.DirectoryPathLabel.FontWeight = 'bold';
            app.DirectoryPathLabel.FontColor = [0.902 0.902 0.902];
            app.DirectoryPathLabel.Position = [9 47 88 15];
            app.DirectoryPathLabel.Text = 'Directory Path';

            % Create Home
            app.Home = uieditfield(app.HomeFolderTab, 'text');
            app.Home.FontColor = [1 1 1];
            app.Home.BackgroundColor = [0.2 0.2196 0.2706];
            app.Home.Position = [12 19 647 22];
            app.Home.Value = 'L:\HDR';

            % Create SSDTab
            app.SSDTab = uitab(app.TabGroup3);
            app.SSDTab.Title = 'SSD';
            app.SSDTab.BackgroundColor = [0.1176 0.1294 0.1608];

            % Create DirectoryPathLabel_3
            app.DirectoryPathLabel_3 = uilabel(app.SSDTab);
            app.DirectoryPathLabel_3.HorizontalAlignment = 'right';
            app.DirectoryPathLabel_3.VerticalAlignment = 'top';
            app.DirectoryPathLabel_3.FontWeight = 'bold';
            app.DirectoryPathLabel_3.FontColor = [0.902 0.902 0.902];
            app.DirectoryPathLabel_3.Position = [9 47 88 15];
            app.DirectoryPathLabel_3.Text = 'Directory Path';

            % Create SSD
            app.SSD = uieditfield(app.SSDTab, 'text');
            app.SSD.FontColor = [1 1 1];
            app.SSD.BackgroundColor = [0.2 0.2196 0.2706];
            app.SSD.Position = [12 19 647 22];
            app.SSD.Value = 'D:';

            % Create OfflineDriveTab
            app.OfflineDriveTab = uitab(app.TabGroup3);
            app.OfflineDriveTab.Title = 'Offline Drive';
            app.OfflineDriveTab.BackgroundColor = [0.1176 0.1294 0.1608];

            % Create pdp_2Label
            app.pdp_2Label = uilabel(app.OfflineDriveTab);
            app.pdp_2Label.HorizontalAlignment = 'right';
            app.pdp_2Label.VerticalAlignment = 'top';
            app.pdp_2Label.FontWeight = 'bold';
            app.pdp_2Label.FontColor = [0.902 0.902 0.902];
            app.pdp_2Label.Position = [9 47 88 15];
            app.pdp_2Label.Text = 'Directory Path';

            % Create offlineDrivePath
            app.offlineDrivePath = uieditfield(app.OfflineDriveTab, 'text');
            app.offlineDrivePath.FontColor = [1 1 1];
            app.offlineDrivePath.BackgroundColor = [0.2 0.2196 0.2706];
            app.offlineDrivePath.Position = [12 19 562 22];
            app.offlineDrivePath.Value = 'E:\';

            % Create CompressionDriveTab
            app.CompressionDriveTab = uitab(app.TabGroup3);
            app.CompressionDriveTab.Title = 'Compression Drive';
            app.CompressionDriveTab.BackgroundColor = [0.1216 0.1294 0.1608];

            % Create DirectoryPathLabel_4
            app.DirectoryPathLabel_4 = uilabel(app.CompressionDriveTab);
            app.DirectoryPathLabel_4.HorizontalAlignment = 'right';
            app.DirectoryPathLabel_4.VerticalAlignment = 'top';
            app.DirectoryPathLabel_4.FontWeight = 'bold';
            app.DirectoryPathLabel_4.FontColor = [0.902 0.902 0.902];
            app.DirectoryPathLabel_4.Position = [9 47 88 15];
            app.DirectoryPathLabel_4.Text = 'Directory Path';

            % Create compressionDrive
            app.compressionDrive = uieditfield(app.CompressionDriveTab, 'text');
            app.compressionDrive.FontColor = [1 1 1];
            app.compressionDrive.BackgroundColor = [0.2 0.2196 0.2706];
            app.compressionDrive.Position = [12 19 647 22];

            % Create BackupOfflineDrive
            app.BackupOfflineDrive = uitab(app.TabGroup3);
            app.BackupOfflineDrive.Title = 'Back-up Offline Drive';
            app.BackupOfflineDrive.BackgroundColor = [0.1176 0.1294 0.1608];

            % Create offlineDrive_2Label
            app.offlineDrive_2Label = uilabel(app.BackupOfflineDrive);
            app.offlineDrive_2Label.HorizontalAlignment = 'right';
            app.offlineDrive_2Label.VerticalAlignment = 'top';
            app.offlineDrive_2Label.FontWeight = 'bold';
            app.offlineDrive_2Label.FontColor = [0.902 0.902 0.902];
            app.offlineDrive_2Label.Position = [9 47 88 15];
            app.offlineDrive_2Label.Text = 'Directory Path';

            % Create BackupOfflineDrivePath
            app.BackupOfflineDrivePath = uieditfield(app.BackupOfflineDrive, 'text');
            app.BackupOfflineDrivePath.FontColor = [1 1 1];
            app.BackupOfflineDrivePath.BackgroundColor = [0.2 0.2196 0.2706];
            app.BackupOfflineDrivePath.Position = [12 19 562 22];
            app.BackupOfflineDrivePath.Value = 'F:\';

            % Create TabGroup2
            app.TabGroup2 = uitabgroup(app.SettingsTab);
            app.TabGroup2.Position = [19 244 675 129];

            % Create PSF1Tab
            app.PSF1Tab = uitab(app.TabGroup2);
            app.PSF1Tab.Title = 'PSF 1';
            app.PSF1Tab.BackgroundColor = [0.1176 0.1294 0.1608];

            % Create PathEditField_9Label
            app.PathEditField_9Label = uilabel(app.PSF1Tab);
            app.PathEditField_9Label.HorizontalAlignment = 'right';
            app.PathEditField_9Label.VerticalAlignment = 'top';
            app.PathEditField_9Label.FontColor = [1 1 1];
            app.PathEditField_9Label.Position = [17 18 30 15];
            app.PathEditField_9Label.Text = 'Path';

            % Create pathPSF1
            app.pathPSF1 = uieditfield(app.PSF1Tab, 'text');
            app.pathPSF1.FontColor = [1 1 1];
            app.pathPSF1.BackgroundColor = [0.2 0.2196 0.2706];
            app.pathPSF1.Position = [86 14 572 22];
            app.pathPSF1.Value = 'L:\HDR\Processing tools\PSFs\psf_em517.h5';

            % Create EmissionEditField_5Label
            app.EmissionEditField_5Label = uilabel(app.PSF1Tab);
            app.EmissionEditField_5Label.HorizontalAlignment = 'right';
            app.EmissionEditField_5Label.VerticalAlignment = 'top';
            app.EmissionEditField_5Label.FontColor = [1 1 1];
            app.EmissionEditField_5Label.Position = [17 50 54 15];
            app.EmissionEditField_5Label.Text = 'Emission';

            % Create EmissionPSF1
            app.EmissionPSF1 = uieditfield(app.PSF1Tab, 'numeric');
            app.EmissionPSF1.FontColor = [1 1 1];
            app.EmissionPSF1.BackgroundColor = [0.2 0.2196 0.2706];
            app.EmissionPSF1.Position = [86 46 48 22];
            app.EmissionPSF1.Value = 509;

            % Create PSFConfigurationLabel
            app.PSFConfigurationLabel = uilabel(app.PSF1Tab);
            app.PSFConfigurationLabel.VerticalAlignment = 'top';
            app.PSFConfigurationLabel.FontWeight = 'bold';
            app.PSFConfigurationLabel.FontColor = [0.902 0.902 0.902];
            app.PSFConfigurationLabel.Position = [22 77 110 15];
            app.PSFConfigurationLabel.Text = 'PSF Configuration';

            % Create ChannelmatchingintervalLabel_2
            app.ChannelmatchingintervalLabel_2 = uilabel(app.PSF1Tab);
            app.ChannelmatchingintervalLabel_2.VerticalAlignment = 'top';
            app.ChannelmatchingintervalLabel_2.FontWeight = 'bold';
            app.ChannelmatchingintervalLabel_2.FontColor = [0.902 0.902 0.902];
            app.ChannelmatchingintervalLabel_2.Position = [213 77 155 15];
            app.ChannelmatchingintervalLabel_2.Text = 'Channel matching interval';

            % Create MinLabel_2
            app.MinLabel_2 = uilabel(app.PSF1Tab);
            app.MinLabel_2.HorizontalAlignment = 'right';
            app.MinLabel_2.VerticalAlignment = 'top';
            app.MinLabel_2.FontColor = [1 1 1];
            app.MinLabel_2.Position = [207 51 25 15];
            app.MinLabel_2.Text = 'Min';

            % Create minIntervalPSF1
            app.minIntervalPSF1 = uieditfield(app.PSF1Tab, 'numeric');
            app.minIntervalPSF1.FontColor = [1 1 1];
            app.minIntervalPSF1.BackgroundColor = [0.2 0.2196 0.2706];
            app.minIntervalPSF1.Position = [247 47 48 22];
            app.minIntervalPSF1.Value = 481;

            % Create MaxLabel_2
            app.MaxLabel_2 = uilabel(app.PSF1Tab);
            app.MaxLabel_2.HorizontalAlignment = 'right';
            app.MaxLabel_2.VerticalAlignment = 'top';
            app.MaxLabel_2.FontColor = [1 1 1];
            app.MaxLabel_2.Position = [332 51 29 15];
            app.MaxLabel_2.Text = 'Max';

            % Create maxIntervalPSF1
            app.maxIntervalPSF1 = uieditfield(app.PSF1Tab, 'numeric');
            app.maxIntervalPSF1.FontColor = [1 1 1];
            app.maxIntervalPSF1.BackgroundColor = [0.2 0.2196 0.2706];
            app.maxIntervalPSF1.Position = [376 47 48 22];
            app.maxIntervalPSF1.Value = 520;

            % Create PSF2Tab
            app.PSF2Tab = uitab(app.TabGroup2);
            app.PSF2Tab.Title = 'PSF 2';
            app.PSF2Tab.BackgroundColor = [0.1176 0.1294 0.1608];

            % Create PathEditField_10Label
            app.PathEditField_10Label = uilabel(app.PSF2Tab);
            app.PathEditField_10Label.HorizontalAlignment = 'right';
            app.PathEditField_10Label.VerticalAlignment = 'top';
            app.PathEditField_10Label.FontColor = [1 1 1];
            app.PathEditField_10Label.Position = [17 18 30 15];
            app.PathEditField_10Label.Text = 'Path';

            % Create pathPSF2
            app.pathPSF2 = uieditfield(app.PSF2Tab, 'text');
            app.pathPSF2.FontColor = [1 1 1];
            app.pathPSF2.BackgroundColor = [0.2 0.2196 0.2706];
            app.pathPSF2.Position = [86 14 572 22];
            app.pathPSF2.Value = 'L:\HDR\Processing tools\PSFs\PSF_580-605-1-031-Shading_Correction-01.h5';

            % Create EmissionEditField_6Label
            app.EmissionEditField_6Label = uilabel(app.PSF2Tab);
            app.EmissionEditField_6Label.HorizontalAlignment = 'right';
            app.EmissionEditField_6Label.VerticalAlignment = 'top';
            app.EmissionEditField_6Label.FontColor = [1 1 1];
            app.EmissionEditField_6Label.Position = [17 50 54 15];
            app.EmissionEditField_6Label.Text = 'Emission';

            % Create EmissionPSF2
            app.EmissionPSF2 = uieditfield(app.PSF2Tab, 'numeric');
            app.EmissionPSF2.FontColor = [1 1 1];
            app.EmissionPSF2.BackgroundColor = [0.2 0.2196 0.2706];
            app.EmissionPSF2.Position = [86 46 48 22];
            app.EmissionPSF2.Value = 610;

            % Create PSFconfigurationLabel_2
            app.PSFconfigurationLabel_2 = uilabel(app.PSF2Tab);
            app.PSFconfigurationLabel_2.VerticalAlignment = 'top';
            app.PSFconfigurationLabel_2.FontWeight = 'bold';
            app.PSFconfigurationLabel_2.FontColor = [0.902 0.902 0.902];
            app.PSFconfigurationLabel_2.Position = [22 77 108 15];
            app.PSFconfigurationLabel_2.Text = 'PSF configuration';

            % Create ChannelmatchingintervalLabel_3
            app.ChannelmatchingintervalLabel_3 = uilabel(app.PSF2Tab);
            app.ChannelmatchingintervalLabel_3.VerticalAlignment = 'top';
            app.ChannelmatchingintervalLabel_3.FontWeight = 'bold';
            app.ChannelmatchingintervalLabel_3.FontColor = [0.902 0.902 0.902];
            app.ChannelmatchingintervalLabel_3.Position = [213 77 155 15];
            app.ChannelmatchingintervalLabel_3.Text = 'Channel matching interval';

            % Create MinLabel_3
            app.MinLabel_3 = uilabel(app.PSF2Tab);
            app.MinLabel_3.HorizontalAlignment = 'right';
            app.MinLabel_3.VerticalAlignment = 'top';
            app.MinLabel_3.FontColor = [1 1 1];
            app.MinLabel_3.Position = [207 51 25 15];
            app.MinLabel_3.Text = 'Min';

            % Create minIntervalPSF2
            app.minIntervalPSF2 = uieditfield(app.PSF2Tab, 'numeric');
            app.minIntervalPSF2.FontColor = [1 1 1];
            app.minIntervalPSF2.BackgroundColor = [0.2 0.2196 0.2706];
            app.minIntervalPSF2.Position = [247 47 48 22];
            app.minIntervalPSF2.Value = 521;

            % Create MaxLabel_3
            app.MaxLabel_3 = uilabel(app.PSF2Tab);
            app.MaxLabel_3.HorizontalAlignment = 'right';
            app.MaxLabel_3.VerticalAlignment = 'top';
            app.MaxLabel_3.FontColor = [1 1 1];
            app.MaxLabel_3.Position = [332 51 29 15];
            app.MaxLabel_3.Text = 'Max';

            % Create maxIntervalPSF2
            app.maxIntervalPSF2 = uieditfield(app.PSF2Tab, 'numeric');
            app.maxIntervalPSF2.FontColor = [1 1 1];
            app.maxIntervalPSF2.BackgroundColor = [0.2 0.2196 0.2706];
            app.maxIntervalPSF2.Position = [376 47 48 22];
            app.maxIntervalPSF2.Value = 620;

            % Create PSF3Tab
            app.PSF3Tab = uitab(app.TabGroup2);
            app.PSF3Tab.Title = 'PSF 3';
            app.PSF3Tab.BackgroundColor = [0.1176 0.1294 0.1608];

            % Create PathEditField_11Label
            app.PathEditField_11Label = uilabel(app.PSF3Tab);
            app.PathEditField_11Label.HorizontalAlignment = 'right';
            app.PathEditField_11Label.VerticalAlignment = 'top';
            app.PathEditField_11Label.FontColor = [1 1 1];
            app.PathEditField_11Label.Position = [17 18 30 15];
            app.PathEditField_11Label.Text = 'Path';

            % Create pathPSF3
            app.pathPSF3 = uieditfield(app.PSF3Tab, 'text');
            app.pathPSF3.FontColor = [1 1 1];
            app.pathPSF3.BackgroundColor = [0.2 0.2196 0.2706];
            app.pathPSF3.Position = [86 14 572 22];
            app.pathPSF3.Value = 'L:\HDR\Processing tools\PSFs\660-2-036-Shading Correction-02_psf.h5';

            % Create EmissionEditField_7Label
            app.EmissionEditField_7Label = uilabel(app.PSF3Tab);
            app.EmissionEditField_7Label.HorizontalAlignment = 'right';
            app.EmissionEditField_7Label.VerticalAlignment = 'top';
            app.EmissionEditField_7Label.FontColor = [1 1 1];
            app.EmissionEditField_7Label.Position = [17 50 54 15];
            app.EmissionEditField_7Label.Text = 'Emission';

            % Create EmissionPSF3
            app.EmissionPSF3 = uieditfield(app.PSF3Tab, 'numeric');
            app.EmissionPSF3.FontColor = [1 1 1];
            app.EmissionPSF3.BackgroundColor = [0.2 0.2196 0.2706];
            app.EmissionPSF3.Position = [86 46 48 22];
            app.EmissionPSF3.Value = 668;

            % Create PSFconfigurationLabel_3
            app.PSFconfigurationLabel_3 = uilabel(app.PSF3Tab);
            app.PSFconfigurationLabel_3.VerticalAlignment = 'top';
            app.PSFconfigurationLabel_3.FontWeight = 'bold';
            app.PSFconfigurationLabel_3.FontColor = [0.902 0.902 0.902];
            app.PSFconfigurationLabel_3.Position = [22 77 108 15];
            app.PSFconfigurationLabel_3.Text = 'PSF configuration';

            % Create MinLabel
            app.MinLabel = uilabel(app.PSF3Tab);
            app.MinLabel.HorizontalAlignment = 'right';
            app.MinLabel.VerticalAlignment = 'top';
            app.MinLabel.FontColor = [1 1 1];
            app.MinLabel.Position = [207 51 25 15];
            app.MinLabel.Text = 'Min';

            % Create minIntervalPSF3
            app.minIntervalPSF3 = uieditfield(app.PSF3Tab, 'numeric');
            app.minIntervalPSF3.FontColor = [1 1 1];
            app.minIntervalPSF3.BackgroundColor = [0.2 0.2196 0.2706];
            app.minIntervalPSF3.Position = [247 47 48 22];
            app.minIntervalPSF3.Value = 621;

            % Create MaxLabel
            app.MaxLabel = uilabel(app.PSF3Tab);
            app.MaxLabel.HorizontalAlignment = 'right';
            app.MaxLabel.VerticalAlignment = 'top';
            app.MaxLabel.FontColor = [1 1 1];
            app.MaxLabel.Position = [332 51 29 15];
            app.MaxLabel.Text = 'Max';

            % Create maxIntervalPSF3
            app.maxIntervalPSF3 = uieditfield(app.PSF3Tab, 'numeric');
            app.maxIntervalPSF3.FontColor = [1 1 1];
            app.maxIntervalPSF3.BackgroundColor = [0.2 0.2196 0.2706];
            app.maxIntervalPSF3.Position = [376 47 48 22];
            app.maxIntervalPSF3.Value = 1000;

            % Create ChannelmatchingintervalLabel
            app.ChannelmatchingintervalLabel = uilabel(app.PSF3Tab);
            app.ChannelmatchingintervalLabel.VerticalAlignment = 'top';
            app.ChannelmatchingintervalLabel.FontWeight = 'bold';
            app.ChannelmatchingintervalLabel.FontColor = [0.902 0.902 0.902];
            app.ChannelmatchingintervalLabel.Position = [213 77 155 15];
            app.ChannelmatchingintervalLabel.Text = 'Channel matching interval';

            % Create PSF4Tab
            app.PSF4Tab = uitab(app.TabGroup2);
            app.PSF4Tab.Title = 'PSF 4';
            app.PSF4Tab.BackgroundColor = [0.1176 0.1294 0.1608];

            % Create PathEditField_12Label
            app.PathEditField_12Label = uilabel(app.PSF4Tab);
            app.PathEditField_12Label.HorizontalAlignment = 'right';
            app.PathEditField_12Label.VerticalAlignment = 'top';
            app.PathEditField_12Label.FontColor = [1 1 1];
            app.PathEditField_12Label.Position = [17 18 30 15];
            app.PathEditField_12Label.Text = 'Path';

            % Create pathPSF4
            app.pathPSF4 = uieditfield(app.PSF4Tab, 'text');
            app.pathPSF4.FontColor = [1 1 1];
            app.pathPSF4.BackgroundColor = [0.2 0.2196 0.2706];
            app.pathPSF4.Position = [86 14 572 22];
            app.pathPSF4.Value = 'Not specified';

            % Create EmissionEditField_8Label
            app.EmissionEditField_8Label = uilabel(app.PSF4Tab);
            app.EmissionEditField_8Label.HorizontalAlignment = 'right';
            app.EmissionEditField_8Label.VerticalAlignment = 'top';
            app.EmissionEditField_8Label.FontColor = [1 1 1];
            app.EmissionEditField_8Label.Position = [17 50 54 15];
            app.EmissionEditField_8Label.Text = 'Emission';

            % Create EmissionPSF4
            app.EmissionPSF4 = uieditfield(app.PSF4Tab, 'numeric');
            app.EmissionPSF4.FontColor = [1 1 1];
            app.EmissionPSF4.BackgroundColor = [0.2 0.2196 0.2706];
            app.EmissionPSF4.Position = [86 46 48 22];

            % Create PSFconfigurationLabel_4
            app.PSFconfigurationLabel_4 = uilabel(app.PSF4Tab);
            app.PSFconfigurationLabel_4.VerticalAlignment = 'top';
            app.PSFconfigurationLabel_4.FontWeight = 'bold';
            app.PSFconfigurationLabel_4.FontColor = [0.902 0.902 0.902];
            app.PSFconfigurationLabel_4.Position = [22 77 108 15];
            app.PSFconfigurationLabel_4.Text = 'PSF configuration';

            % Create ChannelmatchingintervalLabel_4
            app.ChannelmatchingintervalLabel_4 = uilabel(app.PSF4Tab);
            app.ChannelmatchingintervalLabel_4.VerticalAlignment = 'top';
            app.ChannelmatchingintervalLabel_4.FontWeight = 'bold';
            app.ChannelmatchingintervalLabel_4.FontColor = [0.902 0.902 0.902];
            app.ChannelmatchingintervalLabel_4.Position = [213 77 155 15];
            app.ChannelmatchingintervalLabel_4.Text = 'Channel matching interval';

            % Create MinLabel_4
            app.MinLabel_4 = uilabel(app.PSF4Tab);
            app.MinLabel_4.HorizontalAlignment = 'right';
            app.MinLabel_4.VerticalAlignment = 'top';
            app.MinLabel_4.FontColor = [1 1 1];
            app.MinLabel_4.Position = [207 51 25 15];
            app.MinLabel_4.Text = 'Min';

            % Create minIntervalPSF4
            app.minIntervalPSF4 = uieditfield(app.PSF4Tab, 'numeric');
            app.minIntervalPSF4.FontColor = [1 1 1];
            app.minIntervalPSF4.BackgroundColor = [0.2 0.2196 0.2706];
            app.minIntervalPSF4.Position = [247 47 48 22];

            % Create MaxLabel_4
            app.MaxLabel_4 = uilabel(app.PSF4Tab);
            app.MaxLabel_4.HorizontalAlignment = 'right';
            app.MaxLabel_4.VerticalAlignment = 'top';
            app.MaxLabel_4.FontColor = [1 1 1];
            app.MaxLabel_4.Position = [332 51 29 15];
            app.MaxLabel_4.Text = 'Max';

            % Create maxIntervalPSF4
            app.maxIntervalPSF4 = uieditfield(app.PSF4Tab, 'numeric');
            app.maxIntervalPSF4.FontColor = [1 1 1];
            app.maxIntervalPSF4.BackgroundColor = [0.2 0.2196 0.2706];
            app.maxIntervalPSF4.Position = [376 47 48 22];
            app.maxIntervalPSF4.Value = 1;

            % Show the figure after all components are created
            app.QuantEscape2020aUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = QuantEscape2020a_3_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.QuantEscape2020aUIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.QuantEscape2020aUIFigure)
        end
    end
end