function [] = createFolders(ip)
%% Create initial experiment folder architecture   
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

nExperiments = numel(ip.allExperiments);
cd (char(ip.dataDir));

% Create folder architecture in data directory
for ee = 1:nExperiments
    mkdir (char(ip.allExperiments(ee)))
    cd (char(ip.allExperiments(ee)))
    nDirs = ip.nAcquisitions.(char(ip.allExperiments(ee)));
    allChannels = ip.allChannels.(char(ip.allExperiments(ee)));
    nChannels = length(allChannels);
    for tsDirs = 1:nDirs
        if tsDirs < 10
            string1 = '0%d';
        else
            string1 = '%d';
        end
        syntax = sprintf('%s_TS%s', char(ip.allExperiments(ee)), string1);
        
        foldername = sprintf(char(syntax),tsDirs);
        mkdir (char(foldername));
        cd (char(foldername))
        
        mkdir ('cellMetadata');
        mkdir ('eventMetadata');
        mkdir ('background');
        mkdir ('rawImages');
        mkdir ('eventROIs');
        
        mkdir ('resampledImages');
        cd 'resampledImages'
        for ii = 1:nChannels
            mkdir (char(allChannels(ii)));
        end
        cd ../
        
        mkdir ('mipImages');
        cd 'mipImages'
        for ii = 1:nChannels
            mkdir (char(allChannels(ii)));
        end
        cd ../..
    end
    cd ../
end

end

