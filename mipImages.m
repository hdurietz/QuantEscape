function [ip] = mipImages(ip)
%% Create maximum intensity projections of images
% Hampus Du Rietz 2017-08-11

fprintf('Creating maximum intensity projections...\n');
syntax = '_c%d_%s.tiff';
commonName = ip.listAcquisitions{ip.iAcquisitions,2};
if (commonName(length(commonName)) == '#') == 1
    commonName = commonName(1:length(commonName)-1);
end
experimentFolder = [ip.dataDir filesep ip.listAcquisitions{ip.iAcquisitions,1}];
tsChannels = ip.allChannels.(char(ip.listAcquisitions{ip.iAcquisitions,1}));
nChannels = numel(tsChannels);
nTimes = ip.listAcquisitions{ip.iAcquisitions,5};
nPlanes = ip.zDim.(char(ip.listAcquisitions{ip.iAcquisitions,1}));
xDim = ip.xDim.(char(ip.listAcquisitions{ip.iAcquisitions,1}));
yDim = ip.yDim.(char(ip.listAcquisitions{ip.iAcquisitions,1}));

for iChannel = 1:nChannels
    pw = [experimentFolder filesep ip.listAcquisitions{ip.iAcquisitions,2} filesep 'resampledImages' filesep tsChannels{iChannel}];
    cd (char(pw));
    
    clear dir
    dirData = dir; % Get the data for the current directory
    dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
    dirData(strncmp({dirData.name}, '~', 1)) = [];
    allFiles = {dirData.name}';
    
    pw = [experimentFolder filesep ip.listAcquisitions{ip.iAcquisitions,2} filesep 'mipImages'];
    cd (char(pw));
    
    mkdir (tsChannels{iChannel})
    cd (tsChannels{iChannel})
    
    parfor iTime = 1:nTimes
        %       Use right string syntax
        if ip.listAcquisitions{ip.iAcquisitions, 5} < 10 %#ok<*PFBNS>
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
        timeStamp = sprintf(char(tStr), iTime);
        
%       Read
        pw = [experimentFolder filesep ip.listAcquisitions{ip.iAcquisitions,2} filesep 'resampledImages' filesep tsChannels{iChannel}];
        cd (char(pw));
        
        for ff = 1:length(allFiles)
            if isempty(strfind(allFiles{ff}, timeStamp)) == 0
                filename = allFiles(ff);
                break
            end
        end
        stackdata = zeros(xDim, yDim, nPlanes);
        for iPlane = 1:nPlanes
            stackdata(:,:,iPlane) = imread(char(filename), iPlane);
        end
        
%       Process
        mip = max(stackdata,[],3);
        
%       Save
        pw = [experimentFolder filesep ip.listAcquisitions{ip.iAcquisitions,2} filesep 'mipImages' filesep tsChannels{iChannel}];
        cd (char(pw));
        
        namesyntax = sprintf(syntax, iChannel, tStr);
        parname = sprintf(namesyntax,iTime);
        filename = sprintf('%s%s',commonName, parname);
        data = uint16(mip);
        imwrite(data, char(filename));
    end
end
poolobj=gcp('nocreate');
delete(poolobj);

cd(ip.fdp)
end

