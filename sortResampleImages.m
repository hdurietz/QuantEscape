function [ip] = sortResampleImages( ip )
%% Sort and resample raw images in new folders 
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

%Setup processing parameters
experimentFolder = [ip.dataDir filesep ip.listAcquisitions{ip.iAcquisitions,1}];
tsChannels = ip.allChannels.(char(ip.listAcquisitions{ip.iAcquisitions,1}));
zDim = ip.zDim.(char(ip.listAcquisitions{ip.iAcquisitions,1}));
xDim = ip.xDim.(char(ip.listAcquisitions{ip.iAcquisitions,1}));
yDim = ip.yDim.(char(ip.listAcquisitions{ip.iAcquisitions,1}));
fileStr = ip.listAcquisitions{ip.iAcquisitions,2};
nChannels = numel(tsChannels);

% Sort raw images into folders
fprintf('\nMoving single plane files to folders...\n')

pw = [experimentFolder filesep ip.listAcquisitions{ip.iAcquisitions,2}];
cd (char(pw))
mkdir 'sortedImages';
cd 'sortedImages'

for ii = 1:nChannels
    mkdir (tsChannels{ii});
end

pw = [experimentFolder filesep ip.listAcquisitions{ip.iAcquisitions,2} filesep 'rawImages'];
cd (char(pw))
clear dir
dirData = dir; % Get the data for the current directory
dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
dirData(strncmp({dirData.name}, '~', 1)) = [];
allFiles = {dirData.name}';

nTimes = length(allFiles)/(nChannels*zDim);
ip.listAcquisitions{ip.iAcquisitions,5} = nTimes;

iChannels = 1;
iTime = 1;
iPlane = 1;
cStr = 'c%d';
if nTimes < 10
    tStrNL = 't%d';
    maxTimes = 9;
elseif nTimes < 100
    tStrNL = 't0%d';
    maxTimes = 99;
else
    tStrNL = 't00%d';
    maxTimes = 999;
end

if zDim < 10
    pStr = 'z%d';
    maxPlanes = 9;
else
    pStr = 'z0%d';
    maxPlanes = 99;
end

channel = sprintf(char(cStr), iChannels);
time = sprintf(char(tStrNL), iTime);
plane = sprintf(char(pStr), iPlane);
% Locate index of matching file
for iFile = 1:size(allFiles,1)
    if isempty(strfind(allFiles{iFile,1},time)) == 0 && ...
            isempty(strfind(allFiles{iFile,1},plane)) == 0 && ...
            isempty(strfind(allFiles{iFile,1},channel)) == 0
        break
    end
end
filename = char(allFiles(iFile,1));
idxTime = strfind(filename,time);
idxChannel = strfind(filename,channel);
namesyntax = [filename(1:idxTime-1) '%s%s%s' filename(idxChannel+2:length(filename))];

parfor iTimes = 1:nTimes
    for iPlanes = 1:zDim
        
        for iChannels = 1:nChannels  
            if maxTimes == 9
                tStr = 't%d';
                
            elseif maxTimes == 99
                if iTimes < 10
                    tStr = 't0%d';
                else
                    tStr = 't%d';
                end
                
            elseif maxTimes == 999
                if iTimes < 10
                    tStr = 't00%d';
                elseif iTimes < 100
                    tStr = 't0%d';
                else
                    tStr = 't%d';
                end
            end
            
            if iPlanes < 10 && maxPlanes == 9
                pStr = 'z%d';
            elseif iPlanes < 10 && maxPlanes == 99
                pStr = 'z0%d';
            else
                pStr = 'z%d';
            end
            
            filesyntax = sprintf(char(namesyntax), tStr,pStr,cStr);
            filename = sprintf(char(filesyntax), iTimes, iPlanes, iChannels);
            source = [experimentFolder filesep char(ip.listAcquisitions{ip.iAcquisitions,2}) filesep 'rawImages' filesep filename];
            destination = [experimentFolder filesep char(ip.listAcquisitions{ip.iAcquisitions,2}) filesep 'sortedImages' filesep char(tsChannels{iChannels}) filesep filename];
            
            try  
                movefile(source, destination)
            catch
                    disp 'Error: Could not move files to new location.'
            end
        end
    end
end
fprintf('Done!\n\n')


% Resample multidimensional image data
fprintf('Resampling image-files...\n')
writeSyntax = sprintf('%s%s', fileStr, '_%s%s.tiff');
nChannels = numel(tsChannels);

pw = [experimentFolder filesep ip.listAcquisitions{ip.iAcquisitions,2}];
cd (char(pw))
mkdir 'resampledImages';
cd 'resampledImages'
for ii = 1:nChannels
    mkdir (tsChannels{ii});
end

pw = [experimentFolder filesep ip.listAcquisitions{ip.iAcquisitions,2} filesep 'sortedImages' filesep tsChannels{1}];
cd (char(pw))

clear dir
dirData = dir; % Get the data for the current directory
dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
dirData(strncmp({dirData.name}, '~', 1)) = [];
allFiles = {dirData.name}';

iChannels = 1;
iTime = 1;
iPlane = 1;
cStr = 'c%d';
if nTimes < 10
    tStr = 't%d';
elseif nTimes < 100
    tStr = 't0%d';
else
    tStr = 't00%d';
end

if zDim < 10
    pStr = 'z%d';
    maxPlanes = 9;
else
    pStr = 'z0%d';
    maxPlanes = 99;
end

channel = sprintf(char(cStr), iChannels);
time = sprintf(char(tStr), iTime);
plane = sprintf(char(pStr), iPlane);
% Locate index of matching file
for iFile = 1:size(allFiles,1)
    if isempty(strfind(allFiles{iFile,1},time)) == 0 && ...
            isempty(strfind(allFiles{iFile,1},plane)) == 0 && ...
            isempty(strfind(allFiles{iFile,1},channel)) == 0
        break
    end
end
filename = char(allFiles(iFile,1));
idxTime = strfind(filename,time);
idxChannel = strfind(filename,channel);
namesyntax = [filename(1:idxTime-1) '%s%s%s' filename(idxChannel+2:length(filename))];

for iChannels = 1:nChannels
    
    readpw = [experimentFolder filesep ip.listAcquisitions{ip.iAcquisitions,2} filesep 'sortedImages' filesep tsChannels{iChannels}];
    cStr = 'c%d';
    parfor iTime = 1:nTimes
        resampled = zeros(xDim, yDim, zDim);
        if nTimes < 10
            tStr = 't%d';
        elseif nTimes < 100
            if iTime < 10
                tStr = 't0%d';
            else
                tStr = 't%d';
            end
        else
            if iTime < 10
                tStr = 't00%d';
            elseif iTime < 100
                tStr = 't0%d';
            else
                tStr = 't%d';
            end
        end
        cd (char(readpw))
        for iPlane = 1:zDim
            if iPlane < 10 && maxPlanes == 9
                pStr = 'z%d';
            elseif iPlane < 10 && maxPlanes == 99
                pStr = 'z0%d';
            else
                pStr = 'z%d';
            end
            filesyntax = sprintf(char(namesyntax), tStr,pStr,cStr);
            filename = sprintf(char(filesyntax), iTime, iPlane, iChannels);
            resampled(:,:,iPlane) = imread(filename);
        end
        
        savepw = [experimentFolder filesep ip.listAcquisitions{ip.iAcquisitions,2} filesep 'resampledImages' filesep tsChannels{iChannels}]; %#ok<*PFBNS>
        cd (char(savepw))
        
        writeImage = char(sprintf(writeSyntax, tStr, cStr));
        for iWrite = 1:zDim
            data = uint16(resampled(:,:,iWrite));
            
            imwrite(data, char(sprintf(writeImage, iTime, iChannels)), 'WriteMode', 'append');
        end
    end
end
fprintf('\n- DONE! -!\n')

cd (ip.fdp)
end

