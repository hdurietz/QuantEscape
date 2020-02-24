function [] = resampleTiffs(ip)
%% Resample multidimensional image data
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

fprintf('Resampling Tiff-files...')
fileStr = ip.listAcquisitions{ip.iAcquisitions,2};
if (fileStr(length(fileStr)) == '#') == 1
        fileStr = fileStr(1:length(fileStr)-1);
end
writeSyntax = sprintf('%s%s', fileStr, '_%s%s.tiff');
readDir = [ip.SSD filesep 'Processing directory' filesep 'singlePlanesSSD'];
saveDir = [ip.SSD filesep 'Processing directory' filesep 'resampledRawSSD'];

tsChannels = ip.allChannels.(char(ip.listAcquisitions{ip.iAcquisitions,1}));
nChannels = numel(tsChannels);

cd (char(saveDir))
for ii = 1:nChannels
    mkdir (tsChannels{ii});
end

nTimes = ip.listAcquisitions{ip.iAcquisitions,5};
nPlanes = ip.zDim.(char(ip.listAcquisitions{ip.iAcquisitions,1}));
xDim = ip.xDim.(char(ip.listAcquisitions{ip.iAcquisitions,1}));
yDim = ip.yDim.(char(ip.listAcquisitions{ip.iAcquisitions,1}));

pw = [readDir filesep tsChannels{1}];
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
if ip.listAcquisitions{ip.iAcquisitions, 5} < 10
    tStr = 't%d';
elseif ip.listAcquisitions{ip.iAcquisitions, 5} < 100
    tStr = 't0%d';
else
    tStr = 't00%d';
end

if ip.zDim.(char(ip.listAcquisitions(ip.iAcquisitions))) < 10
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
    readpw = [readDir filesep tsChannels{iChannels}];
    cStr = 'c%d';
    parfor iTime = 1:nTimes
        resampled = zeros(xDim, yDim, nPlanes);
        if ip.listAcquisitions{ip.iAcquisitions, 5} < 10 
            tStr = 't%d';
        elseif ip.listAcquisitions{ip.iAcquisitions, 5} < 100
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
        for iPlane = 1:nPlanes
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
        
        savepw = [saveDir filesep tsChannels{iChannels}]; %#ok<*PFBNS>
        cd (char(savepw))

        writeImage = char(sprintf(writeSyntax, tStr, cStr));
        for iWrite = 1:nPlanes
            data = uint16(resampled(:,:,iWrite));

            imwrite(data, char(sprintf(writeImage, iTime, iChannels)), 'WriteMode', 'append');
        end
    end
end
poolobj=gcp('nocreate');
delete(poolobj);

fprintf('\n- DONE! -\n');
cd(ip.fdp)
end

