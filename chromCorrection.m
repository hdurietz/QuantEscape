function [corrROI, corrMetadata] = chromCorrection(ip, eventROI,  roiMetadata, nChannels, emWavelengths)
%% Correct event ROI for cromatic abberation, return corrected ROI
% Shift all other channels except the green, keep the original roi size and
% set the edges of the shifted frames to 0

% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

% Load data model for correction
cd ([ip.homeDir filesep 'Processing tools' filesep 'Chromatic aberration correction model'])
load linmdl.mat %#ok<LOAD>

if nChannels == 2
    processChannels = {'primMdl' 'secMdl'};
elseif nChannels == 3
    processChannels = {'primMdl' 'secMdl' 'tertMdl'};
end

DAPI_Interval = 0:480;
GFP_Interval = 481:520;
mCherry_Interval = 521:620;
farRed_Interval = 620:1000;

if sum(emWavelengths(1) == DAPI_Interval) == 1
    m.primMdl = 'c430'; %#ok<*NASGU>
elseif sum(emWavelengths(1) == GFP_Interval) == 1
    m.primMdl = 'c509';
elseif sum(emWavelengths(1) == mCherry_Interval) == 1
    m.primMdl = 'c560';
elseif sum(emWavelengths(1) == farRed_Interval) == 1
    m.primMdl = 'c660';
end

if sum(emWavelengths(2) == DAPI_Interval) == 1
    m.secMdl = 'c430'; %#ok<*NASGU>
elseif sum(emWavelengths(2) == GFP_Interval) == 1
    m.secMdl = 'c509';
elseif sum(emWavelengths(2) == mCherry_Interval) == 1
    m.secMdl = 'c560';
elseif sum(emWavelengths(2) == farRed_Interval) == 1
    m.secMdl = 'c660';
end

if nChannels == 3
    if sum(emWavelengths(3) == DAPI_Interval) == 1
        m.tertMdl = 'c430'; %#ok<*NASGU>
    elseif sum(emWavelengths(3) == GFP_Interval) == 1
        m.tertMdl = 'c509';
    elseif sum(emWavelengths(3) == mCherry_Interval) == 1
        m.tertMdl = 'c560';
    elseif sum(emWavelengths(3) == farRed_Interval) == 1
        m.tertMdl = 'c660';
    end
end


% Get the centercoordinates of the ROI in the original frame
center_x = roiMetadata.xCC_ORG;
center_y = roiMetadata.yCC_ORG;
size_y = size(eventROI,1);
size_x = size(eventROI,2);

corrROI = zeros(size(eventROI));
for iChannels = 1:nChannels
    shiftROI = eventROI(:,:,:,:,iChannels);
    shiftedROI = zeros(size(shiftROI));

    if strcmp(m.(char(processChannels{iChannels})),'c509') == 0
        % shift roi but keep dimension
        
        shift_y = round(predict(linmdl.(char(m.(char(processChannels{iChannels})))).yVar, center_y));
        shift_x = round(predict(linmdl.(char(m.(char(processChannels{iChannels})))).xVar, center_x));
        
        if shift_y >= 0 && shift_x >= 0
            shiftedROI(1+shift_y:size_y, 1+shift_x:size_x, :,:,:) = ...
                shiftROI(1:size_y-shift_y, 1:size_x-shift_x, :,:,:);
            
        elseif shift_y >= 0 && shift_x <= 0
            shiftedROI(1+shift_y:size_y, 1:size_x+shift_x, :,:,:) = ...
                shiftROI(1:size_y-shift_y, 1-shift_x:size_x, :,:,:);
            
        elseif shift_y <= 0 && shift_x >= 0
            shiftedROI(1:size_y+shift_y, 1+shift_x:size_x, :,:,:) = ...
                shiftROI(1-shift_y:size_y, 1:size_x-shift_x, :,:,:);
            
        elseif shift_y <= 0 && shift_x <= 0
            shiftedROI(1:size_y+shift_y, 1:size_x+shift_x, :,:,:) = ...
                shiftROI(1-shift_y:size_y, 1-shift_x:size_x, :,:,:);
        end
        
        % use correction metadata to adjust roi/object center coordinates
        % in case the primary (tracking refernce channel) is not green
        % with cargo release tracking, the coordinates are already for the
        % corrected ROI data, no need to correct further
        if strcmp(processChannels{iChannels},'primMdl') == 1
            corrMetadata.shift_y = shift_y;
            corrMetadata.shift_x = shift_x;
        end
        
    else
        shiftedROI = shiftROI; % do not correct green channel
        if strcmp(processChannels{iChannels},'primMdl') == 1
            corrMetadata.shift_y = 0;
            corrMetadata.shift_x = 0;
        end
    end
    
    corrROI(:,:,:,:,iChannels) = shiftedROI;
    

    
    
    
end
cd (ip.fdp)
end

