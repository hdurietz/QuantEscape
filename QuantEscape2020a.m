classdef QuantEscape2020a < matlab.apps.AppBase

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
        TabGroup4                       matlab.ui.container.TabGroup
        PreprocessingTab                matlab.ui.container.Tab
        StartPreprocessingButton        matlab.ui.control.Button
        CreateFoldersButton             matlab.ui.control.Button
        EventROIsTab                    matlab.ui.container.Tab
        skipCelldata                    matlab.ui.control.CheckBox
        skipImageBackground             matlab.ui.control.CheckBox
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
        createEventKey                  matlab.ui.control.Button
        EventPanelsTab                  matlab.ui.container.Tab
        CreateROIPanelButton            matlab.ui.control.Button
        IncludeTimeSeriesButtonGroup_8  matlab.ui.container.ButtonGroup
        eventPanelTS_all                matlab.ui.control.RadioButton
        eventPanelTS_selected           matlab.ui.control.RadioButton
        IncludeEventsButtonGroup_7      matlab.ui.container.ButtonGroup
        eventPanelEvents_all            matlab.ui.control.RadioButton
        eventPanelEvents_selected       matlab.ui.control.RadioButton
        IncludeCellsButtonGroup         matlab.ui.container.ButtonGroup
        eventPanelCells_all             matlab.ui.control.RadioButton
        eventPanelCells_selected        matlab.ui.control.RadioButton
        skipCAC_eventPanels             matlab.ui.control.CheckBox
        skipValidated_panels            matlab.ui.control.CheckBox
        ExtendPlanesEditFieldLabel      matlab.ui.control.Label
        ExtendPlanes                    matlab.ui.control.NumericEditField
        xSpacersEditFieldLabel          matlab.ui.control.Label
        xSpacers                        matlab.ui.control.NumericEditField
        ModeDropDownLabel               matlab.ui.control.Label
        Mode                            matlab.ui.control.DropDown
        ySpacersEditFieldLabel          matlab.ui.control.Label
        ySpacers                        matlab.ui.control.NumericEditField
        xPanelDimEditFieldLabel         matlab.ui.control.Label
        xPanelDim                       matlab.ui.control.NumericEditField
        yPanelDimEditFieldLabel         matlab.ui.control.Label
        yPanelDim                       matlab.ui.control.NumericEditField
        ExportfolderpathAcquisitionLabel  matlab.ui.control.Label
        exportFolder                    matlab.ui.control.EditField
        PanelNameEditFieldLabel         matlab.ui.control.Label
        panelName                       matlab.ui.control.EditField
        SelectDataDropDownLabel_5       matlab.ui.control.Label
        dataType_panel                  matlab.ui.control.DropDown
        TrackingTab                     matlab.ui.container.Tab
        IncludeTimeSeriesButtonGroup_9  matlab.ui.container.ButtonGroup
        trackTS_all                     matlab.ui.control.RadioButton
        trackTS_selected                matlab.ui.control.RadioButton
        IncludeEventsButtonGroup_8      matlab.ui.container.ButtonGroup
        trackEvents_all                 matlab.ui.control.RadioButton
        trackEvents_selected            matlab.ui.control.RadioButton
        TrackCompartmentsButton         matlab.ui.control.Button
        PrimaryButtonGroup              matlab.ui.container.ButtonGroup
        ChAButton                       matlab.ui.control.RadioButton
        ChBButton                       matlab.ui.control.RadioButton
        ChCButton                       matlab.ui.control.RadioButton
        SecondaryButtonGroup            matlab.ui.container.ButtonGroup
        ChAButton_2                     matlab.ui.control.RadioButton
        ChBButton_2                     matlab.ui.control.RadioButton
        ChCButton_2                     matlab.ui.control.RadioButton
        runCargoTracking                matlab.ui.control.Button
        TertiaryButtonGroup             matlab.ui.container.ButtonGroup
        ChAButton_3                     matlab.ui.control.RadioButton
        ChBButton_3                     matlab.ui.control.RadioButton
        ChCButton_3                     matlab.ui.control.RadioButton
        ChannelOrderLabel               matlab.ui.control.Label
        skipCAC_tracking                matlab.ui.control.CheckBox
        skipValidated_tracking          matlab.ui.control.CheckBox
        EventDetectionSearchRadiusEditFieldLabel_3  matlab.ui.control.Label
        EventDetectionSearchRadius      matlab.ui.control.NumericEditField
        EventTrackingSearchRadiusEditFieldLabel_3  matlab.ui.control.Label
        EventTrackingSearchRadius       matlab.ui.control.NumericEditField
        StartEventDetectionEditFieldLabel_3  matlab.ui.control.Label
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
        EventDetectionThresholdEditFieldLabel_3  matlab.ui.control.Label
        EventDetectionThreshold         matlab.ui.control.NumericEditField
        ObjectMaskThresholdLabel        matlab.ui.control.Label
        ObjectMaskThreshold             matlab.ui.control.NumericEditField
        FitCargoTrackingLabel           matlab.ui.control.Label
        fitManTracks                    matlab.ui.control.NumericEditField
        PredeterminedObjectMaskSizeLabel  matlab.ui.control.Label
        predetObjectMask                matlab.ui.control.NumericEditField
        Label                           matlab.ui.control.Label
        PartitionmanualtracksPanel      matlab.ui.container.Panel
        PartitionTracksButton           matlab.ui.control.Button
        EventpanelfolderpathLabel       matlab.ui.control.Label
        manTracksPath                   matlab.ui.control.EditField
        TuneTrackingTab                 matlab.ui.container.Tab
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
        TuneParametersButton            matlab.ui.control.Button
        NormalizeTab                    matlab.ui.container.Tab
        NormalizeDataButton             matlab.ui.control.Button
        IncludeTimeSeriesButtonGroup_7  matlab.ui.container.ButtonGroup
        normTS_all                      matlab.ui.control.RadioButton
        normTS_selected                 matlab.ui.control.RadioButton
        IncludeEventsButtonGroup_6      matlab.ui.container.ButtonGroup
        normEvents_all                  matlab.ui.control.RadioButton
        normEvents_selected             matlab.ui.control.RadioButton
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
        ObjectIntensityThresholdEditFieldLabel  matlab.ui.control.Label
        ObjectIntensityThreshold        matlab.ui.control.NumericEditField
        ChADropDownLabel_11             matlab.ui.control.Label
        ChADropDown                     matlab.ui.control.DropDown
        ChBDropDownLabel_11             matlab.ui.control.Label
        ChBDropDown                     matlab.ui.control.DropDown
        ChCDropDownLabel_11             matlab.ui.control.Label
        ChCDropDown                     matlab.ui.control.DropDown
        SelectDataDropDownLabel_4       matlab.ui.control.Label
        dataType                        matlab.ui.control.DropDown
        LocalbackgroundrollingmeanLabel  matlab.ui.control.Label
        nRoll                           matlab.ui.control.NumericEditField
        CollectTab                      matlab.ui.container.Tab
        IncludeTimeSeriesButtonGroup_6  matlab.ui.container.ButtonGroup
        collectTS_all                   matlab.ui.control.RadioButton
        collectTS_selected              matlab.ui.control.RadioButton
        IncludeEventsButtonGroup_5      matlab.ui.container.ButtonGroup
        collectEvents_all               matlab.ui.control.RadioButton
        collectEvents_selected          matlab.ui.control.RadioButton
        CollectDataButton               matlab.ui.control.Button
        curateData                      matlab.ui.control.CheckBox
        SelectDataDropDownLabel_3       matlab.ui.control.Label
        SelectDataDropDown              matlab.ui.control.DropDown
        SettingsTab                     matlab.ui.container.Tab
        QuantEscapemainfolderpathLabel  matlab.ui.control.Label
        Home                            matlab.ui.control.EditField
        ExperimentsLabel                matlab.ui.control.Label
        ProcessingLabel                 matlab.ui.control.Label
        Lamp                            matlab.ui.control.Lamp
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

        % Button pushed function: TuneParametersButton
        function TuneParametersButtonPushed(app, event)
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

        % Button pushed function: StartPreprocessingButton
        function StartPreprocessingButtonPushed(app, event)
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

        % Callback function
        function modifyTracks_cargoButtonPushed(app, event)
            cd ([app.Home.Value filesep 'Processing tools' filesep 'Matlab'])
            runApp(app, 'Modify tracks cargo');
        end

        % Callback function
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
            app.QuantEscape2020aUIFigure.Position = [100 100 1288 480];
            app.QuantEscape2020aUIFigure.Name = 'QuantEscape 2020a';
            app.QuantEscape2020aUIFigure.Resize = 'off';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.QuantEscape2020aUIFigure);
            app.TabGroup.TabLocation = 'left';
            app.TabGroup.Position = [8 7 420 443];

            % Create Tab
            app.Tab = uitab(app.TabGroup);
            app.Tab.Title = '1';
            app.Tab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create TimeSeriesEditFieldLabel
            app.TimeSeriesEditFieldLabel = uilabel(app.Tab);
            app.TimeSeriesEditFieldLabel.HorizontalAlignment = 'right';
            app.TimeSeriesEditFieldLabel.VerticalAlignment = 'top';
            app.TimeSeriesEditFieldLabel.FontColor = [1 1 1];
            app.TimeSeriesEditFieldLabel.Position = [227 378 68 15];
            app.TimeSeriesEditFieldLabel.Text = 'Time Series';

            % Create TS_Tab
            app.TS_Tab = uieditfield(app.Tab, 'numeric');
            app.TS_Tab.FontColor = [1 1 1];
            app.TS_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.TS_Tab.Position = [298 374 41 22];

            % Create ChADropDownLabel
            app.ChADropDownLabel = uilabel(app.Tab);
            app.ChADropDownLabel.HorizontalAlignment = 'right';
            app.ChADropDownLabel.VerticalAlignment = 'top';
            app.ChADropDownLabel.FontColor = [1 1 1];
            app.ChADropDownLabel.Position = [18 334 35 15];
            app.ChADropDownLabel.Text = 'Ch. A';

            % Create ChA_Tab
            app.ChA_Tab = uidropdown(app.Tab);
            app.ChA_Tab.Items = {'Not selected', 'mCherry-Rab5', 'DY547-chol-siRNA', 'YFP-galectin-9'};
            app.ChA_Tab.Editable = 'on';
            app.ChA_Tab.FontColor = [1 1 1];
            app.ChA_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.ChA_Tab.Position = [68 330 148 22];
            app.ChA_Tab.Value = 'Not selected';

            % Create EmissionLabel
            app.EmissionLabel = uilabel(app.Tab);
            app.EmissionLabel.HorizontalAlignment = 'right';
            app.EmissionLabel.VerticalAlignment = 'top';
            app.EmissionLabel.FontColor = [1 1 1];
            app.EmissionLabel.Position = [229 334 54 15];
            app.EmissionLabel.Text = 'Emission';

            % Create ChA_Em_Tab
            app.ChA_Em_Tab = uieditfield(app.Tab, 'numeric');
            app.ChA_Em_Tab.FontColor = [1 1 1];
            app.ChA_Em_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.ChA_Em_Tab.Position = [298 330 41 22];

            % Create ExperimentEditField_2Label
            app.ExperimentEditField_2Label = uilabel(app.Tab);
            app.ExperimentEditField_2Label.BackgroundColor = [0.1176 0.1294 0.1569];
            app.ExperimentEditField_2Label.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label.FontColor = [1 1 1];
            app.ExperimentEditField_2Label.Position = [12 378 67 15];
            app.ExperimentEditField_2Label.Text = 'Experiment';

            % Create experimentID_Tab
            app.experimentID_Tab = uieditfield(app.Tab, 'text');
            app.experimentID_Tab.FontColor = [1 1 1];
            app.experimentID_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.experimentID_Tab.Position = [94 374 122 22];

            % Create activateTab
            app.activateTab = uicheckbox(app.Tab);
            app.activateTab.Text = 'Activate experiment tab';
            app.activateTab.FontWeight = 'bold';
            app.activateTab.FontColor = [0.902 0.902 0.902];
            app.activateTab.Position = [18 412 159 15];

            % Create xDimEditFieldLabel
            app.xDimEditFieldLabel = uilabel(app.Tab);
            app.xDimEditFieldLabel.VerticalAlignment = 'top';
            app.xDimEditFieldLabel.FontColor = [1 1 1];
            app.xDimEditFieldLabel.Position = [18 213 35 15];
            app.xDimEditFieldLabel.Text = 'x Dim';

            % Create xDim_Tab
            app.xDim_Tab = uieditfield(app.Tab, 'numeric');
            app.xDim_Tab.FontColor = [1 1 1];
            app.xDim_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.xDim_Tab.Position = [69 209 55 22];

            % Create EmissionLabel_2
            app.EmissionLabel_2 = uilabel(app.Tab);
            app.EmissionLabel_2.HorizontalAlignment = 'right';
            app.EmissionLabel_2.VerticalAlignment = 'top';
            app.EmissionLabel_2.FontColor = [1 1 1];
            app.EmissionLabel_2.Position = [229 303 54 15];
            app.EmissionLabel_2.Text = 'Emission';

            % Create ChB_Em_Tab
            app.ChB_Em_Tab = uieditfield(app.Tab, 'numeric');
            app.ChB_Em_Tab.FontColor = [1 1 1];
            app.ChB_Em_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.ChB_Em_Tab.Position = [298 299 41 22];

            % Create EmissionLabel_3
            app.EmissionLabel_3 = uilabel(app.Tab);
            app.EmissionLabel_3.BackgroundColor = [0.1176 0.1294 0.1569];
            app.EmissionLabel_3.HorizontalAlignment = 'right';
            app.EmissionLabel_3.VerticalAlignment = 'top';
            app.EmissionLabel_3.FontColor = [1 1 1];
            app.EmissionLabel_3.Position = [229 274 54 15];
            app.EmissionLabel_3.Text = 'Emission';

            % Create ChC_Em_Tab
            app.ChC_Em_Tab = uieditfield(app.Tab, 'numeric');
            app.ChC_Em_Tab.FontColor = [1 1 1];
            app.ChC_Em_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.ChC_Em_Tab.Position = [298 270 41 22];

            % Create ImagepropertiesLabel
            app.ImagepropertiesLabel = uilabel(app.Tab);
            app.ImagepropertiesLabel.VerticalAlignment = 'top';
            app.ImagepropertiesLabel.FontWeight = 'bold';
            app.ImagepropertiesLabel.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel.Position = [18 234 103 15];
            app.ImagepropertiesLabel.Text = 'Image properties';

            % Create yDimEditFieldLabel
            app.yDimEditFieldLabel = uilabel(app.Tab);
            app.yDimEditFieldLabel.BackgroundColor = [0.1176 0.1294 0.1569];
            app.yDimEditFieldLabel.VerticalAlignment = 'top';
            app.yDimEditFieldLabel.FontColor = [1 1 1];
            app.yDimEditFieldLabel.Position = [18 181 36 15];
            app.yDimEditFieldLabel.Text = 'y Dim';

            % Create yDim_Tab
            app.yDim_Tab = uieditfield(app.Tab, 'numeric');
            app.yDim_Tab.FontColor = [1 1 1];
            app.yDim_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.yDim_Tab.Position = [69 178 55 22];

            % Create zDimEditFieldLabel
            app.zDimEditFieldLabel = uilabel(app.Tab);
            app.zDimEditFieldLabel.VerticalAlignment = 'top';
            app.zDimEditFieldLabel.FontColor = [1 1 1];
            app.zDimEditFieldLabel.Position = [18 149 36 15];
            app.zDimEditFieldLabel.Text = 'z Dim';

            % Create zDim_Tab
            app.zDim_Tab = uieditfield(app.Tab, 'numeric');
            app.zDim_Tab.FontColor = [1 1 1];
            app.zDim_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.zDim_Tab.Position = [69 145 55 22];

            % Create includeTS_group_Tab
            app.includeTS_group_Tab = uibuttongroup(app.Tab);
            app.includeTS_group_Tab.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab.Title = 'Include Time Series';
            app.includeTS_group_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.includeTS_group_Tab.Position = [177 161 162 56];

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
            app.ChBDropDownLabel.Position = [17 303 36 15];
            app.ChBDropDownLabel.Text = 'Ch. B';

            % Create ChB_Tab
            app.ChB_Tab = uidropdown(app.Tab);
            app.ChB_Tab.Items = {'Not selected', 'mCherry-Rab5', 'DY547-chol-siRNA', 'YFP-galectin-9'};
            app.ChB_Tab.Editable = 'on';
            app.ChB_Tab.FontColor = [1 1 1];
            app.ChB_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.ChB_Tab.Position = [68 299 148 22];
            app.ChB_Tab.Value = 'Not selected';

            % Create ChCDropDownLabel
            app.ChCDropDownLabel = uilabel(app.Tab);
            app.ChCDropDownLabel.HorizontalAlignment = 'right';
            app.ChCDropDownLabel.VerticalAlignment = 'top';
            app.ChCDropDownLabel.FontColor = [1 1 1];
            app.ChCDropDownLabel.Position = [17 274 36 15];
            app.ChCDropDownLabel.Text = 'Ch. C';

            % Create ChC_Tab
            app.ChC_Tab = uidropdown(app.Tab);
            app.ChC_Tab.Items = {'Not selected'};
            app.ChC_Tab.Editable = 'on';
            app.ChC_Tab.FontColor = [1 1 1];
            app.ChC_Tab.BackgroundColor = [0.2 0.2235 0.2706];
            app.ChC_Tab.Position = [68 270 148 22];
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
            app.TimeSeriesEditFieldLabel_2.Position = [227 378 68 15];
            app.TimeSeriesEditFieldLabel_2.Text = 'Time Series';

            % Create TS_Tab_2
            app.TS_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.TS_Tab_2.FontColor = [1 1 1];
            app.TS_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_2.Position = [298 374 41 22];

            % Create ChADropDownLabel_2
            app.ChADropDownLabel_2 = uilabel(app.Tab_2);
            app.ChADropDownLabel_2.HorizontalAlignment = 'right';
            app.ChADropDownLabel_2.VerticalAlignment = 'top';
            app.ChADropDownLabel_2.FontColor = [1 1 1];
            app.ChADropDownLabel_2.Position = [18 334 35 15];
            app.ChADropDownLabel_2.Text = 'Ch. A';

            % Create ChA_Tab_2
            app.ChA_Tab_2 = uidropdown(app.Tab_2);
            app.ChA_Tab_2.Items = {'Not selected', 'mCherry-Rab5', 'DY547-chol-siRNA', 'YFP-galectin-9'};
            app.ChA_Tab_2.Editable = 'on';
            app.ChA_Tab_2.FontColor = [1 1 1];
            app.ChA_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_2.Position = [68 330 148 22];
            app.ChA_Tab_2.Value = 'Not selected';

            % Create EmissionLabel_4
            app.EmissionLabel_4 = uilabel(app.Tab_2);
            app.EmissionLabel_4.HorizontalAlignment = 'right';
            app.EmissionLabel_4.VerticalAlignment = 'top';
            app.EmissionLabel_4.FontColor = [1 1 1];
            app.EmissionLabel_4.Position = [229 334 54 15];
            app.EmissionLabel_4.Text = 'Emission';

            % Create ChA_Em_Tab_2
            app.ChA_Em_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.ChA_Em_Tab_2.FontColor = [1 1 1];
            app.ChA_Em_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_2.Position = [298 330 41 22];

            % Create ExperimentEditField_2Label_2
            app.ExperimentEditField_2Label_2 = uilabel(app.Tab_2);
            app.ExperimentEditField_2Label_2.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_2.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_2.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_2.Position = [12 378 67 15];
            app.ExperimentEditField_2Label_2.Text = 'Experiment';

            % Create experimentID_Tab_2
            app.experimentID_Tab_2 = uieditfield(app.Tab_2, 'text');
            app.experimentID_Tab_2.FontColor = [1 1 1];
            app.experimentID_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_2.Position = [94 374 122 22];

            % Create activateTab_2
            app.activateTab_2 = uicheckbox(app.Tab_2);
            app.activateTab_2.Text = 'Activate experiment tab';
            app.activateTab_2.FontWeight = 'bold';
            app.activateTab_2.FontColor = [0.902 0.902 0.902];
            app.activateTab_2.Position = [18 412 159 15];

            % Create xDimEditFieldLabel_2
            app.xDimEditFieldLabel_2 = uilabel(app.Tab_2);
            app.xDimEditFieldLabel_2.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_2.FontColor = [1 1 1];
            app.xDimEditFieldLabel_2.Position = [18 213 35 15];
            app.xDimEditFieldLabel_2.Text = 'x Dim';

            % Create xDim_Tab_2
            app.xDim_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.xDim_Tab_2.FontColor = [1 1 1];
            app.xDim_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_2.Position = [69 209 55 22];

            % Create EmissionLabel_5
            app.EmissionLabel_5 = uilabel(app.Tab_2);
            app.EmissionLabel_5.HorizontalAlignment = 'right';
            app.EmissionLabel_5.VerticalAlignment = 'top';
            app.EmissionLabel_5.FontColor = [1 1 1];
            app.EmissionLabel_5.Position = [229 303 54 15];
            app.EmissionLabel_5.Text = 'Emission';

            % Create ChB_Em_Tab_2
            app.ChB_Em_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.ChB_Em_Tab_2.FontColor = [1 1 1];
            app.ChB_Em_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_2.Position = [298 299 41 22];

            % Create EmissionLabel_6
            app.EmissionLabel_6 = uilabel(app.Tab_2);
            app.EmissionLabel_6.HorizontalAlignment = 'right';
            app.EmissionLabel_6.VerticalAlignment = 'top';
            app.EmissionLabel_6.FontColor = [1 1 1];
            app.EmissionLabel_6.Position = [229 274 54 15];
            app.EmissionLabel_6.Text = 'Emission';

            % Create ChC_Em_Tab_2
            app.ChC_Em_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.ChC_Em_Tab_2.FontColor = [1 1 1];
            app.ChC_Em_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_2.Position = [298 270 41 22];

            % Create ImagepropertiesLabel_2
            app.ImagepropertiesLabel_2 = uilabel(app.Tab_2);
            app.ImagepropertiesLabel_2.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_2.FontWeight = 'bold';
            app.ImagepropertiesLabel_2.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_2.Position = [18 234 103 15];
            app.ImagepropertiesLabel_2.Text = 'Image properties';

            % Create yDimEditFieldLabel_2
            app.yDimEditFieldLabel_2 = uilabel(app.Tab_2);
            app.yDimEditFieldLabel_2.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_2.FontColor = [1 1 1];
            app.yDimEditFieldLabel_2.Position = [18 181 36 15];
            app.yDimEditFieldLabel_2.Text = 'y Dim';

            % Create yDim_Tab_2
            app.yDim_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.yDim_Tab_2.FontColor = [1 1 1];
            app.yDim_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_2.Position = [69 178 55 22];

            % Create zDimEditFieldLabel_2
            app.zDimEditFieldLabel_2 = uilabel(app.Tab_2);
            app.zDimEditFieldLabel_2.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_2.FontColor = [1 1 1];
            app.zDimEditFieldLabel_2.Position = [18 149 36 15];
            app.zDimEditFieldLabel_2.Text = 'z Dim';

            % Create zDim_Tab_2
            app.zDim_Tab_2 = uieditfield(app.Tab_2, 'numeric');
            app.zDim_Tab_2.FontColor = [1 1 1];
            app.zDim_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_2.Position = [69 145 55 22];

            % Create includeTS_group_Tab_2
            app.includeTS_group_Tab_2 = uibuttongroup(app.Tab_2);
            app.includeTS_group_Tab_2.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_2.Title = 'Include Time Series';
            app.includeTS_group_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_2.Position = [177 161 162 56];

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
            app.ChBDropDownLabel_2.Position = [17 303 36 15];
            app.ChBDropDownLabel_2.Text = 'Ch. B';

            % Create ChB_Tab_2
            app.ChB_Tab_2 = uidropdown(app.Tab_2);
            app.ChB_Tab_2.Items = {'Not selected', 'mCherry-Rab5', 'DY547-chol-siRNA', 'Option 1'};
            app.ChB_Tab_2.Editable = 'on';
            app.ChB_Tab_2.FontColor = [1 1 1];
            app.ChB_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_2.Position = [68 299 148 22];
            app.ChB_Tab_2.Value = 'Not selected';

            % Create ChCDropDownLabel_2
            app.ChCDropDownLabel_2 = uilabel(app.Tab_2);
            app.ChCDropDownLabel_2.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_2.VerticalAlignment = 'top';
            app.ChCDropDownLabel_2.FontColor = [1 1 1];
            app.ChCDropDownLabel_2.Position = [17 274 36 15];
            app.ChCDropDownLabel_2.Text = 'Ch. C';

            % Create ChC_Tab_2
            app.ChC_Tab_2 = uidropdown(app.Tab_2);
            app.ChC_Tab_2.Items = {'Not selected'};
            app.ChC_Tab_2.Editable = 'on';
            app.ChC_Tab_2.FontColor = [1 1 1];
            app.ChC_Tab_2.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_2.Position = [68 270 148 22];
            app.ChC_Tab_2.Value = 'Not selected';

            % Create Tab_3
            app.Tab_3 = uitab(app.TabGroup);
            app.Tab_3.Title = '3';
            app.Tab_3.BackgroundColor = [0.1216 0.1294 0.1608];

            % Create TimeSeriesEditFieldLabel_3
            app.TimeSeriesEditFieldLabel_3 = uilabel(app.Tab_3);
            app.TimeSeriesEditFieldLabel_3.HorizontalAlignment = 'right';
            app.TimeSeriesEditFieldLabel_3.VerticalAlignment = 'top';
            app.TimeSeriesEditFieldLabel_3.FontColor = [1 1 1];
            app.TimeSeriesEditFieldLabel_3.Position = [227 378 68 15];
            app.TimeSeriesEditFieldLabel_3.Text = 'Time Series';

            % Create TS_Tab_3
            app.TS_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.TS_Tab_3.FontColor = [1 1 1];
            app.TS_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_3.Position = [298 374 41 22];

            % Create ChADropDownLabel_3
            app.ChADropDownLabel_3 = uilabel(app.Tab_3);
            app.ChADropDownLabel_3.HorizontalAlignment = 'right';
            app.ChADropDownLabel_3.VerticalAlignment = 'top';
            app.ChADropDownLabel_3.FontColor = [1 1 1];
            app.ChADropDownLabel_3.Position = [18 334 35 15];
            app.ChADropDownLabel_3.Text = 'Ch. A';

            % Create ChA_Tab_3
            app.ChA_Tab_3 = uidropdown(app.Tab_3);
            app.ChA_Tab_3.Items = {'Not selected', 'mCherry-Rab5', 'DY547-chol-siRNA', 'YFP-galectin-9'};
            app.ChA_Tab_3.Editable = 'on';
            app.ChA_Tab_3.FontColor = [1 1 1];
            app.ChA_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_3.Position = [68 330 148 22];
            app.ChA_Tab_3.Value = 'Not selected';

            % Create EmissionLabel_7
            app.EmissionLabel_7 = uilabel(app.Tab_3);
            app.EmissionLabel_7.HorizontalAlignment = 'right';
            app.EmissionLabel_7.VerticalAlignment = 'top';
            app.EmissionLabel_7.FontColor = [1 1 1];
            app.EmissionLabel_7.Position = [229 334 54 15];
            app.EmissionLabel_7.Text = 'Emission';

            % Create ChA_Em_Tab_3
            app.ChA_Em_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.ChA_Em_Tab_3.FontColor = [1 1 1];
            app.ChA_Em_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_3.Position = [298 330 41 22];

            % Create ExperimentEditField_2Label_3
            app.ExperimentEditField_2Label_3 = uilabel(app.Tab_3);
            app.ExperimentEditField_2Label_3.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_3.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_3.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_3.Position = [12 378 67 15];
            app.ExperimentEditField_2Label_3.Text = 'Experiment';

            % Create experimentID_Tab_3
            app.experimentID_Tab_3 = uieditfield(app.Tab_3, 'text');
            app.experimentID_Tab_3.FontColor = [1 1 1];
            app.experimentID_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_3.Position = [94 374 122 22];

            % Create activateTab_3
            app.activateTab_3 = uicheckbox(app.Tab_3);
            app.activateTab_3.Text = 'Activate experiment tab';
            app.activateTab_3.FontWeight = 'bold';
            app.activateTab_3.FontColor = [0.902 0.902 0.902];
            app.activateTab_3.Position = [18 412 159 15];

            % Create xDimEditFieldLabel_3
            app.xDimEditFieldLabel_3 = uilabel(app.Tab_3);
            app.xDimEditFieldLabel_3.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_3.FontColor = [1 1 1];
            app.xDimEditFieldLabel_3.Position = [18 213 35 15];
            app.xDimEditFieldLabel_3.Text = 'x Dim';

            % Create xDim_Tab_3
            app.xDim_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.xDim_Tab_3.FontColor = [1 1 1];
            app.xDim_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_3.Position = [69 209 55 22];

            % Create EmissionLabel_8
            app.EmissionLabel_8 = uilabel(app.Tab_3);
            app.EmissionLabel_8.HorizontalAlignment = 'right';
            app.EmissionLabel_8.VerticalAlignment = 'top';
            app.EmissionLabel_8.FontColor = [1 1 1];
            app.EmissionLabel_8.Position = [229 303 54 15];
            app.EmissionLabel_8.Text = 'Emission';

            % Create ChB_Em_Tab_3
            app.ChB_Em_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.ChB_Em_Tab_3.FontColor = [1 1 1];
            app.ChB_Em_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_3.Position = [298 299 41 22];

            % Create EmissionLabel_9
            app.EmissionLabel_9 = uilabel(app.Tab_3);
            app.EmissionLabel_9.HorizontalAlignment = 'right';
            app.EmissionLabel_9.VerticalAlignment = 'top';
            app.EmissionLabel_9.FontColor = [1 1 1];
            app.EmissionLabel_9.Position = [229 274 54 15];
            app.EmissionLabel_9.Text = 'Emission';

            % Create ChC_Em_Tab_3
            app.ChC_Em_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.ChC_Em_Tab_3.FontColor = [1 1 1];
            app.ChC_Em_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_3.Position = [298 270 41 22];

            % Create ImagepropertiesLabel_3
            app.ImagepropertiesLabel_3 = uilabel(app.Tab_3);
            app.ImagepropertiesLabel_3.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_3.FontWeight = 'bold';
            app.ImagepropertiesLabel_3.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_3.Position = [18 234 103 15];
            app.ImagepropertiesLabel_3.Text = 'Image properties';

            % Create yDimEditFieldLabel_3
            app.yDimEditFieldLabel_3 = uilabel(app.Tab_3);
            app.yDimEditFieldLabel_3.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_3.FontColor = [1 1 1];
            app.yDimEditFieldLabel_3.Position = [18 181 36 15];
            app.yDimEditFieldLabel_3.Text = 'y Dim';

            % Create yDim_Tab_3
            app.yDim_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.yDim_Tab_3.FontColor = [1 1 1];
            app.yDim_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_3.Position = [69 178 55 22];

            % Create zDimEditFieldLabel_3
            app.zDimEditFieldLabel_3 = uilabel(app.Tab_3);
            app.zDimEditFieldLabel_3.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_3.FontColor = [1 1 1];
            app.zDimEditFieldLabel_3.Position = [18 149 36 15];
            app.zDimEditFieldLabel_3.Text = 'z Dim';

            % Create zDim_Tab_3
            app.zDim_Tab_3 = uieditfield(app.Tab_3, 'numeric');
            app.zDim_Tab_3.FontColor = [1 1 1];
            app.zDim_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_3.Position = [69 145 55 22];

            % Create includeTS_group_Tab_3
            app.includeTS_group_Tab_3 = uibuttongroup(app.Tab_3);
            app.includeTS_group_Tab_3.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_3.Title = 'Include Time Series';
            app.includeTS_group_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_3.Position = [177 161 162 56];

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
            app.ChBDropDownLabel_3.Position = [17 303 36 15];
            app.ChBDropDownLabel_3.Text = 'Ch. B';

            % Create ChB_Tab_3
            app.ChB_Tab_3 = uidropdown(app.Tab_3);
            app.ChB_Tab_3.Items = {'Not selected', 'mCherry-Rab5', 'DY547-chol-siRNA', 'Option 1'};
            app.ChB_Tab_3.Editable = 'on';
            app.ChB_Tab_3.FontColor = [1 1 1];
            app.ChB_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_3.Position = [68 299 148 22];
            app.ChB_Tab_3.Value = 'Not selected';

            % Create ChCDropDownLabel_3
            app.ChCDropDownLabel_3 = uilabel(app.Tab_3);
            app.ChCDropDownLabel_3.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_3.VerticalAlignment = 'top';
            app.ChCDropDownLabel_3.FontColor = [1 1 1];
            app.ChCDropDownLabel_3.Position = [17 274 36 15];
            app.ChCDropDownLabel_3.Text = 'Ch. C';

            % Create ChC_Tab_3
            app.ChC_Tab_3 = uidropdown(app.Tab_3);
            app.ChC_Tab_3.Items = {'Not selected'};
            app.ChC_Tab_3.Editable = 'on';
            app.ChC_Tab_3.FontColor = [1 1 1];
            app.ChC_Tab_3.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_3.Position = [68 270 148 22];
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
            app.TimeSeriesEditFieldLabel_4.Position = [227 378 68 15];
            app.TimeSeriesEditFieldLabel_4.Text = 'Time Series';

            % Create TS_Tab_4
            app.TS_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.TS_Tab_4.FontColor = [1 1 1];
            app.TS_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_4.Position = [298 374 41 22];

            % Create ChADropDownLabel_4
            app.ChADropDownLabel_4 = uilabel(app.Tab_4);
            app.ChADropDownLabel_4.HorizontalAlignment = 'right';
            app.ChADropDownLabel_4.VerticalAlignment = 'top';
            app.ChADropDownLabel_4.FontColor = [1 1 1];
            app.ChADropDownLabel_4.Position = [18 334 35 15];
            app.ChADropDownLabel_4.Text = 'Ch. A';

            % Create ChA_Tab_4
            app.ChA_Tab_4 = uidropdown(app.Tab_4);
            app.ChA_Tab_4.Items = {'Not selected'};
            app.ChA_Tab_4.Editable = 'on';
            app.ChA_Tab_4.FontColor = [1 1 1];
            app.ChA_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_4.Position = [68 330 148 22];
            app.ChA_Tab_4.Value = 'Not selected';

            % Create EmissionLabel_10
            app.EmissionLabel_10 = uilabel(app.Tab_4);
            app.EmissionLabel_10.HorizontalAlignment = 'right';
            app.EmissionLabel_10.VerticalAlignment = 'top';
            app.EmissionLabel_10.FontColor = [1 1 1];
            app.EmissionLabel_10.Position = [229 334 54 15];
            app.EmissionLabel_10.Text = 'Emission';

            % Create ChA_Em_Tab_4
            app.ChA_Em_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.ChA_Em_Tab_4.FontColor = [1 1 1];
            app.ChA_Em_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_4.Position = [298 330 41 22];

            % Create ExperimentEditField_2Label_4
            app.ExperimentEditField_2Label_4 = uilabel(app.Tab_4);
            app.ExperimentEditField_2Label_4.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_4.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_4.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_4.Position = [12 378 67 15];
            app.ExperimentEditField_2Label_4.Text = 'Experiment';

            % Create experimentID_Tab_4
            app.experimentID_Tab_4 = uieditfield(app.Tab_4, 'text');
            app.experimentID_Tab_4.FontColor = [1 1 1];
            app.experimentID_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_4.Position = [94 374 122 22];

            % Create activateTab_4
            app.activateTab_4 = uicheckbox(app.Tab_4);
            app.activateTab_4.Text = 'Activate experiment tab';
            app.activateTab_4.FontWeight = 'bold';
            app.activateTab_4.FontColor = [0.902 0.902 0.902];
            app.activateTab_4.Position = [18 412 159 15];

            % Create xDimEditFieldLabel_4
            app.xDimEditFieldLabel_4 = uilabel(app.Tab_4);
            app.xDimEditFieldLabel_4.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_4.FontColor = [1 1 1];
            app.xDimEditFieldLabel_4.Position = [18 213 35 15];
            app.xDimEditFieldLabel_4.Text = 'x Dim';

            % Create xDim_Tab_4
            app.xDim_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.xDim_Tab_4.FontColor = [1 1 1];
            app.xDim_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_4.Position = [69 209 55 22];

            % Create EmissionLabel_11
            app.EmissionLabel_11 = uilabel(app.Tab_4);
            app.EmissionLabel_11.HorizontalAlignment = 'right';
            app.EmissionLabel_11.VerticalAlignment = 'top';
            app.EmissionLabel_11.FontColor = [1 1 1];
            app.EmissionLabel_11.Position = [229 303 54 15];
            app.EmissionLabel_11.Text = 'Emission';

            % Create ChB_Em_Tab_4
            app.ChB_Em_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.ChB_Em_Tab_4.FontColor = [1 1 1];
            app.ChB_Em_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_4.Position = [298 299 41 22];

            % Create EmissionLabel_12
            app.EmissionLabel_12 = uilabel(app.Tab_4);
            app.EmissionLabel_12.HorizontalAlignment = 'right';
            app.EmissionLabel_12.VerticalAlignment = 'top';
            app.EmissionLabel_12.FontColor = [1 1 1];
            app.EmissionLabel_12.Position = [229 274 54 15];
            app.EmissionLabel_12.Text = 'Emission';

            % Create ChC_Em_Tab_4
            app.ChC_Em_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.ChC_Em_Tab_4.FontColor = [1 1 1];
            app.ChC_Em_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_4.Position = [298 270 41 22];

            % Create ImagepropertiesLabel_4
            app.ImagepropertiesLabel_4 = uilabel(app.Tab_4);
            app.ImagepropertiesLabel_4.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_4.FontWeight = 'bold';
            app.ImagepropertiesLabel_4.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_4.Position = [18 234 103 15];
            app.ImagepropertiesLabel_4.Text = 'Image properties';

            % Create yDimEditFieldLabel_4
            app.yDimEditFieldLabel_4 = uilabel(app.Tab_4);
            app.yDimEditFieldLabel_4.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_4.FontColor = [1 1 1];
            app.yDimEditFieldLabel_4.Position = [18 181 36 15];
            app.yDimEditFieldLabel_4.Text = 'y Dim';

            % Create yDim_Tab_4
            app.yDim_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.yDim_Tab_4.FontColor = [1 1 1];
            app.yDim_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_4.Position = [69 178 55 22];

            % Create zDimEditFieldLabel_4
            app.zDimEditFieldLabel_4 = uilabel(app.Tab_4);
            app.zDimEditFieldLabel_4.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_4.FontColor = [1 1 1];
            app.zDimEditFieldLabel_4.Position = [18 149 36 15];
            app.zDimEditFieldLabel_4.Text = 'z Dim';

            % Create zDim_Tab_4
            app.zDim_Tab_4 = uieditfield(app.Tab_4, 'numeric');
            app.zDim_Tab_4.FontColor = [1 1 1];
            app.zDim_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_4.Position = [69 145 55 22];

            % Create includeTS_group_Tab_4
            app.includeTS_group_Tab_4 = uibuttongroup(app.Tab_4);
            app.includeTS_group_Tab_4.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_4.Title = 'Include Time Series';
            app.includeTS_group_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_4.Position = [177 161 162 56];

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
            app.ChBDropDownLabel_4.Position = [17 303 36 15];
            app.ChBDropDownLabel_4.Text = 'Ch. B';

            % Create ChB_Tab_4
            app.ChB_Tab_4 = uidropdown(app.Tab_4);
            app.ChB_Tab_4.Items = {'Not selected'};
            app.ChB_Tab_4.Editable = 'on';
            app.ChB_Tab_4.FontColor = [1 1 1];
            app.ChB_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_4.Position = [68 299 148 22];
            app.ChB_Tab_4.Value = 'Not selected';

            % Create ChCDropDownLabel_4
            app.ChCDropDownLabel_4 = uilabel(app.Tab_4);
            app.ChCDropDownLabel_4.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_4.VerticalAlignment = 'top';
            app.ChCDropDownLabel_4.FontColor = [1 1 1];
            app.ChCDropDownLabel_4.Position = [17 274 36 15];
            app.ChCDropDownLabel_4.Text = 'Ch. C';

            % Create ChC_Tab_4
            app.ChC_Tab_4 = uidropdown(app.Tab_4);
            app.ChC_Tab_4.Items = {'Not selected'};
            app.ChC_Tab_4.Editable = 'on';
            app.ChC_Tab_4.FontColor = [1 1 1];
            app.ChC_Tab_4.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_4.Position = [68 270 148 22];
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
            app.TimeSeriesEditFieldLabel_5.Position = [227 378 68 15];
            app.TimeSeriesEditFieldLabel_5.Text = 'Time Series';

            % Create TS_Tab_5
            app.TS_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.TS_Tab_5.FontColor = [1 1 1];
            app.TS_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_5.Position = [298 374 41 22];

            % Create ChADropDownLabel_5
            app.ChADropDownLabel_5 = uilabel(app.Tab_5);
            app.ChADropDownLabel_5.HorizontalAlignment = 'right';
            app.ChADropDownLabel_5.VerticalAlignment = 'top';
            app.ChADropDownLabel_5.FontColor = [1 1 1];
            app.ChADropDownLabel_5.Position = [18 334 35 15];
            app.ChADropDownLabel_5.Text = 'Ch. A';

            % Create ChA_Tab_5
            app.ChA_Tab_5 = uidropdown(app.Tab_5);
            app.ChA_Tab_5.Items = {'Not selected'};
            app.ChA_Tab_5.Editable = 'on';
            app.ChA_Tab_5.FontColor = [1 1 1];
            app.ChA_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_5.Position = [68 330 148 22];
            app.ChA_Tab_5.Value = 'Not selected';

            % Create EmissionLabel_13
            app.EmissionLabel_13 = uilabel(app.Tab_5);
            app.EmissionLabel_13.HorizontalAlignment = 'right';
            app.EmissionLabel_13.VerticalAlignment = 'top';
            app.EmissionLabel_13.FontColor = [1 1 1];
            app.EmissionLabel_13.Position = [229 334 54 15];
            app.EmissionLabel_13.Text = 'Emission';

            % Create ChA_Em_Tab_5
            app.ChA_Em_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.ChA_Em_Tab_5.FontColor = [1 1 1];
            app.ChA_Em_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_5.Position = [298 330 41 22];

            % Create ExperimentEditField_2Label_5
            app.ExperimentEditField_2Label_5 = uilabel(app.Tab_5);
            app.ExperimentEditField_2Label_5.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_5.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_5.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_5.Position = [12 378 67 15];
            app.ExperimentEditField_2Label_5.Text = 'Experiment';

            % Create experimentID_Tab_5
            app.experimentID_Tab_5 = uieditfield(app.Tab_5, 'text');
            app.experimentID_Tab_5.FontColor = [1 1 1];
            app.experimentID_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_5.Position = [94 374 122 22];

            % Create activateTab_5
            app.activateTab_5 = uicheckbox(app.Tab_5);
            app.activateTab_5.Text = 'Activate experiment tab';
            app.activateTab_5.FontWeight = 'bold';
            app.activateTab_5.FontColor = [0.902 0.902 0.902];
            app.activateTab_5.Position = [18 412 159 15];

            % Create xDimEditFieldLabel_5
            app.xDimEditFieldLabel_5 = uilabel(app.Tab_5);
            app.xDimEditFieldLabel_5.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_5.FontColor = [1 1 1];
            app.xDimEditFieldLabel_5.Position = [18 213 35 15];
            app.xDimEditFieldLabel_5.Text = 'x Dim';

            % Create xDim_Tab_5
            app.xDim_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.xDim_Tab_5.FontColor = [1 1 1];
            app.xDim_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_5.Position = [69 209 55 22];

            % Create EmissionLabel_14
            app.EmissionLabel_14 = uilabel(app.Tab_5);
            app.EmissionLabel_14.HorizontalAlignment = 'right';
            app.EmissionLabel_14.VerticalAlignment = 'top';
            app.EmissionLabel_14.FontColor = [1 1 1];
            app.EmissionLabel_14.Position = [229 303 54 15];
            app.EmissionLabel_14.Text = 'Emission';

            % Create ChB_Em_Tab_5
            app.ChB_Em_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.ChB_Em_Tab_5.FontColor = [1 1 1];
            app.ChB_Em_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_5.Position = [298 299 41 22];

            % Create EmissionLabel_15
            app.EmissionLabel_15 = uilabel(app.Tab_5);
            app.EmissionLabel_15.HorizontalAlignment = 'right';
            app.EmissionLabel_15.VerticalAlignment = 'top';
            app.EmissionLabel_15.FontColor = [1 1 1];
            app.EmissionLabel_15.Position = [229 274 54 15];
            app.EmissionLabel_15.Text = 'Emission';

            % Create ChC_Em_Tab_5
            app.ChC_Em_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.ChC_Em_Tab_5.FontColor = [1 1 1];
            app.ChC_Em_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_5.Position = [298 270 41 22];

            % Create ImagepropertiesLabel_5
            app.ImagepropertiesLabel_5 = uilabel(app.Tab_5);
            app.ImagepropertiesLabel_5.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_5.FontWeight = 'bold';
            app.ImagepropertiesLabel_5.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_5.Position = [18 234 103 15];
            app.ImagepropertiesLabel_5.Text = 'Image properties';

            % Create yDimEditFieldLabel_5
            app.yDimEditFieldLabel_5 = uilabel(app.Tab_5);
            app.yDimEditFieldLabel_5.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_5.FontColor = [1 1 1];
            app.yDimEditFieldLabel_5.Position = [18 181 36 15];
            app.yDimEditFieldLabel_5.Text = 'y Dim';

            % Create yDim_Tab_5
            app.yDim_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.yDim_Tab_5.FontColor = [1 1 1];
            app.yDim_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_5.Position = [69 178 55 22];

            % Create zDimEditFieldLabel_5
            app.zDimEditFieldLabel_5 = uilabel(app.Tab_5);
            app.zDimEditFieldLabel_5.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_5.FontColor = [1 1 1];
            app.zDimEditFieldLabel_5.Position = [18 149 36 15];
            app.zDimEditFieldLabel_5.Text = 'z Dim';

            % Create zDim_Tab_5
            app.zDim_Tab_5 = uieditfield(app.Tab_5, 'numeric');
            app.zDim_Tab_5.FontColor = [1 1 1];
            app.zDim_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_5.Position = [69 145 55 22];

            % Create includeTS_group_Tab_5
            app.includeTS_group_Tab_5 = uibuttongroup(app.Tab_5);
            app.includeTS_group_Tab_5.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_5.Title = 'Include Time Series';
            app.includeTS_group_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_5.Position = [177 161 162 56];

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
            app.ChBDropDownLabel_5.Position = [17 303 36 15];
            app.ChBDropDownLabel_5.Text = 'Ch. B';

            % Create ChB_Tab_5
            app.ChB_Tab_5 = uidropdown(app.Tab_5);
            app.ChB_Tab_5.Items = {'Not selected'};
            app.ChB_Tab_5.Editable = 'on';
            app.ChB_Tab_5.FontColor = [1 1 1];
            app.ChB_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_5.Position = [68 299 148 22];
            app.ChB_Tab_5.Value = 'Not selected';

            % Create ChCDropDownLabel_5
            app.ChCDropDownLabel_5 = uilabel(app.Tab_5);
            app.ChCDropDownLabel_5.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_5.VerticalAlignment = 'top';
            app.ChCDropDownLabel_5.FontColor = [1 1 1];
            app.ChCDropDownLabel_5.Position = [17 274 36 15];
            app.ChCDropDownLabel_5.Text = 'Ch. C';

            % Create ChC_Tab_5
            app.ChC_Tab_5 = uidropdown(app.Tab_5);
            app.ChC_Tab_5.Items = {'Not selected'};
            app.ChC_Tab_5.Editable = 'on';
            app.ChC_Tab_5.FontColor = [1 1 1];
            app.ChC_Tab_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_5.Position = [68 270 148 22];
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
            app.TimeSeriesEditFieldLabel_6.Position = [227 378 68 15];
            app.TimeSeriesEditFieldLabel_6.Text = 'Time Series';

            % Create TS_Tab_6
            app.TS_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.TS_Tab_6.FontColor = [1 1 1];
            app.TS_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_6.Position = [298 374 41 22];

            % Create ChADropDownLabel_6
            app.ChADropDownLabel_6 = uilabel(app.Tab_6);
            app.ChADropDownLabel_6.HorizontalAlignment = 'right';
            app.ChADropDownLabel_6.VerticalAlignment = 'top';
            app.ChADropDownLabel_6.FontColor = [1 1 1];
            app.ChADropDownLabel_6.Position = [18 334 35 15];
            app.ChADropDownLabel_6.Text = 'Ch. A';

            % Create ChA_Tab_6
            app.ChA_Tab_6 = uidropdown(app.Tab_6);
            app.ChA_Tab_6.Items = {'Not selected'};
            app.ChA_Tab_6.Editable = 'on';
            app.ChA_Tab_6.FontColor = [1 1 1];
            app.ChA_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_6.Position = [68 330 148 22];
            app.ChA_Tab_6.Value = 'Not selected';

            % Create EmissionLabel_16
            app.EmissionLabel_16 = uilabel(app.Tab_6);
            app.EmissionLabel_16.HorizontalAlignment = 'right';
            app.EmissionLabel_16.VerticalAlignment = 'top';
            app.EmissionLabel_16.FontColor = [1 1 1];
            app.EmissionLabel_16.Position = [229 334 54 15];
            app.EmissionLabel_16.Text = 'Emission';

            % Create ChA_Em_Tab_6
            app.ChA_Em_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.ChA_Em_Tab_6.FontColor = [1 1 1];
            app.ChA_Em_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_6.Position = [298 330 41 22];

            % Create ExperimentEditField_2Label_6
            app.ExperimentEditField_2Label_6 = uilabel(app.Tab_6);
            app.ExperimentEditField_2Label_6.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_6.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_6.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_6.Position = [12 378 67 15];
            app.ExperimentEditField_2Label_6.Text = 'Experiment';

            % Create experimentID_Tab_6
            app.experimentID_Tab_6 = uieditfield(app.Tab_6, 'text');
            app.experimentID_Tab_6.FontColor = [1 1 1];
            app.experimentID_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_6.Position = [94 374 122 22];

            % Create activateTab_6
            app.activateTab_6 = uicheckbox(app.Tab_6);
            app.activateTab_6.Text = 'Activate experiment tab';
            app.activateTab_6.FontWeight = 'bold';
            app.activateTab_6.FontColor = [0.902 0.902 0.902];
            app.activateTab_6.Position = [18 412 159 15];

            % Create xDimEditFieldLabel_6
            app.xDimEditFieldLabel_6 = uilabel(app.Tab_6);
            app.xDimEditFieldLabel_6.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_6.FontColor = [1 1 1];
            app.xDimEditFieldLabel_6.Position = [18 213 35 15];
            app.xDimEditFieldLabel_6.Text = 'x Dim';

            % Create xDim_Tab_6
            app.xDim_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.xDim_Tab_6.FontColor = [1 1 1];
            app.xDim_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_6.Position = [69 209 55 22];

            % Create EmissionLabel_17
            app.EmissionLabel_17 = uilabel(app.Tab_6);
            app.EmissionLabel_17.HorizontalAlignment = 'right';
            app.EmissionLabel_17.VerticalAlignment = 'top';
            app.EmissionLabel_17.FontColor = [1 1 1];
            app.EmissionLabel_17.Position = [229 303 54 15];
            app.EmissionLabel_17.Text = 'Emission';

            % Create ChB_Em_Tab_6
            app.ChB_Em_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.ChB_Em_Tab_6.FontColor = [1 1 1];
            app.ChB_Em_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_6.Position = [298 299 41 22];

            % Create EmissionLabel_18
            app.EmissionLabel_18 = uilabel(app.Tab_6);
            app.EmissionLabel_18.HorizontalAlignment = 'right';
            app.EmissionLabel_18.VerticalAlignment = 'top';
            app.EmissionLabel_18.FontColor = [1 1 1];
            app.EmissionLabel_18.Position = [229 274 54 15];
            app.EmissionLabel_18.Text = 'Emission';

            % Create ChC_Em_Tab_6
            app.ChC_Em_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.ChC_Em_Tab_6.FontColor = [1 1 1];
            app.ChC_Em_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_6.Position = [298 270 41 22];

            % Create ImagepropertiesLabel_6
            app.ImagepropertiesLabel_6 = uilabel(app.Tab_6);
            app.ImagepropertiesLabel_6.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_6.FontWeight = 'bold';
            app.ImagepropertiesLabel_6.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_6.Position = [18 234 103 15];
            app.ImagepropertiesLabel_6.Text = 'Image properties';

            % Create yDimEditFieldLabel_6
            app.yDimEditFieldLabel_6 = uilabel(app.Tab_6);
            app.yDimEditFieldLabel_6.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_6.FontColor = [1 1 1];
            app.yDimEditFieldLabel_6.Position = [18 181 36 15];
            app.yDimEditFieldLabel_6.Text = 'y Dim';

            % Create yDim_Tab_6
            app.yDim_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.yDim_Tab_6.FontColor = [1 1 1];
            app.yDim_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_6.Position = [69 178 55 22];

            % Create zDimEditFieldLabel_6
            app.zDimEditFieldLabel_6 = uilabel(app.Tab_6);
            app.zDimEditFieldLabel_6.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_6.FontColor = [1 1 1];
            app.zDimEditFieldLabel_6.Position = [18 149 36 15];
            app.zDimEditFieldLabel_6.Text = 'z Dim';

            % Create zDim_Tab_6
            app.zDim_Tab_6 = uieditfield(app.Tab_6, 'numeric');
            app.zDim_Tab_6.FontColor = [1 1 1];
            app.zDim_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_6.Position = [69 145 55 22];

            % Create includeTS_group_Tab_6
            app.includeTS_group_Tab_6 = uibuttongroup(app.Tab_6);
            app.includeTS_group_Tab_6.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_6.Title = 'Include Time Series';
            app.includeTS_group_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_6.Position = [177 161 162 56];

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
            app.ChBDropDownLabel_6.Position = [17 303 36 15];
            app.ChBDropDownLabel_6.Text = 'Ch. B';

            % Create ChB_Tab_6
            app.ChB_Tab_6 = uidropdown(app.Tab_6);
            app.ChB_Tab_6.Items = {'Not selected'};
            app.ChB_Tab_6.Editable = 'on';
            app.ChB_Tab_6.FontColor = [1 1 1];
            app.ChB_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_6.Position = [68 299 148 22];
            app.ChB_Tab_6.Value = 'Not selected';

            % Create ChCDropDownLabel_6
            app.ChCDropDownLabel_6 = uilabel(app.Tab_6);
            app.ChCDropDownLabel_6.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_6.VerticalAlignment = 'top';
            app.ChCDropDownLabel_6.FontColor = [1 1 1];
            app.ChCDropDownLabel_6.Position = [17 274 36 15];
            app.ChCDropDownLabel_6.Text = 'Ch. C';

            % Create ChC_Tab_6
            app.ChC_Tab_6 = uidropdown(app.Tab_6);
            app.ChC_Tab_6.Items = {'Not selected'};
            app.ChC_Tab_6.Editable = 'on';
            app.ChC_Tab_6.FontColor = [1 1 1];
            app.ChC_Tab_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_6.Position = [68 270 148 22];
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
            app.TimeSeriesEditFieldLabel_7.Position = [227 378 68 15];
            app.TimeSeriesEditFieldLabel_7.Text = 'Time Series';

            % Create TS_Tab_7
            app.TS_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.TS_Tab_7.FontColor = [1 1 1];
            app.TS_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_7.Position = [298 374 41 22];

            % Create ChADropDownLabel_7
            app.ChADropDownLabel_7 = uilabel(app.Tab_7);
            app.ChADropDownLabel_7.HorizontalAlignment = 'right';
            app.ChADropDownLabel_7.VerticalAlignment = 'top';
            app.ChADropDownLabel_7.FontColor = [1 1 1];
            app.ChADropDownLabel_7.Position = [18 334 35 15];
            app.ChADropDownLabel_7.Text = 'Ch. A';

            % Create ChA_Tab_7
            app.ChA_Tab_7 = uidropdown(app.Tab_7);
            app.ChA_Tab_7.Items = {'Not selected'};
            app.ChA_Tab_7.Editable = 'on';
            app.ChA_Tab_7.FontColor = [1 1 1];
            app.ChA_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_7.Position = [68 330 148 22];
            app.ChA_Tab_7.Value = 'Not selected';

            % Create EmissionLabel_19
            app.EmissionLabel_19 = uilabel(app.Tab_7);
            app.EmissionLabel_19.HorizontalAlignment = 'right';
            app.EmissionLabel_19.VerticalAlignment = 'top';
            app.EmissionLabel_19.FontColor = [1 1 1];
            app.EmissionLabel_19.Position = [229 334 54 15];
            app.EmissionLabel_19.Text = 'Emission';

            % Create ChA_Em_Tab_7
            app.ChA_Em_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.ChA_Em_Tab_7.FontColor = [1 1 1];
            app.ChA_Em_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_7.Position = [298 330 41 22];

            % Create ExperimentEditField_2Label_7
            app.ExperimentEditField_2Label_7 = uilabel(app.Tab_7);
            app.ExperimentEditField_2Label_7.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_7.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_7.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_7.Position = [12 378 67 15];
            app.ExperimentEditField_2Label_7.Text = 'Experiment';

            % Create experimentID_Tab_7
            app.experimentID_Tab_7 = uieditfield(app.Tab_7, 'text');
            app.experimentID_Tab_7.FontColor = [1 1 1];
            app.experimentID_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_7.Position = [94 374 122 22];

            % Create activateTab_7
            app.activateTab_7 = uicheckbox(app.Tab_7);
            app.activateTab_7.Text = 'Activate experiment tab';
            app.activateTab_7.FontWeight = 'bold';
            app.activateTab_7.FontColor = [0.902 0.902 0.902];
            app.activateTab_7.Position = [18 412 159 15];

            % Create xDimEditFieldLabel_7
            app.xDimEditFieldLabel_7 = uilabel(app.Tab_7);
            app.xDimEditFieldLabel_7.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_7.FontColor = [1 1 1];
            app.xDimEditFieldLabel_7.Position = [18 213 35 15];
            app.xDimEditFieldLabel_7.Text = 'x Dim';

            % Create xDim_Tab_7
            app.xDim_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.xDim_Tab_7.FontColor = [1 1 1];
            app.xDim_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_7.Position = [69 209 55 22];

            % Create EmissionLabel_20
            app.EmissionLabel_20 = uilabel(app.Tab_7);
            app.EmissionLabel_20.HorizontalAlignment = 'right';
            app.EmissionLabel_20.VerticalAlignment = 'top';
            app.EmissionLabel_20.FontColor = [1 1 1];
            app.EmissionLabel_20.Position = [229 303 54 15];
            app.EmissionLabel_20.Text = 'Emission';

            % Create ChB_Em_Tab_7
            app.ChB_Em_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.ChB_Em_Tab_7.FontColor = [1 1 1];
            app.ChB_Em_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_7.Position = [298 299 41 22];

            % Create EmissionLabel_21
            app.EmissionLabel_21 = uilabel(app.Tab_7);
            app.EmissionLabel_21.HorizontalAlignment = 'right';
            app.EmissionLabel_21.VerticalAlignment = 'top';
            app.EmissionLabel_21.FontColor = [1 1 1];
            app.EmissionLabel_21.Position = [229 274 54 15];
            app.EmissionLabel_21.Text = 'Emission';

            % Create ChC_Em_Tab_7
            app.ChC_Em_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.ChC_Em_Tab_7.FontColor = [1 1 1];
            app.ChC_Em_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_7.Position = [298 270 41 22];

            % Create ImagepropertiesLabel_7
            app.ImagepropertiesLabel_7 = uilabel(app.Tab_7);
            app.ImagepropertiesLabel_7.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_7.FontWeight = 'bold';
            app.ImagepropertiesLabel_7.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_7.Position = [18 234 103 15];
            app.ImagepropertiesLabel_7.Text = 'Image properties';

            % Create yDimEditFieldLabel_7
            app.yDimEditFieldLabel_7 = uilabel(app.Tab_7);
            app.yDimEditFieldLabel_7.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_7.FontColor = [1 1 1];
            app.yDimEditFieldLabel_7.Position = [18 181 36 15];
            app.yDimEditFieldLabel_7.Text = 'y Dim';

            % Create yDim_Tab_7
            app.yDim_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.yDim_Tab_7.FontColor = [1 1 1];
            app.yDim_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_7.Position = [69 178 55 22];

            % Create zDimEditFieldLabel_7
            app.zDimEditFieldLabel_7 = uilabel(app.Tab_7);
            app.zDimEditFieldLabel_7.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_7.FontColor = [1 1 1];
            app.zDimEditFieldLabel_7.Position = [18 149 36 15];
            app.zDimEditFieldLabel_7.Text = 'z Dim';

            % Create zDim_Tab_7
            app.zDim_Tab_7 = uieditfield(app.Tab_7, 'numeric');
            app.zDim_Tab_7.FontColor = [1 1 1];
            app.zDim_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_7.Position = [69 145 55 22];

            % Create includeTS_group_Tab_7
            app.includeTS_group_Tab_7 = uibuttongroup(app.Tab_7);
            app.includeTS_group_Tab_7.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_7.Title = 'Include Time Series';
            app.includeTS_group_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_7.Position = [177 161 162 56];

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
            app.ChBDropDownLabel_7.Position = [17 303 36 15];
            app.ChBDropDownLabel_7.Text = 'Ch. B';

            % Create ChB_Tab_7
            app.ChB_Tab_7 = uidropdown(app.Tab_7);
            app.ChB_Tab_7.Items = {'Not selected'};
            app.ChB_Tab_7.Editable = 'on';
            app.ChB_Tab_7.FontColor = [1 1 1];
            app.ChB_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_7.Position = [68 299 148 22];
            app.ChB_Tab_7.Value = 'Not selected';

            % Create ChCDropDownLabel_7
            app.ChCDropDownLabel_7 = uilabel(app.Tab_7);
            app.ChCDropDownLabel_7.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_7.VerticalAlignment = 'top';
            app.ChCDropDownLabel_7.FontColor = [1 1 1];
            app.ChCDropDownLabel_7.Position = [17 274 36 15];
            app.ChCDropDownLabel_7.Text = 'Ch. C';

            % Create ChC_Tab_7
            app.ChC_Tab_7 = uidropdown(app.Tab_7);
            app.ChC_Tab_7.Items = {'Not selected'};
            app.ChC_Tab_7.Editable = 'on';
            app.ChC_Tab_7.FontColor = [1 1 1];
            app.ChC_Tab_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_7.Position = [68 270 148 22];
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
            app.TimeSeriesEditFieldLabel_8.Position = [227 378 68 15];
            app.TimeSeriesEditFieldLabel_8.Text = 'Time Series';

            % Create TS_Tab_8
            app.TS_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.TS_Tab_8.FontColor = [1 1 1];
            app.TS_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_8.Position = [298 374 41 22];

            % Create ChADropDownLabel_8
            app.ChADropDownLabel_8 = uilabel(app.Tab_8);
            app.ChADropDownLabel_8.HorizontalAlignment = 'right';
            app.ChADropDownLabel_8.VerticalAlignment = 'top';
            app.ChADropDownLabel_8.FontColor = [1 1 1];
            app.ChADropDownLabel_8.Position = [18 334 35 15];
            app.ChADropDownLabel_8.Text = 'Ch. A';

            % Create ChA_Tab_8
            app.ChA_Tab_8 = uidropdown(app.Tab_8);
            app.ChA_Tab_8.Items = {'Not selected'};
            app.ChA_Tab_8.Editable = 'on';
            app.ChA_Tab_8.FontColor = [1 1 1];
            app.ChA_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_8.Position = [68 330 148 22];
            app.ChA_Tab_8.Value = 'Not selected';

            % Create EmissionLabel_22
            app.EmissionLabel_22 = uilabel(app.Tab_8);
            app.EmissionLabel_22.HorizontalAlignment = 'right';
            app.EmissionLabel_22.VerticalAlignment = 'top';
            app.EmissionLabel_22.FontColor = [1 1 1];
            app.EmissionLabel_22.Position = [229 334 54 15];
            app.EmissionLabel_22.Text = 'Emission';

            % Create ChA_Em_Tab_8
            app.ChA_Em_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.ChA_Em_Tab_8.FontColor = [1 1 1];
            app.ChA_Em_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_8.Position = [298 330 41 22];

            % Create ExperimentEditField_2Label_8
            app.ExperimentEditField_2Label_8 = uilabel(app.Tab_8);
            app.ExperimentEditField_2Label_8.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_8.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_8.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_8.Position = [12 378 67 15];
            app.ExperimentEditField_2Label_8.Text = 'Experiment';

            % Create experimentID_Tab_8
            app.experimentID_Tab_8 = uieditfield(app.Tab_8, 'text');
            app.experimentID_Tab_8.FontColor = [1 1 1];
            app.experimentID_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_8.Position = [94 374 122 22];

            % Create activateTab_8
            app.activateTab_8 = uicheckbox(app.Tab_8);
            app.activateTab_8.Text = 'Activate experiment tab';
            app.activateTab_8.FontWeight = 'bold';
            app.activateTab_8.FontColor = [0.902 0.902 0.902];
            app.activateTab_8.Position = [18 412 159 15];

            % Create xDimEditFieldLabel_8
            app.xDimEditFieldLabel_8 = uilabel(app.Tab_8);
            app.xDimEditFieldLabel_8.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_8.FontColor = [1 1 1];
            app.xDimEditFieldLabel_8.Position = [18 213 35 15];
            app.xDimEditFieldLabel_8.Text = 'x Dim';

            % Create xDim_Tab_8
            app.xDim_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.xDim_Tab_8.FontColor = [1 1 1];
            app.xDim_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_8.Position = [69 209 55 22];

            % Create EmissionLabel_23
            app.EmissionLabel_23 = uilabel(app.Tab_8);
            app.EmissionLabel_23.HorizontalAlignment = 'right';
            app.EmissionLabel_23.VerticalAlignment = 'top';
            app.EmissionLabel_23.FontColor = [1 1 1];
            app.EmissionLabel_23.Position = [229 303 54 15];
            app.EmissionLabel_23.Text = 'Emission';

            % Create ChB_Em_Tab_8
            app.ChB_Em_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.ChB_Em_Tab_8.FontColor = [1 1 1];
            app.ChB_Em_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_8.Position = [298 299 41 22];

            % Create EmissionLabel_24
            app.EmissionLabel_24 = uilabel(app.Tab_8);
            app.EmissionLabel_24.HorizontalAlignment = 'right';
            app.EmissionLabel_24.VerticalAlignment = 'top';
            app.EmissionLabel_24.FontColor = [1 1 1];
            app.EmissionLabel_24.Position = [229 274 54 15];
            app.EmissionLabel_24.Text = 'Emission';

            % Create ChC_Em_Tab_8
            app.ChC_Em_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.ChC_Em_Tab_8.FontColor = [1 1 1];
            app.ChC_Em_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_8.Position = [298 270 41 22];

            % Create ImagepropertiesLabel_8
            app.ImagepropertiesLabel_8 = uilabel(app.Tab_8);
            app.ImagepropertiesLabel_8.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_8.FontWeight = 'bold';
            app.ImagepropertiesLabel_8.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_8.Position = [18 234 103 15];
            app.ImagepropertiesLabel_8.Text = 'Image properties';

            % Create yDimEditFieldLabel_8
            app.yDimEditFieldLabel_8 = uilabel(app.Tab_8);
            app.yDimEditFieldLabel_8.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_8.FontColor = [1 1 1];
            app.yDimEditFieldLabel_8.Position = [18 181 36 15];
            app.yDimEditFieldLabel_8.Text = 'y Dim';

            % Create yDim_Tab_8
            app.yDim_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.yDim_Tab_8.FontColor = [1 1 1];
            app.yDim_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_8.Position = [69 178 55 22];

            % Create zDimEditFieldLabel_8
            app.zDimEditFieldLabel_8 = uilabel(app.Tab_8);
            app.zDimEditFieldLabel_8.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_8.FontColor = [1 1 1];
            app.zDimEditFieldLabel_8.Position = [18 149 36 15];
            app.zDimEditFieldLabel_8.Text = 'z Dim';

            % Create zDim_Tab_8
            app.zDim_Tab_8 = uieditfield(app.Tab_8, 'numeric');
            app.zDim_Tab_8.FontColor = [1 1 1];
            app.zDim_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_8.Position = [69 145 55 22];

            % Create includeTS_group_Tab_8
            app.includeTS_group_Tab_8 = uibuttongroup(app.Tab_8);
            app.includeTS_group_Tab_8.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_8.Title = 'Include Time Series';
            app.includeTS_group_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_8.Position = [177 161 162 56];

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
            app.ChBDropDownLabel_8.Position = [17 303 36 15];
            app.ChBDropDownLabel_8.Text = 'Ch. B';

            % Create ChB_Tab_8
            app.ChB_Tab_8 = uidropdown(app.Tab_8);
            app.ChB_Tab_8.Items = {'Not selected'};
            app.ChB_Tab_8.Editable = 'on';
            app.ChB_Tab_8.FontColor = [1 1 1];
            app.ChB_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_8.Position = [68 299 148 22];
            app.ChB_Tab_8.Value = 'Not selected';

            % Create ChCDropDownLabel_8
            app.ChCDropDownLabel_8 = uilabel(app.Tab_8);
            app.ChCDropDownLabel_8.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_8.VerticalAlignment = 'top';
            app.ChCDropDownLabel_8.FontColor = [1 1 1];
            app.ChCDropDownLabel_8.Position = [17 274 36 15];
            app.ChCDropDownLabel_8.Text = 'Ch. C';

            % Create ChC_Tab_8
            app.ChC_Tab_8 = uidropdown(app.Tab_8);
            app.ChC_Tab_8.Items = {'Not selected'};
            app.ChC_Tab_8.Editable = 'on';
            app.ChC_Tab_8.FontColor = [1 1 1];
            app.ChC_Tab_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_8.Position = [68 270 148 22];
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
            app.TimeSeriesEditFieldLabel_9.Position = [227 378 68 15];
            app.TimeSeriesEditFieldLabel_9.Text = 'Time Series';

            % Create TS_Tab_9
            app.TS_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.TS_Tab_9.FontColor = [1 1 1];
            app.TS_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_9.Position = [298 374 41 22];

            % Create ChADropDownLabel_9
            app.ChADropDownLabel_9 = uilabel(app.Tab_9);
            app.ChADropDownLabel_9.HorizontalAlignment = 'right';
            app.ChADropDownLabel_9.VerticalAlignment = 'top';
            app.ChADropDownLabel_9.FontColor = [1 1 1];
            app.ChADropDownLabel_9.Position = [18 334 35 15];
            app.ChADropDownLabel_9.Text = 'Ch. A';

            % Create ChA_Tab_9
            app.ChA_Tab_9 = uidropdown(app.Tab_9);
            app.ChA_Tab_9.Items = {'Not selected'};
            app.ChA_Tab_9.Editable = 'on';
            app.ChA_Tab_9.FontColor = [1 1 1];
            app.ChA_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_9.Position = [68 330 148 22];
            app.ChA_Tab_9.Value = 'Not selected';

            % Create EmissionLabel_25
            app.EmissionLabel_25 = uilabel(app.Tab_9);
            app.EmissionLabel_25.HorizontalAlignment = 'right';
            app.EmissionLabel_25.VerticalAlignment = 'top';
            app.EmissionLabel_25.FontColor = [1 1 1];
            app.EmissionLabel_25.Position = [229 334 54 15];
            app.EmissionLabel_25.Text = 'Emission';

            % Create ChA_Em_Tab_9
            app.ChA_Em_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.ChA_Em_Tab_9.FontColor = [1 1 1];
            app.ChA_Em_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_9.Position = [298 330 41 22];

            % Create ExperimentEditField_2Label_9
            app.ExperimentEditField_2Label_9 = uilabel(app.Tab_9);
            app.ExperimentEditField_2Label_9.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_9.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_9.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_9.Position = [12 378 67 15];
            app.ExperimentEditField_2Label_9.Text = 'Experiment';

            % Create experimentID_Tab_9
            app.experimentID_Tab_9 = uieditfield(app.Tab_9, 'text');
            app.experimentID_Tab_9.FontColor = [1 1 1];
            app.experimentID_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_9.Position = [94 374 122 22];

            % Create activateTab_9
            app.activateTab_9 = uicheckbox(app.Tab_9);
            app.activateTab_9.Text = 'Activate experiment tab';
            app.activateTab_9.FontWeight = 'bold';
            app.activateTab_9.FontColor = [0.902 0.902 0.902];
            app.activateTab_9.Position = [18 412 159 15];

            % Create xDimEditFieldLabel_9
            app.xDimEditFieldLabel_9 = uilabel(app.Tab_9);
            app.xDimEditFieldLabel_9.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_9.FontColor = [1 1 1];
            app.xDimEditFieldLabel_9.Position = [18 213 35 15];
            app.xDimEditFieldLabel_9.Text = 'x Dim';

            % Create xDim_Tab_9
            app.xDim_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.xDim_Tab_9.FontColor = [1 1 1];
            app.xDim_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_9.Position = [69 209 55 22];

            % Create EmissionLabel_26
            app.EmissionLabel_26 = uilabel(app.Tab_9);
            app.EmissionLabel_26.HorizontalAlignment = 'right';
            app.EmissionLabel_26.VerticalAlignment = 'top';
            app.EmissionLabel_26.FontColor = [1 1 1];
            app.EmissionLabel_26.Position = [229 303 54 15];
            app.EmissionLabel_26.Text = 'Emission';

            % Create ChB_Em_Tab_9
            app.ChB_Em_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.ChB_Em_Tab_9.FontColor = [1 1 1];
            app.ChB_Em_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_9.Position = [298 299 41 22];

            % Create EmissionLabel_27
            app.EmissionLabel_27 = uilabel(app.Tab_9);
            app.EmissionLabel_27.HorizontalAlignment = 'right';
            app.EmissionLabel_27.VerticalAlignment = 'top';
            app.EmissionLabel_27.FontColor = [1 1 1];
            app.EmissionLabel_27.Position = [229 274 54 15];
            app.EmissionLabel_27.Text = 'Emission';

            % Create ChC_Em_Tab_9
            app.ChC_Em_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.ChC_Em_Tab_9.FontColor = [1 1 1];
            app.ChC_Em_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_9.Position = [298 270 41 22];

            % Create ImagepropertiesLabel_9
            app.ImagepropertiesLabel_9 = uilabel(app.Tab_9);
            app.ImagepropertiesLabel_9.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_9.FontWeight = 'bold';
            app.ImagepropertiesLabel_9.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_9.Position = [18 234 103 15];
            app.ImagepropertiesLabel_9.Text = 'Image properties';

            % Create yDimEditFieldLabel_9
            app.yDimEditFieldLabel_9 = uilabel(app.Tab_9);
            app.yDimEditFieldLabel_9.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_9.FontColor = [1 1 1];
            app.yDimEditFieldLabel_9.Position = [18 181 36 15];
            app.yDimEditFieldLabel_9.Text = 'y Dim';

            % Create yDim_Tab_9
            app.yDim_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.yDim_Tab_9.FontColor = [1 1 1];
            app.yDim_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_9.Position = [69 178 55 22];

            % Create zDimEditFieldLabel_9
            app.zDimEditFieldLabel_9 = uilabel(app.Tab_9);
            app.zDimEditFieldLabel_9.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_9.FontColor = [1 1 1];
            app.zDimEditFieldLabel_9.Position = [18 149 36 15];
            app.zDimEditFieldLabel_9.Text = 'z Dim';

            % Create zDim_Tab_9
            app.zDim_Tab_9 = uieditfield(app.Tab_9, 'numeric');
            app.zDim_Tab_9.FontColor = [1 1 1];
            app.zDim_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_9.Position = [69 145 55 22];

            % Create includeTS_group_Tab_9
            app.includeTS_group_Tab_9 = uibuttongroup(app.Tab_9);
            app.includeTS_group_Tab_9.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_9.Title = 'Include Time Series';
            app.includeTS_group_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_9.Position = [177 161 162 56];

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
            app.ChBDropDownLabel_9.Position = [17 303 36 15];
            app.ChBDropDownLabel_9.Text = 'Ch. B';

            % Create ChB_Tab_9
            app.ChB_Tab_9 = uidropdown(app.Tab_9);
            app.ChB_Tab_9.Items = {'Not selected'};
            app.ChB_Tab_9.Editable = 'on';
            app.ChB_Tab_9.FontColor = [1 1 1];
            app.ChB_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_9.Position = [68 299 148 22];
            app.ChB_Tab_9.Value = 'Not selected';

            % Create ChCDropDownLabel_9
            app.ChCDropDownLabel_9 = uilabel(app.Tab_9);
            app.ChCDropDownLabel_9.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_9.VerticalAlignment = 'top';
            app.ChCDropDownLabel_9.FontColor = [1 1 1];
            app.ChCDropDownLabel_9.Position = [17 274 36 15];
            app.ChCDropDownLabel_9.Text = 'Ch. C';

            % Create ChC_Tab_9
            app.ChC_Tab_9 = uidropdown(app.Tab_9);
            app.ChC_Tab_9.Items = {'Not selected'};
            app.ChC_Tab_9.Editable = 'on';
            app.ChC_Tab_9.FontColor = [1 1 1];
            app.ChC_Tab_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_9.Position = [68 270 148 22];
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
            app.TimeSeriesEditFieldLabel_10.Position = [227 378 68 15];
            app.TimeSeriesEditFieldLabel_10.Text = 'Time Series';

            % Create TS_Tab_10
            app.TS_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.TS_Tab_10.FontColor = [1 1 1];
            app.TS_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.TS_Tab_10.Position = [298 374 41 22];

            % Create ChADropDownLabel_10
            app.ChADropDownLabel_10 = uilabel(app.Tab_10);
            app.ChADropDownLabel_10.HorizontalAlignment = 'right';
            app.ChADropDownLabel_10.VerticalAlignment = 'top';
            app.ChADropDownLabel_10.FontColor = [1 1 1];
            app.ChADropDownLabel_10.Position = [18 334 35 15];
            app.ChADropDownLabel_10.Text = 'Ch. A';

            % Create ChA_Tab_10
            app.ChA_Tab_10 = uidropdown(app.Tab_10);
            app.ChA_Tab_10.Items = {'Not selected'};
            app.ChA_Tab_10.Editable = 'on';
            app.ChA_Tab_10.FontColor = [1 1 1];
            app.ChA_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Tab_10.Position = [68 330 148 22];
            app.ChA_Tab_10.Value = 'Not selected';

            % Create EmissionLabel_28
            app.EmissionLabel_28 = uilabel(app.Tab_10);
            app.EmissionLabel_28.HorizontalAlignment = 'right';
            app.EmissionLabel_28.VerticalAlignment = 'top';
            app.EmissionLabel_28.FontColor = [1 1 1];
            app.EmissionLabel_28.Position = [229 334 54 15];
            app.EmissionLabel_28.Text = 'Emission';

            % Create ChA_Em_Tab_10
            app.ChA_Em_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.ChA_Em_Tab_10.FontColor = [1 1 1];
            app.ChA_Em_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_Em_Tab_10.Position = [298 330 41 22];

            % Create ExperimentEditField_2Label_10
            app.ExperimentEditField_2Label_10 = uilabel(app.Tab_10);
            app.ExperimentEditField_2Label_10.HorizontalAlignment = 'right';
            app.ExperimentEditField_2Label_10.VerticalAlignment = 'top';
            app.ExperimentEditField_2Label_10.FontColor = [1 1 1];
            app.ExperimentEditField_2Label_10.Position = [12 378 67 15];
            app.ExperimentEditField_2Label_10.Text = 'Experiment';

            % Create experimentID_Tab_10
            app.experimentID_Tab_10 = uieditfield(app.Tab_10, 'text');
            app.experimentID_Tab_10.FontColor = [1 1 1];
            app.experimentID_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.experimentID_Tab_10.Position = [94 374 122 22];

            % Create activateTab_10
            app.activateTab_10 = uicheckbox(app.Tab_10);
            app.activateTab_10.Text = 'Activate experiment tab';
            app.activateTab_10.FontWeight = 'bold';
            app.activateTab_10.FontColor = [0.902 0.902 0.902];
            app.activateTab_10.Position = [18 412 159 15];

            % Create xDimEditFieldLabel_10
            app.xDimEditFieldLabel_10 = uilabel(app.Tab_10);
            app.xDimEditFieldLabel_10.VerticalAlignment = 'top';
            app.xDimEditFieldLabel_10.FontColor = [1 1 1];
            app.xDimEditFieldLabel_10.Position = [18 213 35 15];
            app.xDimEditFieldLabel_10.Text = 'x Dim';

            % Create xDim_Tab_10
            app.xDim_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.xDim_Tab_10.FontColor = [1 1 1];
            app.xDim_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.xDim_Tab_10.Position = [69 209 55 22];

            % Create EmissionLabel_29
            app.EmissionLabel_29 = uilabel(app.Tab_10);
            app.EmissionLabel_29.HorizontalAlignment = 'right';
            app.EmissionLabel_29.VerticalAlignment = 'top';
            app.EmissionLabel_29.FontColor = [1 1 1];
            app.EmissionLabel_29.Position = [229 303 54 15];
            app.EmissionLabel_29.Text = 'Emission';

            % Create ChB_Em_Tab_10
            app.ChB_Em_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.ChB_Em_Tab_10.FontColor = [1 1 1];
            app.ChB_Em_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Em_Tab_10.Position = [298 299 41 22];

            % Create EmissionLabel_30
            app.EmissionLabel_30 = uilabel(app.Tab_10);
            app.EmissionLabel_30.HorizontalAlignment = 'right';
            app.EmissionLabel_30.VerticalAlignment = 'top';
            app.EmissionLabel_30.FontColor = [1 1 1];
            app.EmissionLabel_30.Position = [229 274 54 15];
            app.EmissionLabel_30.Text = 'Emission';

            % Create ChC_Em_Tab_10
            app.ChC_Em_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.ChC_Em_Tab_10.FontColor = [1 1 1];
            app.ChC_Em_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Em_Tab_10.Position = [298 270 41 22];

            % Create ImagepropertiesLabel_10
            app.ImagepropertiesLabel_10 = uilabel(app.Tab_10);
            app.ImagepropertiesLabel_10.VerticalAlignment = 'top';
            app.ImagepropertiesLabel_10.FontWeight = 'bold';
            app.ImagepropertiesLabel_10.FontColor = [0.902 0.902 0.902];
            app.ImagepropertiesLabel_10.Position = [18 234 103 15];
            app.ImagepropertiesLabel_10.Text = 'Image properties';

            % Create yDimEditFieldLabel_10
            app.yDimEditFieldLabel_10 = uilabel(app.Tab_10);
            app.yDimEditFieldLabel_10.VerticalAlignment = 'top';
            app.yDimEditFieldLabel_10.FontColor = [1 1 1];
            app.yDimEditFieldLabel_10.Position = [18 181 36 15];
            app.yDimEditFieldLabel_10.Text = 'y Dim';

            % Create yDim_Tab_10
            app.yDim_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.yDim_Tab_10.FontColor = [1 1 1];
            app.yDim_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.yDim_Tab_10.Position = [69 178 55 22];

            % Create zDimEditFieldLabel_10
            app.zDimEditFieldLabel_10 = uilabel(app.Tab_10);
            app.zDimEditFieldLabel_10.VerticalAlignment = 'top';
            app.zDimEditFieldLabel_10.FontColor = [1 1 1];
            app.zDimEditFieldLabel_10.Position = [18 149 36 15];
            app.zDimEditFieldLabel_10.Text = 'z Dim';

            % Create zDim_Tab_10
            app.zDim_Tab_10 = uieditfield(app.Tab_10, 'numeric');
            app.zDim_Tab_10.FontColor = [1 1 1];
            app.zDim_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.zDim_Tab_10.Position = [69 145 55 22];

            % Create includeTS_group_Tab_10
            app.includeTS_group_Tab_10 = uibuttongroup(app.Tab_10);
            app.includeTS_group_Tab_10.ForegroundColor = [1 1 1];
            app.includeTS_group_Tab_10.Title = 'Include Time Series';
            app.includeTS_group_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.includeTS_group_Tab_10.Position = [177 161 162 56];

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
            app.ChBDropDownLabel_10.Position = [17 303 36 15];
            app.ChBDropDownLabel_10.Text = 'Ch. B';

            % Create ChB_Tab_10
            app.ChB_Tab_10 = uidropdown(app.Tab_10);
            app.ChB_Tab_10.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChB_Tab_10.Editable = 'on';
            app.ChB_Tab_10.FontColor = [1 1 1];
            app.ChB_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_Tab_10.Position = [68 299 148 22];
            app.ChB_Tab_10.Value = 'Not selected';

            % Create ChCDropDownLabel_10
            app.ChCDropDownLabel_10 = uilabel(app.Tab_10);
            app.ChCDropDownLabel_10.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_10.VerticalAlignment = 'top';
            app.ChCDropDownLabel_10.FontColor = [1 1 1];
            app.ChCDropDownLabel_10.Position = [17 274 36 15];
            app.ChCDropDownLabel_10.Text = 'Ch. C';

            % Create ChC_Tab_10
            app.ChC_Tab_10 = uidropdown(app.Tab_10);
            app.ChC_Tab_10.Items = {'Not selected', 'YFP-Galectin9', 'YFP-Galectin8', 'GFP-Galectin3', 'GFP-LAMP1', 'GFP-LC3B', 'OG488-Dextran', 'mCherry-Galectin9', 'mCherry-Galectin3', 'mCherry-LAMP1', 'mCherry-LC3B', 'mCherry-CD63', 'mCherry-Rab7', 'mCherry-Rab5', 'mCherry-Rab4a', 'mCherry-GalT', 'mCherry-Mito', 'mCherry-Peroxisomes', 'mCherry-ER', 'mCherry-TGN46', 'AF647-Dextran', 'DY546-Accell-siRNA', 'AF647-EpCAM'};
            app.ChC_Tab_10.Editable = 'on';
            app.ChC_Tab_10.FontColor = [1 1 1];
            app.ChC_Tab_10.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_Tab_10.Position = [68 270 148 22];
            app.ChC_Tab_10.Value = 'Not selected';

            % Create TabGroup4
            app.TabGroup4 = uitabgroup(app.QuantEscape2020aUIFigure);
            app.TabGroup4.AutoResizeChildren = 'off';
            app.TabGroup4.TabLocation = 'left';
            app.TabGroup4.Position = [447 7 837 443];

            % Create PreprocessingTab
            app.PreprocessingTab = uitab(app.TabGroup4);
            app.PreprocessingTab.AutoResizeChildren = 'off';
            app.PreprocessingTab.Title = 'Pre-processing';
            app.PreprocessingTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create StartPreprocessingButton
            app.StartPreprocessingButton = uibutton(app.PreprocessingTab, 'push');
            app.StartPreprocessingButton.ButtonPushedFcn = createCallbackFcn(app, @StartPreprocessingButtonPushed, true);
            app.StartPreprocessingButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.StartPreprocessingButton.FontColor = [1 1 1];
            app.StartPreprocessingButton.Position = [39 348 127 30];
            app.StartPreprocessingButton.Text = 'Start Pre-processing';

            % Create CreateFoldersButton
            app.CreateFoldersButton = uibutton(app.PreprocessingTab, 'push');
            app.CreateFoldersButton.ButtonPushedFcn = createCallbackFcn(app, @CreateFoldersButtonPushed, true);
            app.CreateFoldersButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.CreateFoldersButton.FontColor = [1 1 1];
            app.CreateFoldersButton.Position = [39 392 127 30];
            app.CreateFoldersButton.Text = 'Create Folders';

            % Create EventROIsTab
            app.EventROIsTab = uitab(app.TabGroup4);
            app.EventROIsTab.AutoResizeChildren = 'off';
            app.EventROIsTab.Title = 'Event ROIs';
            app.EventROIsTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create skipCelldata
            app.skipCelldata = uicheckbox(app.EventROIsTab);
            app.skipCelldata.Text = 'Skip cell data extraction';
            app.skipCelldata.FontColor = [1 1 1];
            app.skipCelldata.Position = [201 380 151 15];

            % Create skipImageBackground
            app.skipImageBackground = uicheckbox(app.EventROIsTab);
            app.skipImageBackground.Text = 'Skip image background data extraction';
            app.skipImageBackground.FontColor = [1 1 1];
            app.skipImageBackground.Position = [201 354 236 15];

            % Create ExtendROIEditFieldLabel
            app.ExtendROIEditFieldLabel = uilabel(app.EventROIsTab);
            app.ExtendROIEditFieldLabel.HorizontalAlignment = 'right';
            app.ExtendROIEditFieldLabel.VerticalAlignment = 'top';
            app.ExtendROIEditFieldLabel.FontColor = [1 1 1];
            app.ExtendROIEditFieldLabel.Position = [32 398 67 15];
            app.ExtendROIEditFieldLabel.Text = 'Extend ROI';

            % Create ExtendROI
            app.ExtendROI = uieditfield(app.EventROIsTab, 'numeric');
            app.ExtendROI.FontColor = [1 1 1];
            app.ExtendROI.BackgroundColor = [0.2 0.2196 0.2706];
            app.ExtendROI.Position = [112 394 48 22];
            app.ExtendROI.Value = 75;

            % Create TimesPreEditFieldLabel
            app.TimesPreEditFieldLabel = uilabel(app.EventROIsTab);
            app.TimesPreEditFieldLabel.VerticalAlignment = 'top';
            app.TimesPreEditFieldLabel.FontColor = [1 1 1];
            app.TimesPreEditFieldLabel.Position = [38 368 59 15];
            app.TimesPreEditFieldLabel.Text = 'Times Pre';

            % Create TimesPre
            app.TimesPre = uieditfield(app.EventROIsTab, 'numeric');
            app.TimesPre.FontColor = [1 1 1];
            app.TimesPre.BackgroundColor = [0.2 0.2196 0.2706];
            app.TimesPre.Position = [112 364 48 22];
            app.TimesPre.Value = 30;

            % Create TimesPostEditFieldLabel
            app.TimesPostEditFieldLabel = uilabel(app.EventROIsTab);
            app.TimesPostEditFieldLabel.VerticalAlignment = 'top';
            app.TimesPostEditFieldLabel.FontColor = [1 1 1];
            app.TimesPostEditFieldLabel.Position = [38 338 66 15];
            app.TimesPostEditFieldLabel.Text = 'Times Post';

            % Create TimesPost
            app.TimesPost = uieditfield(app.EventROIsTab, 'numeric');
            app.TimesPost.FontColor = [1 1 1];
            app.TimesPost.BackgroundColor = [0.2 0.2196 0.2706];
            app.TimesPost.Position = [112 334 48 22];
            app.TimesPost.Value = 60;

            % Create IncludeTimeSeriesButtonGroup
            app.IncludeTimeSeriesButtonGroup = uibuttongroup(app.EventROIsTab);
            app.IncludeTimeSeriesButtonGroup.AutoResizeChildren = 'off';
            app.IncludeTimeSeriesButtonGroup.ForegroundColor = [1 1 1];
            app.IncludeTimeSeriesButtonGroup.Title = 'Include Time Series';
            app.IncludeTimeSeriesButtonGroup.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeTimeSeriesButtonGroup.Position = [29 216 123 78];

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
            app.IncludeEventsButtonGroup = uibuttongroup(app.EventROIsTab);
            app.IncludeEventsButtonGroup.AutoResizeChildren = 'off';
            app.IncludeEventsButtonGroup.ForegroundColor = [1 1 1];
            app.IncludeEventsButtonGroup.Title = 'Include Events';
            app.IncludeEventsButtonGroup.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeEventsButtonGroup.Position = [159 216 123 78];

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
            app.RunCreateROIs = uibutton(app.EventROIsTab, 'push');
            app.RunCreateROIs.ButtonPushedFcn = createCallbackFcn(app, @RunCreateROIsPushed, true);
            app.RunCreateROIs.BackgroundColor = [0.9294 0.6941 0.1255];
            app.RunCreateROIs.FontColor = [1 1 1];
            app.RunCreateROIs.Position = [31 138 114 30];
            app.RunCreateROIs.Text = 'Create Event ROIs';

            % Create createEventKey
            app.createEventKey = uibutton(app.EventROIsTab, 'push');
            app.createEventKey.ButtonPushedFcn = createCallbackFcn(app, @createEventKeyBtn, true);
            app.createEventKey.BackgroundColor = [0.9294 0.6941 0.1255];
            app.createEventKey.FontColor = [1 1 1];
            app.createEventKey.Position = [31 84 114 30];
            app.createEventKey.Text = 'Create Event Key';

            % Create EventPanelsTab
            app.EventPanelsTab = uitab(app.TabGroup4);
            app.EventPanelsTab.AutoResizeChildren = 'off';
            app.EventPanelsTab.Title = 'Event Panels';
            app.EventPanelsTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create CreateROIPanelButton
            app.CreateROIPanelButton = uibutton(app.EventPanelsTab, 'push');
            app.CreateROIPanelButton.ButtonPushedFcn = createCallbackFcn(app, @CreateROIPanelButtonPushed, true);
            app.CreateROIPanelButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.CreateROIPanelButton.FontColor = [1 1 1];
            app.CreateROIPanelButton.Position = [262 22 108 30];
            app.CreateROIPanelButton.Text = 'Create ROI Panel';

            % Create IncludeTimeSeriesButtonGroup_8
            app.IncludeTimeSeriesButtonGroup_8 = uibuttongroup(app.EventPanelsTab);
            app.IncludeTimeSeriesButtonGroup_8.AutoResizeChildren = 'off';
            app.IncludeTimeSeriesButtonGroup_8.ForegroundColor = [1 1 1];
            app.IncludeTimeSeriesButtonGroup_8.Title = 'Include Time Series';
            app.IncludeTimeSeriesButtonGroup_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeTimeSeriesButtonGroup_8.Position = [21 234 123 78];

            % Create eventPanelTS_all
            app.eventPanelTS_all = uiradiobutton(app.IncludeTimeSeriesButtonGroup_8);
            app.eventPanelTS_all.Text = 'All';
            app.eventPanelTS_all.FontColor = [1 1 1];
            app.eventPanelTS_all.Position = [11 32 35.109375 15];
            app.eventPanelTS_all.Value = true;

            % Create eventPanelTS_selected
            app.eventPanelTS_selected = uiradiobutton(app.IncludeTimeSeriesButtonGroup_8);
            app.eventPanelTS_selected.Text = 'Selected';
            app.eventPanelTS_selected.FontColor = [1 1 1];
            app.eventPanelTS_selected.Position = [11 10 69.125 15];

            % Create IncludeEventsButtonGroup_7
            app.IncludeEventsButtonGroup_7 = uibuttongroup(app.EventPanelsTab);
            app.IncludeEventsButtonGroup_7.AutoResizeChildren = 'off';
            app.IncludeEventsButtonGroup_7.ForegroundColor = [1 1 1];
            app.IncludeEventsButtonGroup_7.Title = 'Include Events';
            app.IncludeEventsButtonGroup_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeEventsButtonGroup_7.Position = [287 234 123 78];

            % Create eventPanelEvents_all
            app.eventPanelEvents_all = uiradiobutton(app.IncludeEventsButtonGroup_7);
            app.eventPanelEvents_all.Text = 'All';
            app.eventPanelEvents_all.FontColor = [1 1 1];
            app.eventPanelEvents_all.Position = [11 32 35.109375 15];
            app.eventPanelEvents_all.Value = true;

            % Create eventPanelEvents_selected
            app.eventPanelEvents_selected = uiradiobutton(app.IncludeEventsButtonGroup_7);
            app.eventPanelEvents_selected.Text = 'Selected';
            app.eventPanelEvents_selected.FontColor = [1 1 1];
            app.eventPanelEvents_selected.Position = [11 10 69.125 15];

            % Create IncludeCellsButtonGroup
            app.IncludeCellsButtonGroup = uibuttongroup(app.EventPanelsTab);
            app.IncludeCellsButtonGroup.AutoResizeChildren = 'off';
            app.IncludeCellsButtonGroup.ForegroundColor = [1 1 1];
            app.IncludeCellsButtonGroup.Title = 'Include Cells';
            app.IncludeCellsButtonGroup.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeCellsButtonGroup.Position = [154 234 123 78];

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

            % Create skipCAC_eventPanels
            app.skipCAC_eventPanels = uicheckbox(app.EventPanelsTab);
            app.skipCAC_eventPanels.Text = 'Skip chromatic aberration correction';
            app.skipCAC_eventPanels.FontColor = [1 1 1];
            app.skipCAC_eventPanels.Position = [261 174 219 15];

            % Create skipValidated_panels
            app.skipValidated_panels = uicheckbox(app.EventPanelsTab);
            app.skipValidated_panels.Text = 'Skip events validated in eventMasterKey';
            app.skipValidated_panels.FontColor = [1 1 1];
            app.skipValidated_panels.Position = [261 153 241.390625 15];

            % Create ExtendPlanesEditFieldLabel
            app.ExtendPlanesEditFieldLabel = uilabel(app.EventPanelsTab);
            app.ExtendPlanesEditFieldLabel.VerticalAlignment = 'top';
            app.ExtendPlanesEditFieldLabel.FontColor = [1 1 1];
            app.ExtendPlanesEditFieldLabel.Position = [26 399 84 15];
            app.ExtendPlanesEditFieldLabel.Text = 'Extend Planes';

            % Create ExtendPlanes
            app.ExtendPlanes = uieditfield(app.EventPanelsTab, 'numeric');
            app.ExtendPlanes.FontColor = [1 1 1];
            app.ExtendPlanes.BackgroundColor = [0.2 0.2196 0.2706];
            app.ExtendPlanes.Position = [125 395 48 22];
            app.ExtendPlanes.Value = 30;

            % Create xSpacersEditFieldLabel
            app.xSpacersEditFieldLabel = uilabel(app.EventPanelsTab);
            app.xSpacersEditFieldLabel.VerticalAlignment = 'top';
            app.xSpacersEditFieldLabel.FontColor = [1 1 1];
            app.xSpacersEditFieldLabel.Position = [26 370 59 15];
            app.xSpacersEditFieldLabel.Text = 'x Spacers';

            % Create xSpacers
            app.xSpacers = uieditfield(app.EventPanelsTab, 'numeric');
            app.xSpacers.FontColor = [1 1 1];
            app.xSpacers.BackgroundColor = [0.2 0.2196 0.2706];
            app.xSpacers.Position = [125 366 48 22];
            app.xSpacers.Value = 75;

            % Create ModeDropDownLabel
            app.ModeDropDownLabel = uilabel(app.EventPanelsTab);
            app.ModeDropDownLabel.HorizontalAlignment = 'right';
            app.ModeDropDownLabel.VerticalAlignment = 'top';
            app.ModeDropDownLabel.FontColor = [1 1 1];
            app.ModeDropDownLabel.Position = [15 191 36 15];
            app.ModeDropDownLabel.Text = 'Mode';

            % Create Mode
            app.Mode = uidropdown(app.EventPanelsTab);
            app.Mode.Items = {'MIP Untracked', 'MIP Tracked', 'z-Cropped Tracked', 'z-Complete Untracked'};
            app.Mode.FontColor = [1 1 1];
            app.Mode.BackgroundColor = [0.2 0.2196 0.2706];
            app.Mode.Position = [66 187 173 22];
            app.Mode.Value = 'MIP Untracked';

            % Create ySpacersEditFieldLabel
            app.ySpacersEditFieldLabel = uilabel(app.EventPanelsTab);
            app.ySpacersEditFieldLabel.VerticalAlignment = 'top';
            app.ySpacersEditFieldLabel.FontColor = [1 1 1];
            app.ySpacersEditFieldLabel.Position = [26 339 59 15];
            app.ySpacersEditFieldLabel.Text = 'y Spacers';

            % Create ySpacers
            app.ySpacers = uieditfield(app.EventPanelsTab, 'numeric');
            app.ySpacers.FontColor = [1 1 1];
            app.ySpacers.BackgroundColor = [0.2 0.2196 0.2706];
            app.ySpacers.Position = [125 335 48 22];
            app.ySpacers.Value = 100;

            % Create xPanelDimEditFieldLabel
            app.xPanelDimEditFieldLabel = uilabel(app.EventPanelsTab);
            app.xPanelDimEditFieldLabel.VerticalAlignment = 'top';
            app.xPanelDimEditFieldLabel.FontColor = [1 1 1];
            app.xPanelDimEditFieldLabel.Position = [192 399 70 15];
            app.xPanelDimEditFieldLabel.Text = 'x Panel Dim';

            % Create xPanelDim
            app.xPanelDim = uieditfield(app.EventPanelsTab, 'numeric');
            app.xPanelDim.FontColor = [1 1 1];
            app.xPanelDim.BackgroundColor = [0.2 0.2196 0.2706];
            app.xPanelDim.Position = [291 395 48 22];
            app.xPanelDim.Value = 1000;

            % Create yPanelDimEditFieldLabel
            app.yPanelDimEditFieldLabel = uilabel(app.EventPanelsTab);
            app.yPanelDimEditFieldLabel.VerticalAlignment = 'top';
            app.yPanelDimEditFieldLabel.FontColor = [1 1 1];
            app.yPanelDimEditFieldLabel.Position = [192 370 70 15];
            app.yPanelDimEditFieldLabel.Text = 'y Panel Dim';

            % Create yPanelDim
            app.yPanelDim = uieditfield(app.EventPanelsTab, 'numeric');
            app.yPanelDim.FontColor = [1 1 1];
            app.yPanelDim.BackgroundColor = [0.2 0.2196 0.2706];
            app.yPanelDim.Position = [291 366 48 22];
            app.yPanelDim.Value = 2500;

            % Create ExportfolderpathAcquisitionLabel
            app.ExportfolderpathAcquisitionLabel = uilabel(app.EventPanelsTab);
            app.ExportfolderpathAcquisitionLabel.VerticalAlignment = 'top';
            app.ExportfolderpathAcquisitionLabel.FontColor = [1 1 1];
            app.ExportfolderpathAcquisitionLabel.Position = [21 96 193 22];
            app.ExportfolderpathAcquisitionLabel.Text = 'Export folder path (Acquisition)';

            % Create exportFolder
            app.exportFolder = uieditfield(app.EventPanelsTab, 'text');
            app.exportFolder.FontColor = [1 1 1];
            app.exportFolder.BackgroundColor = [0.2 0.2235 0.2706];
            app.exportFolder.Position = [20 79 674 22];
            app.exportFolder.Value = 'Drive/.../QuantEscape/exampleDataset_Rab5/exampleDataset_Rab5_TS01';

            % Create PanelNameEditFieldLabel
            app.PanelNameEditFieldLabel = uilabel(app.EventPanelsTab);
            app.PanelNameEditFieldLabel.HorizontalAlignment = 'right';
            app.PanelNameEditFieldLabel.VerticalAlignment = 'top';
            app.PanelNameEditFieldLabel.FontColor = [1 1 1];
            app.PanelNameEditFieldLabel.Position = [15 50 73 15];
            app.PanelNameEditFieldLabel.Text = 'Panel Name';

            % Create panelName
            app.panelName = uieditfield(app.EventPanelsTab, 'text');
            app.panelName.FontColor = [1 1 1];
            app.panelName.BackgroundColor = [0.2 0.2235 0.2706];
            app.panelName.Position = [20 26 173 22];
            app.panelName.Value = 'Panel01';

            % Create SelectDataDropDownLabel_5
            app.SelectDataDropDownLabel_5 = uilabel(app.EventPanelsTab);
            app.SelectDataDropDownLabel_5.HorizontalAlignment = 'right';
            app.SelectDataDropDownLabel_5.VerticalAlignment = 'top';
            app.SelectDataDropDownLabel_5.FontColor = [1 1 1];
            app.SelectDataDropDownLabel_5.Position = [15 157 68 15];
            app.SelectDataDropDownLabel_5.Text = 'Select Data';

            % Create dataType_panel
            app.dataType_panel = uidropdown(app.EventPanelsTab);
            app.dataType_panel.Items = {'Compartment tracking data', 'Cargo tracking data'};
            app.dataType_panel.FontColor = [1 1 1];
            app.dataType_panel.BackgroundColor = [0.2 0.2196 0.2706];
            app.dataType_panel.Position = [18 132 221 22];
            app.dataType_panel.Value = 'Compartment tracking data';

            % Create TrackingTab
            app.TrackingTab = uitab(app.TabGroup4);
            app.TrackingTab.AutoResizeChildren = 'off';
            app.TrackingTab.Title = 'Tracking';
            app.TrackingTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create IncludeTimeSeriesButtonGroup_9
            app.IncludeTimeSeriesButtonGroup_9 = uibuttongroup(app.TrackingTab);
            app.IncludeTimeSeriesButtonGroup_9.AutoResizeChildren = 'off';
            app.IncludeTimeSeriesButtonGroup_9.ForegroundColor = [1 1 1];
            app.IncludeTimeSeriesButtonGroup_9.Title = 'Include Time Series';
            app.IncludeTimeSeriesButtonGroup_9.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeTimeSeriesButtonGroup_9.Position = [287 355 123 78];

            % Create trackTS_all
            app.trackTS_all = uiradiobutton(app.IncludeTimeSeriesButtonGroup_9);
            app.trackTS_all.Text = 'All';
            app.trackTS_all.FontColor = [1 1 1];
            app.trackTS_all.Position = [11 32 35.109375 15];
            app.trackTS_all.Value = true;

            % Create trackTS_selected
            app.trackTS_selected = uiradiobutton(app.IncludeTimeSeriesButtonGroup_9);
            app.trackTS_selected.Text = 'Selected';
            app.trackTS_selected.FontColor = [1 1 1];
            app.trackTS_selected.Position = [11 10 69.125 15];

            % Create IncludeEventsButtonGroup_8
            app.IncludeEventsButtonGroup_8 = uibuttongroup(app.TrackingTab);
            app.IncludeEventsButtonGroup_8.AutoResizeChildren = 'off';
            app.IncludeEventsButtonGroup_8.ForegroundColor = [1 1 1];
            app.IncludeEventsButtonGroup_8.Title = 'Include Events';
            app.IncludeEventsButtonGroup_8.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeEventsButtonGroup_8.Position = [287 271 123 78];

            % Create trackEvents_all
            app.trackEvents_all = uiradiobutton(app.IncludeEventsButtonGroup_8);
            app.trackEvents_all.Text = 'All';
            app.trackEvents_all.FontColor = [1 1 1];
            app.trackEvents_all.Position = [11 32 35.109375 15];
            app.trackEvents_all.Value = true;

            % Create trackEvents_selected
            app.trackEvents_selected = uiradiobutton(app.IncludeEventsButtonGroup_8);
            app.trackEvents_selected.Text = 'Selected';
            app.trackEvents_selected.FontColor = [1 1 1];
            app.trackEvents_selected.Position = [11 10 69.125 15];

            % Create TrackCompartmentsButton
            app.TrackCompartmentsButton = uibutton(app.TrackingTab, 'push');
            app.TrackCompartmentsButton.ButtonPushedFcn = createCallbackFcn(app, @TrackCompartmentsButtonPushed, true);
            app.TrackCompartmentsButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.TrackCompartmentsButton.FontColor = [1 1 1];
            app.TrackCompartmentsButton.Position = [563 216 138 30];
            app.TrackCompartmentsButton.Text = 'Track Compartments';

            % Create PrimaryButtonGroup
            app.PrimaryButtonGroup = uibuttongroup(app.TrackingTab);
            app.PrimaryButtonGroup.AutoResizeChildren = 'off';
            app.PrimaryButtonGroup.ForegroundColor = [1 1 1];
            app.PrimaryButtonGroup.TitlePosition = 'centertop';
            app.PrimaryButtonGroup.Title = 'Primary';
            app.PrimaryButtonGroup.BackgroundColor = [0.2 0.2196 0.2706];
            app.PrimaryButtonGroup.Position = [438 312 69 99];

            % Create ChAButton
            app.ChAButton = uiradiobutton(app.PrimaryButtonGroup);
            app.ChAButton.Text = 'Ch. A';
            app.ChAButton.FontColor = [1 1 1];
            app.ChAButton.Position = [11 53 51.796875 15];
            app.ChAButton.Value = true;

            % Create ChBButton
            app.ChBButton = uiradiobutton(app.PrimaryButtonGroup);
            app.ChBButton.Text = 'Ch. B';
            app.ChBButton.FontColor = [1 1 1];
            app.ChBButton.Position = [11 31 52.234375 15];

            % Create ChCButton
            app.ChCButton = uiradiobutton(app.PrimaryButtonGroup);
            app.ChCButton.Text = 'Ch. C';
            app.ChCButton.FontColor = [1 1 1];
            app.ChCButton.Position = [11 9 52.6875 15];

            % Create SecondaryButtonGroup
            app.SecondaryButtonGroup = uibuttongroup(app.TrackingTab);
            app.SecondaryButtonGroup.AutoResizeChildren = 'off';
            app.SecondaryButtonGroup.ForegroundColor = [1 1 1];
            app.SecondaryButtonGroup.TitlePosition = 'centertop';
            app.SecondaryButtonGroup.Title = 'Secondary';
            app.SecondaryButtonGroup.BackgroundColor = [0.2 0.2196 0.2706];
            app.SecondaryButtonGroup.Position = [527 312 69 99];

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

            % Create runCargoTracking
            app.runCargoTracking = uibutton(app.TrackingTab, 'push');
            app.runCargoTracking.ButtonPushedFcn = createCallbackFcn(app, @runCargoTrackingButtonPushed, true);
            app.runCargoTracking.BackgroundColor = [0.9294 0.6941 0.1255];
            app.runCargoTracking.FontColor = [1 1 1];
            app.runCargoTracking.Position = [563 176 138 30];
            app.runCargoTracking.Text = 'Track Cargo';

            % Create TertiaryButtonGroup
            app.TertiaryButtonGroup = uibuttongroup(app.TrackingTab);
            app.TertiaryButtonGroup.AutoResizeChildren = 'off';
            app.TertiaryButtonGroup.ForegroundColor = [1 1 1];
            app.TertiaryButtonGroup.TitlePosition = 'centertop';
            app.TertiaryButtonGroup.Title = 'Tertiary';
            app.TertiaryButtonGroup.BackgroundColor = [0.2 0.2196 0.2706];
            app.TertiaryButtonGroup.Position = [616 312 68 99];

            % Create ChAButton_3
            app.ChAButton_3 = uiradiobutton(app.TertiaryButtonGroup);
            app.ChAButton_3.Text = 'Ch. A';
            app.ChAButton_3.FontColor = [1 1 1];
            app.ChAButton_3.Position = [11 53 51.796875 15];

            % Create ChBButton_3
            app.ChBButton_3 = uiradiobutton(app.TertiaryButtonGroup);
            app.ChBButton_3.Text = 'Ch. B';
            app.ChBButton_3.FontColor = [1 1 1];
            app.ChBButton_3.Position = [11 31 52.234375 15];

            % Create ChCButton_3
            app.ChCButton_3 = uiradiobutton(app.TertiaryButtonGroup);
            app.ChCButton_3.Text = 'Ch. C';
            app.ChCButton_3.FontColor = [1 1 1];
            app.ChCButton_3.Position = [11 9 52.6875 15];
            app.ChCButton_3.Value = true;

            % Create ChannelOrderLabel
            app.ChannelOrderLabel = uilabel(app.TrackingTab);
            app.ChannelOrderLabel.VerticalAlignment = 'top';
            app.ChannelOrderLabel.FontWeight = 'bold';
            app.ChannelOrderLabel.FontColor = [1 1 1];
            app.ChannelOrderLabel.Position = [438 416 89 15];
            app.ChannelOrderLabel.Text = 'Channel Order';

            % Create skipCAC_tracking
            app.skipCAC_tracking = uicheckbox(app.TrackingTab);
            app.skipCAC_tracking.Text = 'Skip chromatic aberration correction';
            app.skipCAC_tracking.FontColor = [1 1 1];
            app.skipCAC_tracking.Position = [288 218 219 15];

            % Create skipValidated_tracking
            app.skipValidated_tracking = uicheckbox(app.TrackingTab);
            app.skipValidated_tracking.Text = 'Skip events validated in eventMasterKey';
            app.skipValidated_tracking.FontColor = [1 1 1];
            app.skipValidated_tracking.Position = [289 193 241.390625 15];

            % Create EventDetectionSearchRadiusEditFieldLabel_3
            app.EventDetectionSearchRadiusEditFieldLabel_3 = uilabel(app.TrackingTab);
            app.EventDetectionSearchRadiusEditFieldLabel_3.VerticalAlignment = 'top';
            app.EventDetectionSearchRadiusEditFieldLabel_3.FontColor = [1 1 1];
            app.EventDetectionSearchRadiusEditFieldLabel_3.Position = [8 329 172 15];
            app.EventDetectionSearchRadiusEditFieldLabel_3.Text = 'Event Detection Search Radius';

            % Create EventDetectionSearchRadius
            app.EventDetectionSearchRadius = uieditfield(app.TrackingTab, 'numeric');
            app.EventDetectionSearchRadius.FontColor = [1 1 1];
            app.EventDetectionSearchRadius.BackgroundColor = [0.2 0.2196 0.2706];
            app.EventDetectionSearchRadius.Position = [197 326 48 22];
            app.EventDetectionSearchRadius.Value = 3;

            % Create EventTrackingSearchRadiusEditFieldLabel_3
            app.EventTrackingSearchRadiusEditFieldLabel_3 = uilabel(app.TrackingTab);
            app.EventTrackingSearchRadiusEditFieldLabel_3.VerticalAlignment = 'top';
            app.EventTrackingSearchRadiusEditFieldLabel_3.FontColor = [1 1 1];
            app.EventTrackingSearchRadiusEditFieldLabel_3.Position = [8 302 166 15];
            app.EventTrackingSearchRadiusEditFieldLabel_3.Text = 'Event Tracking Search Radius';

            % Create EventTrackingSearchRadius
            app.EventTrackingSearchRadius = uieditfield(app.TrackingTab, 'numeric');
            app.EventTrackingSearchRadius.FontColor = [1 1 1];
            app.EventTrackingSearchRadius.BackgroundColor = [0.2 0.2196 0.2706];
            app.EventTrackingSearchRadius.Position = [197 299 48 22];
            app.EventTrackingSearchRadius.Value = 8;

            % Create StartEventDetectionEditFieldLabel_3
            app.StartEventDetectionEditFieldLabel_3 = uilabel(app.TrackingTab);
            app.StartEventDetectionEditFieldLabel_3.VerticalAlignment = 'top';
            app.StartEventDetectionEditFieldLabel_3.FontColor = [1 1 1];
            app.StartEventDetectionEditFieldLabel_3.Position = [8 248 120 15];
            app.StartEventDetectionEditFieldLabel_3.Text = 'Start Event Detection';

            % Create StartEventDetection
            app.StartEventDetection = uieditfield(app.TrackingTab, 'numeric');
            app.StartEventDetection.FontColor = [1 1 1];
            app.StartEventDetection.BackgroundColor = [0.2 0.2196 0.2706];
            app.StartEventDetection.Position = [197 245 48 22];
            app.StartEventDetection.Value = 20;

            % Create ConfirmEventDetectionEditFieldLabel
            app.ConfirmEventDetectionEditFieldLabel = uilabel(app.TrackingTab);
            app.ConfirmEventDetectionEditFieldLabel.VerticalAlignment = 'top';
            app.ConfirmEventDetectionEditFieldLabel.FontColor = [1 1 1];
            app.ConfirmEventDetectionEditFieldLabel.Position = [8 221 137 15];
            app.ConfirmEventDetectionEditFieldLabel.Text = 'Confirm Event Detection';

            % Create ConfirmEventDetection
            app.ConfirmEventDetection = uieditfield(app.TrackingTab, 'numeric');
            app.ConfirmEventDetection.FontColor = [1 1 1];
            app.ConfirmEventDetection.BackgroundColor = [0.2 0.2196 0.2706];
            app.ConfirmEventDetection.Position = [197 218 48 22];
            app.ConfirmEventDetection.Value = 5;

            % Create TrackTimesPostEventEditFieldLabel
            app.TrackTimesPostEventEditFieldLabel = uilabel(app.TrackingTab);
            app.TrackTimesPostEventEditFieldLabel.VerticalAlignment = 'top';
            app.TrackTimesPostEventEditFieldLabel.FontColor = [1 1 1];
            app.TrackTimesPostEventEditFieldLabel.Position = [8 383 133 15];
            app.TrackTimesPostEventEditFieldLabel.Text = 'Track Times Post-Event';

            % Create TrackTimesPostEvent
            app.TrackTimesPostEvent = uieditfield(app.TrackingTab, 'numeric');
            app.TrackTimesPostEvent.FontColor = [1 1 1];
            app.TrackTimesPostEvent.BackgroundColor = [0.2 0.2196 0.2706];
            app.TrackTimesPostEvent.Position = [197 380 48 22];
            app.TrackTimesPostEvent.Value = 50;

            % Create TrackTimesPreEventEditFieldLabel
            app.TrackTimesPreEventEditFieldLabel = uilabel(app.TrackingTab);
            app.TrackTimesPreEventEditFieldLabel.VerticalAlignment = 'top';
            app.TrackTimesPreEventEditFieldLabel.FontColor = [1 1 1];
            app.TrackTimesPreEventEditFieldLabel.Position = [8 410 126 15];
            app.TrackTimesPreEventEditFieldLabel.Text = 'Track Times Pre-Event';

            % Create TrackTimesPreEvent
            app.TrackTimesPreEvent = uieditfield(app.TrackingTab, 'numeric');
            app.TrackTimesPreEvent.FontColor = [1 1 1];
            app.TrackTimesPreEvent.BackgroundColor = [0.2 0.2196 0.2706];
            app.TrackTimesPreEvent.Position = [197 407 48 22];
            app.TrackTimesPreEvent.Value = 20;

            % Create MinTimesPreEditField_2Label
            app.MinTimesPreEditField_2Label = uilabel(app.TrackingTab);
            app.MinTimesPreEditField_2Label.VerticalAlignment = 'top';
            app.MinTimesPreEditField_2Label.FontColor = [1 1 1];
            app.MinTimesPreEditField_2Label.Position = [8 356 82 15];
            app.MinTimesPreEditField_2Label.Text = 'Min Times Pre';

            % Create MinTimesPre
            app.MinTimesPre = uieditfield(app.TrackingTab, 'numeric');
            app.MinTimesPre.FontColor = [1 1 1];
            app.MinTimesPre.BackgroundColor = [0.2 0.2196 0.2706];
            app.MinTimesPre.Position = [197 353 48 22];
            app.MinTimesPre.Value = 5;

            % Create zSearchDistanceEditField_2Label
            app.zSearchDistanceEditField_2Label = uilabel(app.TrackingTab);
            app.zSearchDistanceEditField_2Label.VerticalAlignment = 'top';
            app.zSearchDistanceEditField_2Label.FontColor = [1 1 1];
            app.zSearchDistanceEditField_2Label.Position = [8 275 102 15];
            app.zSearchDistanceEditField_2Label.Text = 'z Search Distance';

            % Create zSearchDistance
            app.zSearchDistance = uieditfield(app.TrackingTab, 'numeric');
            app.zSearchDistance.FontColor = [1 1 1];
            app.zSearchDistance.BackgroundColor = [0.2 0.2196 0.2706];
            app.zSearchDistance.Position = [197 272 48 22];
            app.zSearchDistance.Value = 5;

            % Create EventDetectionThresholdEditFieldLabel_3
            app.EventDetectionThresholdEditFieldLabel_3 = uilabel(app.TrackingTab);
            app.EventDetectionThresholdEditFieldLabel_3.VerticalAlignment = 'top';
            app.EventDetectionThresholdEditFieldLabel_3.FontColor = [1 1 1];
            app.EventDetectionThresholdEditFieldLabel_3.Position = [8 194 147 15];
            app.EventDetectionThresholdEditFieldLabel_3.Text = 'Event Detection Threshold';

            % Create EventDetectionThreshold
            app.EventDetectionThreshold = uieditfield(app.TrackingTab, 'numeric');
            app.EventDetectionThreshold.FontColor = [1 1 1];
            app.EventDetectionThreshold.BackgroundColor = [0.2 0.2196 0.2706];
            app.EventDetectionThreshold.Position = [197 191 48 22];
            app.EventDetectionThreshold.Value = 5;

            % Create ObjectMaskThresholdLabel
            app.ObjectMaskThresholdLabel = uilabel(app.TrackingTab);
            app.ObjectMaskThresholdLabel.VerticalAlignment = 'top';
            app.ObjectMaskThresholdLabel.FontColor = [1 1 1];
            app.ObjectMaskThresholdLabel.Position = [8 167 130 15];
            app.ObjectMaskThresholdLabel.Text = 'Object Mask Threshold';

            % Create ObjectMaskThreshold
            app.ObjectMaskThreshold = uieditfield(app.TrackingTab, 'numeric');
            app.ObjectMaskThreshold.FontColor = [1 1 1];
            app.ObjectMaskThreshold.BackgroundColor = [0.2 0.2196 0.2706];
            app.ObjectMaskThreshold.Position = [197 164 48 22];
            app.ObjectMaskThreshold.Value = 5;

            % Create FitCargoTrackingLabel
            app.FitCargoTrackingLabel = uilabel(app.TrackingTab);
            app.FitCargoTrackingLabel.VerticalAlignment = 'top';
            app.FitCargoTrackingLabel.FontColor = [1 1 1];
            app.FitCargoTrackingLabel.Position = [8 141 103 15];
            app.FitCargoTrackingLabel.Text = 'Fit Cargo Tracking';

            % Create fitManTracks
            app.fitManTracks = uieditfield(app.TrackingTab, 'numeric');
            app.fitManTracks.FontColor = [1 1 1];
            app.fitManTracks.BackgroundColor = [0.2 0.2196 0.2706];
            app.fitManTracks.Position = [197 137 48 22];
            app.fitManTracks.Value = 1;

            % Create PredeterminedObjectMaskSizeLabel
            app.PredeterminedObjectMaskSizeLabel = uilabel(app.TrackingTab);
            app.PredeterminedObjectMaskSizeLabel.VerticalAlignment = 'top';
            app.PredeterminedObjectMaskSizeLabel.FontColor = [1 1 1];
            app.PredeterminedObjectMaskSizeLabel.Position = [8 115 183 15];
            app.PredeterminedObjectMaskSizeLabel.Text = 'Predetermined Object Mask Size';

            % Create predetObjectMask
            app.predetObjectMask = uieditfield(app.TrackingTab, 'numeric');
            app.predetObjectMask.FontColor = [1 1 1];
            app.predetObjectMask.BackgroundColor = [0.2 0.2196 0.2706];
            app.predetObjectMask.Position = [197 111 48 22];
            app.predetObjectMask.Value = 6;

            % Create Label
            app.Label = uilabel(app.TrackingTab);
            app.Label.FontWeight = 'bold';
            app.Label.FontColor = [1 1 1];
            app.Label.Position = [6 65 25 22];
            app.Label.Text = '';

            % Create PartitionmanualtracksPanel
            app.PartitionmanualtracksPanel = uipanel(app.TrackingTab);
            app.PartitionmanualtracksPanel.ForegroundColor = [1 1 1];
            app.PartitionmanualtracksPanel.Title = 'Partition manual tracks';
            app.PartitionmanualtracksPanel.BackgroundColor = [0.1176 0.1294 0.1569];
            app.PartitionmanualtracksPanel.FontWeight = 'bold';
            app.PartitionmanualtracksPanel.Position = [8 9 693 88];

            % Create PartitionTracksButton
            app.PartitionTracksButton = uibutton(app.PartitionmanualtracksPanel, 'push');
            app.PartitionTracksButton.ButtonPushedFcn = createCallbackFcn(app, @PartitionTracksButtonPushed, true);
            app.PartitionTracksButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.PartitionTracksButton.FontColor = [1 1 1];
            app.PartitionTracksButton.Position = [563 10 100 30];
            app.PartitionTracksButton.Text = 'Partition Tracks';

            % Create EventpanelfolderpathLabel
            app.EventpanelfolderpathLabel = uilabel(app.PartitionmanualtracksPanel);
            app.EventpanelfolderpathLabel.VerticalAlignment = 'top';
            app.EventpanelfolderpathLabel.FontColor = [1 1 1];
            app.EventpanelfolderpathLabel.Position = [4 36 191 22];
            app.EventpanelfolderpathLabel.Text = 'Event panel folder path';

            % Create manTracksPath
            app.manTracksPath = uieditfield(app.PartitionmanualtracksPanel, 'text');
            app.manTracksPath.FontColor = [1 1 1];
            app.manTracksPath.BackgroundColor = [0.2 0.2196 0.2706];
            app.manTracksPath.Position = [5 14 543 22];
            app.manTracksPath.Value = 'Drive/.../QuantEscape/exampleDataset_Rab5/exampleDataset_Rab5_TS01/eventPanels/Panel01...';

            % Create TuneTrackingTab
            app.TuneTrackingTab = uitab(app.TabGroup4);
            app.TuneTrackingTab.AutoResizeChildren = 'off';
            app.TuneTrackingTab.Title = 'Tune Tracking';
            app.TuneTrackingTab.BackgroundColor = [0.1216 0.1294 0.1608];

            % Create EventTrackingSearchRadiusEditFieldLabel_2
            app.EventTrackingSearchRadiusEditFieldLabel_2 = uilabel(app.TuneTrackingTab);
            app.EventTrackingSearchRadiusEditFieldLabel_2.VerticalAlignment = 'top';
            app.EventTrackingSearchRadiusEditFieldLabel_2.FontColor = [1 1 1];
            app.EventTrackingSearchRadiusEditFieldLabel_2.Position = [353 344 166 15];
            app.EventTrackingSearchRadiusEditFieldLabel_2.Text = 'Event Tracking Search Radius';

            % Create trackingDistance
            app.trackingDistance = uieditfield(app.TuneTrackingTab, 'text');
            app.trackingDistance.FontColor = [1 1 1];
            app.trackingDistance.BackgroundColor = [0.2 0.2196 0.2706];
            app.trackingDistance.Position = [308 340 40.96875 22];

            % Create EventDetectionSearchRadiusEditFieldLabel_2
            app.EventDetectionSearchRadiusEditFieldLabel_2 = uilabel(app.TuneTrackingTab);
            app.EventDetectionSearchRadiusEditFieldLabel_2.HorizontalAlignment = 'right';
            app.EventDetectionSearchRadiusEditFieldLabel_2.VerticalAlignment = 'top';
            app.EventDetectionSearchRadiusEditFieldLabel_2.FontColor = [1 1 1];
            app.EventDetectionSearchRadiusEditFieldLabel_2.Position = [348 380 172 15];
            app.EventDetectionSearchRadiusEditFieldLabel_2.Text = 'Event Detection Search Radius';

            % Create searchDistance
            app.searchDistance = uieditfield(app.TuneTrackingTab, 'text');
            app.searchDistance.FontColor = [1 1 1];
            app.searchDistance.BackgroundColor = [0.2 0.2196 0.2706];
            app.searchDistance.Position = [308 376 40.96875 22];

            % Create zSearchDistanceLabel
            app.zSearchDistanceLabel = uilabel(app.TuneTrackingTab);
            app.zSearchDistanceLabel.VerticalAlignment = 'top';
            app.zSearchDistanceLabel.FontColor = [1 1 1];
            app.zSearchDistanceLabel.Position = [353 308 104 15];
            app.zSearchDistanceLabel.Text = 'z-Search Distance';

            % Create zsearchDistance
            app.zsearchDistance = uieditfield(app.TuneTrackingTab, 'text');
            app.zsearchDistance.FontColor = [1 1 1];
            app.zsearchDistance.BackgroundColor = [0.2 0.2196 0.2706];
            app.zsearchDistance.Position = [308 304 40.96875 22];

            % Create StartEventDetectionEditFieldLabel_2
            app.StartEventDetectionEditFieldLabel_2 = uilabel(app.TuneTrackingTab);
            app.StartEventDetectionEditFieldLabel_2.VerticalAlignment = 'top';
            app.StartEventDetectionEditFieldLabel_2.FontColor = [1 1 1];
            app.StartEventDetectionEditFieldLabel_2.Position = [354 272 120 15];
            app.StartEventDetectionEditFieldLabel_2.Text = 'Start Event Detection';

            % Create startDetection
            app.startDetection = uieditfield(app.TuneTrackingTab, 'text');
            app.startDetection.FontColor = [1 1 1];
            app.startDetection.BackgroundColor = [0.2 0.2196 0.2706];
            app.startDetection.Position = [308 269 40.96875 22];

            % Create EventDetectionThresholdEditFieldLabel_2
            app.EventDetectionThresholdEditFieldLabel_2 = uilabel(app.TuneTrackingTab);
            app.EventDetectionThresholdEditFieldLabel_2.VerticalAlignment = 'top';
            app.EventDetectionThresholdEditFieldLabel_2.FontColor = [1 1 1];
            app.EventDetectionThresholdEditFieldLabel_2.Position = [353 236 147 15];
            app.EventDetectionThresholdEditFieldLabel_2.Text = 'Event Detection Threshold';

            % Create detectionThreshold
            app.detectionThreshold = uieditfield(app.TuneTrackingTab, 'text');
            app.detectionThreshold.FontColor = [1 1 1];
            app.detectionThreshold.BackgroundColor = [0.2 0.2196 0.2706];
            app.detectionThreshold.Position = [308 234 40.96875 22];

            % Create ObjectMaskSizeLabel
            app.ObjectMaskSizeLabel = uilabel(app.TuneTrackingTab);
            app.ObjectMaskSizeLabel.VerticalAlignment = 'top';
            app.ObjectMaskSizeLabel.FontColor = [1 1 1];
            app.ObjectMaskSizeLabel.Position = [353 203 100 15];
            app.ObjectMaskSizeLabel.Text = 'Object Mask Size';

            % Create maskSize
            app.maskSize = uieditfield(app.TuneTrackingTab, 'text');
            app.maskSize.FontColor = [1 1 1];
            app.maskSize.BackgroundColor = [0.2 0.2196 0.2706];
            app.maskSize.Position = [308 199 40.96875 22];

            % Create ExperimentEditFieldLabel
            app.ExperimentEditFieldLabel = uilabel(app.TuneTrackingTab);
            app.ExperimentEditFieldLabel.VerticalAlignment = 'top';
            app.ExperimentEditFieldLabel.FontColor = [1 1 1];
            app.ExperimentEditFieldLabel.Position = [32 403 66 15];
            app.ExperimentEditFieldLabel.Text = 'Experiment';

            % Create modEXP
            app.modEXP = uieditfield(app.TuneTrackingTab, 'text');
            app.modEXP.FontColor = [1 1 1];
            app.modEXP.BackgroundColor = [0.2 0.2196 0.2706];
            app.modEXP.Position = [32 376 174 22];

            % Create AcquisitionEditFieldLabel
            app.AcquisitionEditFieldLabel = uilabel(app.TuneTrackingTab);
            app.AcquisitionEditFieldLabel.VerticalAlignment = 'top';
            app.AcquisitionEditFieldLabel.FontColor = [1 1 1];
            app.AcquisitionEditFieldLabel.Position = [32 350 65 15];
            app.AcquisitionEditFieldLabel.Text = 'Acquisition';

            % Create modTS
            app.modTS = uieditfield(app.TuneTrackingTab, 'text');
            app.modTS.FontColor = [1 1 1];
            app.modTS.BackgroundColor = [0.2 0.2196 0.2706];
            app.modTS.Position = [32 323 174 22];

            % Create CellEditFieldLabel
            app.CellEditFieldLabel = uilabel(app.TuneTrackingTab);
            app.CellEditFieldLabel.VerticalAlignment = 'top';
            app.CellEditFieldLabel.FontColor = [1 1 1];
            app.CellEditFieldLabel.Position = [32 292 26 15];
            app.CellEditFieldLabel.Text = 'Cell';

            % Create modCELL
            app.modCELL = uieditfield(app.TuneTrackingTab, 'text');
            app.modCELL.FontColor = [1 1 1];
            app.modCELL.BackgroundColor = [0.2 0.2196 0.2706];
            app.modCELL.Position = [32 265 174 22];

            % Create EventEditFieldLabel
            app.EventEditFieldLabel = uilabel(app.TuneTrackingTab);
            app.EventEditFieldLabel.VerticalAlignment = 'top';
            app.EventEditFieldLabel.FontColor = [1 1 1];
            app.EventEditFieldLabel.Position = [32 234 36 15];
            app.EventEditFieldLabel.Text = 'Event';

            % Create modEVENT
            app.modEVENT = uieditfield(app.TuneTrackingTab, 'text');
            app.modEVENT.FontColor = [1 1 1];
            app.modEVENT.BackgroundColor = [0.2 0.2196 0.2706];
            app.modEVENT.Position = [32 207 174 22];

            % Create TuneParametersButton
            app.TuneParametersButton = uibutton(app.TuneTrackingTab, 'push');
            app.TuneParametersButton.ButtonPushedFcn = createCallbackFcn(app, @TuneParametersButtonPushed, true);
            app.TuneParametersButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.TuneParametersButton.FontColor = [1 1 1];
            app.TuneParametersButton.Position = [32 116 117 30];
            app.TuneParametersButton.Text = 'Tune Parameters';

            % Create NormalizeTab
            app.NormalizeTab = uitab(app.TabGroup4);
            app.NormalizeTab.AutoResizeChildren = 'off';
            app.NormalizeTab.Title = 'Normalize';
            app.NormalizeTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create NormalizeDataButton
            app.NormalizeDataButton = uibutton(app.NormalizeTab, 'push');
            app.NormalizeDataButton.ButtonPushedFcn = createCallbackFcn(app, @NormalizeDataButtonPushed, true);
            app.NormalizeDataButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.NormalizeDataButton.FontColor = [1 1 1];
            app.NormalizeDataButton.Position = [56 36 136 30];
            app.NormalizeDataButton.Text = 'Normalize Data';

            % Create IncludeTimeSeriesButtonGroup_7
            app.IncludeTimeSeriesButtonGroup_7 = uibuttongroup(app.NormalizeTab);
            app.IncludeTimeSeriesButtonGroup_7.AutoResizeChildren = 'off';
            app.IncludeTimeSeriesButtonGroup_7.ForegroundColor = [1 1 1];
            app.IncludeTimeSeriesButtonGroup_7.Title = 'Include Time Series';
            app.IncludeTimeSeriesButtonGroup_7.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeTimeSeriesButtonGroup_7.Position = [15 355 123 78];

            % Create normTS_all
            app.normTS_all = uiradiobutton(app.IncludeTimeSeriesButtonGroup_7);
            app.normTS_all.Text = 'All';
            app.normTS_all.FontColor = [1 1 1];
            app.normTS_all.Position = [11 32 35.109375 15];
            app.normTS_all.Value = true;

            % Create normTS_selected
            app.normTS_selected = uiradiobutton(app.IncludeTimeSeriesButtonGroup_7);
            app.normTS_selected.Text = 'Selected';
            app.normTS_selected.FontColor = [1 1 1];
            app.normTS_selected.Position = [11 10 69.125 15];

            % Create IncludeEventsButtonGroup_6
            app.IncludeEventsButtonGroup_6 = uibuttongroup(app.NormalizeTab);
            app.IncludeEventsButtonGroup_6.AutoResizeChildren = 'off';
            app.IncludeEventsButtonGroup_6.ForegroundColor = [1 1 1];
            app.IncludeEventsButtonGroup_6.Title = 'Include Events';
            app.IncludeEventsButtonGroup_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeEventsButtonGroup_6.Position = [171 355 123 78];

            % Create normEvents_all
            app.normEvents_all = uiradiobutton(app.IncludeEventsButtonGroup_6);
            app.normEvents_all.Text = 'All';
            app.normEvents_all.FontColor = [1 1 1];
            app.normEvents_all.Position = [11 32 35.109375 15];
            app.normEvents_all.Value = true;

            % Create normEvents_selected
            app.normEvents_selected = uiradiobutton(app.IncludeEventsButtonGroup_6);
            app.normEvents_selected.Text = 'Selected';
            app.normEvents_selected.FontColor = [1 1 1];
            app.normEvents_selected.Position = [11 10 69.125 15];

            % Create bgCorrection_ChA
            app.bgCorrection_ChA = uidropdown(app.NormalizeTab);
            app.bgCorrection_ChA.Items = {'Local', 'Cell', 'Image'};
            app.bgCorrection_ChA.FontColor = [1 1 1];
            app.bgCorrection_ChA.BackgroundColor = [0.2 0.2196 0.2706];
            app.bgCorrection_ChA.Position = [196 170 69 22];
            app.bgCorrection_ChA.Value = 'Image';

            % Create bgCorrection_ChB
            app.bgCorrection_ChB = uidropdown(app.NormalizeTab);
            app.bgCorrection_ChB.Items = {'Local', 'Cell', 'Image'};
            app.bgCorrection_ChB.FontColor = [1 1 1];
            app.bgCorrection_ChB.BackgroundColor = [0.2 0.2196 0.2706];
            app.bgCorrection_ChB.Position = [196 138 69 22];
            app.bgCorrection_ChB.Value = 'Local';

            % Create bgCorrection_ChC
            app.bgCorrection_ChC = uidropdown(app.NormalizeTab);
            app.bgCorrection_ChC.Items = {'Local', 'Cell', 'Image'};
            app.bgCorrection_ChC.FontColor = [1 1 1];
            app.bgCorrection_ChC.BackgroundColor = [0.2 0.2196 0.2706];
            app.bgCorrection_ChC.Position = [196 106 69 22];
            app.bgCorrection_ChC.Value = 'Local';

            % Create NormalizationLabel
            app.NormalizationLabel = uilabel(app.NormalizeTab);
            app.NormalizationLabel.VerticalAlignment = 'top';
            app.NormalizationLabel.FontWeight = 'bold';
            app.NormalizationLabel.FontColor = [0.9412 0.9412 0.9412];
            app.NormalizationLabel.Position = [60 194 85 22];
            app.NormalizationLabel.Text = 'Normalization';

            % Create BackgroundcorrectionLabel
            app.BackgroundcorrectionLabel = uilabel(app.NormalizeTab);
            app.BackgroundcorrectionLabel.VerticalAlignment = 'top';
            app.BackgroundcorrectionLabel.FontWeight = 'bold';
            app.BackgroundcorrectionLabel.FontColor = [0.9412 0.9412 0.9412];
            app.BackgroundcorrectionLabel.Position = [196 194 138 29];
            app.BackgroundcorrectionLabel.Text = {'Background '; 'correction'};

            % Create ObjectmeasurementLabel
            app.ObjectmeasurementLabel = uilabel(app.NormalizeTab);
            app.ObjectmeasurementLabel.VerticalAlignment = 'top';
            app.ObjectmeasurementLabel.FontWeight = 'bold';
            app.ObjectmeasurementLabel.FontColor = [0.9412 0.9412 0.9412];
            app.ObjectmeasurementLabel.Position = [279 194 125 29];
            app.ObjectmeasurementLabel.Text = {'Object '; 'measurement'};

            % Create LocalbackgroundmeasurementLabel
            app.LocalbackgroundmeasurementLabel = uilabel(app.NormalizeTab);
            app.LocalbackgroundmeasurementLabel.VerticalAlignment = 'top';
            app.LocalbackgroundmeasurementLabel.FontWeight = 'bold';
            app.LocalbackgroundmeasurementLabel.FontColor = [0.9412 0.9412 0.9412];
            app.LocalbackgroundmeasurementLabel.Position = [369 194 84 43];
            app.LocalbackgroundmeasurementLabel.Text = {'Local '; 'background '; 'measurement'};

            % Create ChA_objMeasure
            app.ChA_objMeasure = uidropdown(app.NormalizeTab);
            app.ChA_objMeasure.Items = {'Mean', 'Median'};
            app.ChA_objMeasure.FontColor = [1 1 1];
            app.ChA_objMeasure.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_objMeasure.Position = [279 168 79 22];
            app.ChA_objMeasure.Value = 'Mean';

            % Create ChB_objMeasure
            app.ChB_objMeasure = uidropdown(app.NormalizeTab);
            app.ChB_objMeasure.Items = {'Mean', 'Median'};
            app.ChB_objMeasure.FontColor = [1 1 1];
            app.ChB_objMeasure.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_objMeasure.Position = [279 138 79 22];
            app.ChB_objMeasure.Value = 'Mean';

            % Create ChC_objMeasure
            app.ChC_objMeasure = uidropdown(app.NormalizeTab);
            app.ChC_objMeasure.Items = {'Mean', 'Median'};
            app.ChC_objMeasure.FontColor = [1 1 1];
            app.ChC_objMeasure.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_objMeasure.Position = [279 106 79 22];
            app.ChC_objMeasure.Value = 'Mean';

            % Create ChA_lbgMeasure
            app.ChA_lbgMeasure = uidropdown(app.NormalizeTab);
            app.ChA_lbgMeasure.Items = {'Mean', 'Median'};
            app.ChA_lbgMeasure.FontColor = [1 1 1];
            app.ChA_lbgMeasure.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChA_lbgMeasure.Position = [369 170 81 22];
            app.ChA_lbgMeasure.Value = 'Mean';

            % Create ChB_lbgMeasure
            app.ChB_lbgMeasure = uidropdown(app.NormalizeTab);
            app.ChB_lbgMeasure.Items = {'Mean', 'Median'};
            app.ChB_lbgMeasure.FontColor = [1 1 1];
            app.ChB_lbgMeasure.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChB_lbgMeasure.Position = [369 138 81 22];
            app.ChB_lbgMeasure.Value = 'Mean';

            % Create ChC_lbgMeasure
            app.ChC_lbgMeasure = uidropdown(app.NormalizeTab);
            app.ChC_lbgMeasure.Items = {'Mean', 'Median'};
            app.ChC_lbgMeasure.FontColor = [1 1 1];
            app.ChC_lbgMeasure.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChC_lbgMeasure.Position = [369 106 81 22];
            app.ChC_lbgMeasure.Value = 'Median';

            % Create ObjectIntensityThresholdEditFieldLabel
            app.ObjectIntensityThresholdEditFieldLabel = uilabel(app.NormalizeTab);
            app.ObjectIntensityThresholdEditFieldLabel.HorizontalAlignment = 'right';
            app.ObjectIntensityThresholdEditFieldLabel.VerticalAlignment = 'top';
            app.ObjectIntensityThresholdEditFieldLabel.FontColor = [1 1 1];
            app.ObjectIntensityThresholdEditFieldLabel.Position = [15 297 146 15];
            app.ObjectIntensityThresholdEditFieldLabel.Text = 'Object Intensity Threshold';

            % Create ObjectIntensityThreshold
            app.ObjectIntensityThreshold = uieditfield(app.NormalizeTab, 'numeric');
            app.ObjectIntensityThreshold.FontColor = [1 1 1];
            app.ObjectIntensityThreshold.BackgroundColor = [0.2 0.2196 0.2706];
            app.ObjectIntensityThreshold.Position = [199 293 46 22];
            app.ObjectIntensityThreshold.Value = 1;

            % Create ChADropDownLabel_11
            app.ChADropDownLabel_11 = uilabel(app.NormalizeTab);
            app.ChADropDownLabel_11.HorizontalAlignment = 'right';
            app.ChADropDownLabel_11.VerticalAlignment = 'top';
            app.ChADropDownLabel_11.FontColor = [1 1 1];
            app.ChADropDownLabel_11.Position = [8 167 36 22];
            app.ChADropDownLabel_11.Text = 'Ch. A';

            % Create ChADropDown
            app.ChADropDown = uidropdown(app.NormalizeTab);
            app.ChADropDown.Items = {'Cell objects', 'Pre-release', 'Cell background', 'No normalization', 'Local background'};
            app.ChADropDown.FontColor = [1 1 1];
            app.ChADropDown.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChADropDown.Position = [59 170 130 22];
            app.ChADropDown.Value = 'No normalization';

            % Create ChBDropDownLabel_11
            app.ChBDropDownLabel_11 = uilabel(app.NormalizeTab);
            app.ChBDropDownLabel_11.HorizontalAlignment = 'right';
            app.ChBDropDownLabel_11.VerticalAlignment = 'top';
            app.ChBDropDownLabel_11.FontColor = [1 1 1];
            app.ChBDropDownLabel_11.Position = [8 135 36 22];
            app.ChBDropDownLabel_11.Text = 'Ch. B';

            % Create ChBDropDown
            app.ChBDropDown = uidropdown(app.NormalizeTab);
            app.ChBDropDown.Items = {'Cell objects', 'Pre-release', 'Cell background', 'No normalization', 'Local background'};
            app.ChBDropDown.FontColor = [1 1 1];
            app.ChBDropDown.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChBDropDown.Position = [59 138 130 22];
            app.ChBDropDown.Value = 'Cell objects';

            % Create ChCDropDownLabel_11
            app.ChCDropDownLabel_11 = uilabel(app.NormalizeTab);
            app.ChCDropDownLabel_11.HorizontalAlignment = 'right';
            app.ChCDropDownLabel_11.VerticalAlignment = 'top';
            app.ChCDropDownLabel_11.FontColor = [1 1 1];
            app.ChCDropDownLabel_11.Position = [8 103 36 22];
            app.ChCDropDownLabel_11.Text = 'Ch. C';

            % Create ChCDropDown
            app.ChCDropDown = uidropdown(app.NormalizeTab);
            app.ChCDropDown.Items = {'Cell objects', 'Pre-release', 'Cell background', 'No normalization', 'Local background'};
            app.ChCDropDown.FontColor = [1 1 1];
            app.ChCDropDown.BackgroundColor = [0.2 0.2196 0.2706];
            app.ChCDropDown.Position = [59 106 130 22];
            app.ChCDropDown.Value = 'Cell objects';

            % Create SelectDataDropDownLabel_4
            app.SelectDataDropDownLabel_4 = uilabel(app.NormalizeTab);
            app.SelectDataDropDownLabel_4.HorizontalAlignment = 'right';
            app.SelectDataDropDownLabel_4.VerticalAlignment = 'top';
            app.SelectDataDropDownLabel_4.FontColor = [1 1 1];
            app.SelectDataDropDownLabel_4.Position = [291 287 68 15];
            app.SelectDataDropDownLabel_4.Text = 'Select Data';

            % Create dataType
            app.dataType = uidropdown(app.NormalizeTab);
            app.dataType.Items = {'Compartment tracking data', 'Cargo tracking data'};
            app.dataType.FontColor = [1 1 1];
            app.dataType.BackgroundColor = [0.2 0.2196 0.2706];
            app.dataType.Position = [294 262 198 22];
            app.dataType.Value = 'Compartment tracking data';

            % Create LocalbackgroundrollingmeanLabel
            app.LocalbackgroundrollingmeanLabel = uilabel(app.NormalizeTab);
            app.LocalbackgroundrollingmeanLabel.BackgroundColor = [0.1176 0.1294 0.1569];
            app.LocalbackgroundrollingmeanLabel.HorizontalAlignment = 'right';
            app.LocalbackgroundrollingmeanLabel.VerticalAlignment = 'top';
            app.LocalbackgroundrollingmeanLabel.FontColor = [1 1 1];
            app.LocalbackgroundrollingmeanLabel.Position = [12 265 174 15];
            app.LocalbackgroundrollingmeanLabel.Text = 'Local background rolling mean';

            % Create nRoll
            app.nRoll = uieditfield(app.NormalizeTab, 'numeric');
            app.nRoll.FontColor = [1 1 1];
            app.nRoll.BackgroundColor = [0.2 0.2235 0.2706];
            app.nRoll.Position = [199 261 46 22];
            app.nRoll.Value = 5;

            % Create CollectTab
            app.CollectTab = uitab(app.TabGroup4);
            app.CollectTab.AutoResizeChildren = 'off';
            app.CollectTab.Title = 'Collect';
            app.CollectTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create IncludeTimeSeriesButtonGroup_6
            app.IncludeTimeSeriesButtonGroup_6 = uibuttongroup(app.CollectTab);
            app.IncludeTimeSeriesButtonGroup_6.AutoResizeChildren = 'off';
            app.IncludeTimeSeriesButtonGroup_6.ForegroundColor = [1 1 1];
            app.IncludeTimeSeriesButtonGroup_6.Title = 'Include Time Series';
            app.IncludeTimeSeriesButtonGroup_6.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeTimeSeriesButtonGroup_6.Position = [38 279 123 78];

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
            app.IncludeEventsButtonGroup_5 = uibuttongroup(app.CollectTab);
            app.IncludeEventsButtonGroup_5.AutoResizeChildren = 'off';
            app.IncludeEventsButtonGroup_5.ForegroundColor = [1 1 1];
            app.IncludeEventsButtonGroup_5.Title = 'Include Events';
            app.IncludeEventsButtonGroup_5.BackgroundColor = [0.2 0.2196 0.2706];
            app.IncludeEventsButtonGroup_5.Position = [171 279 123 78];

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
            app.CollectDataButton = uibutton(app.CollectTab, 'push');
            app.CollectDataButton.ButtonPushedFcn = createCallbackFcn(app, @CollectDataButtonPushed, true);
            app.CollectDataButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.CollectDataButton.FontColor = [1 1 1];
            app.CollectDataButton.Position = [354 324 100 30];
            app.CollectDataButton.Text = 'Collect Data';

            % Create curateData
            app.curateData = uicheckbox(app.CollectTab);
            app.curateData.Text = 'Curate data after collecting';
            app.curateData.FontColor = [1 1 1];
            app.curateData.Position = [354 373 167.5625 15];
            app.curateData.Value = true;

            % Create SelectDataDropDownLabel_3
            app.SelectDataDropDownLabel_3 = uilabel(app.CollectTab);
            app.SelectDataDropDownLabel_3.HorizontalAlignment = 'right';
            app.SelectDataDropDownLabel_3.VerticalAlignment = 'top';
            app.SelectDataDropDownLabel_3.FontColor = [1 1 1];
            app.SelectDataDropDownLabel_3.Position = [35 398 68 15];
            app.SelectDataDropDownLabel_3.Text = 'Select Data';

            % Create SelectDataDropDown
            app.SelectDataDropDown = uidropdown(app.CollectTab);
            app.SelectDataDropDown.Items = {'Compartment tracking data', 'Cargo tracking data'};
            app.SelectDataDropDown.FontColor = [1 1 1];
            app.SelectDataDropDown.BackgroundColor = [0.2 0.2196 0.2706];
            app.SelectDataDropDown.Position = [38 369 256 22];
            app.SelectDataDropDown.Value = 'Compartment tracking data';

            % Create SettingsTab
            app.SettingsTab = uitab(app.TabGroup4);
            app.SettingsTab.AutoResizeChildren = 'off';
            app.SettingsTab.Title = 'Settings';
            app.SettingsTab.BackgroundColor = [0.1176 0.1294 0.1569];

            % Create QuantEscapemainfolderpathLabel
            app.QuantEscapemainfolderpathLabel = uilabel(app.SettingsTab);
            app.QuantEscapemainfolderpathLabel.VerticalAlignment = 'top';
            app.QuantEscapemainfolderpathLabel.FontWeight = 'bold';
            app.QuantEscapemainfolderpathLabel.FontColor = [1 1 1];
            app.QuantEscapemainfolderpathLabel.Position = [19 392 179 22];
            app.QuantEscapemainfolderpathLabel.Text = 'QuantEscape main folder path';

            % Create Home
            app.Home = uieditfield(app.SettingsTab, 'text');
            app.Home.FontColor = [1 1 1];
            app.Home.BackgroundColor = [0.2 0.2196 0.2706];
            app.Home.Position = [19 369 687 23];
            app.Home.Value = 'Drive/.../QuantEscape';

            % Create ExperimentsLabel
            app.ExperimentsLabel = uilabel(app.QuantEscape2020aUIFigure);
            app.ExperimentsLabel.BackgroundColor = [0.902 0.902 0.902];
            app.ExperimentsLabel.HorizontalAlignment = 'center';
            app.ExperimentsLabel.FontSize = 14;
            app.ExperimentsLabel.FontWeight = 'bold';
            app.ExperimentsLabel.Position = [8 453 420 22];
            app.ExperimentsLabel.Text = 'Experiments';

            % Create ProcessingLabel
            app.ProcessingLabel = uilabel(app.QuantEscape2020aUIFigure);
            app.ProcessingLabel.BackgroundColor = [0.902 0.902 0.902];
            app.ProcessingLabel.HorizontalAlignment = 'center';
            app.ProcessingLabel.FontSize = 14;
            app.ProcessingLabel.FontWeight = 'bold';
            app.ProcessingLabel.Position = [447 453 836 22];
            app.ProcessingLabel.Text = 'Processing';

            % Create Lamp
            app.Lamp = uilamp(app.QuantEscape2020aUIFigure);
            app.Lamp.Position = [1263 456 15 15];
            app.Lamp.Color = [0.4706 0.6706 0.1882];

            % Show the figure after all components are created
            app.QuantEscape2020aUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = QuantEscape2020a

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