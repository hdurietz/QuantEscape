function [] = modifyTrackingParameters(ip)
%% Change tracking parameters in roiMetadata
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

pw = [ip.dataDir filesep ip.mod.exp filesep ip.mod.ts filesep 'eventROIs' filesep ip.mod.cell filesep ip.mod.cell '_' ip.mod.event];
cd (char(pw))

clear roiMetadata
load roiMetadata %#ok<*LOAD>

if isempty(ip.trackingDistance) == 0
    roiMetadata.trackingDistance = ip.trackingDistance;
end
if isempty(ip.scanPre) == 0
    roiMetadata.scanPre = ip.scanPre;
end
if isempty(ip.searchDistance) == 0
    roiMetadata.searchDistance = ip.searchDistance;
end
if isempty(ip.t0_STD) == 0
    roiMetadata.t0_STD = ip.t0_STD;
end
if isempty(ip.zSearchDistance) == 0
    roiMetadata.zSearchDistance = ip.zSearchDistance;
end
if isempty(ip.default_objectMask) == 0
    roiMetadata.default_objectMask = ip.default_objectMask;
end

save('roiMetadata.mat', 'roiMetadata');
fprintf('\nroiMetadata has been updated\n\n')


end

