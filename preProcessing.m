function [] = preProcessing(ip)
%% Primary processing (batch-loop, only performed once per experiment is fixed parameters)
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

fprintf('\nPre-processing images...\n\n');
cd (ip.fdp)
ip.listAcquisitions = listAcquisitions(ip);

for iAcquisitions = 1:size(ip.listAcquisitions,1)

    ip.iAcquisitions = iAcquisitions;
    fprintf('Processing %s\n',ip.listAcquisitions{iAcquisitions,2});

    position = ip.listAcquisitions{ip.iAcquisitions,2};
    if (position(length(position)) == '#') == 1
        position = position(1:(length(position)-1));
    end
    fprintf('%s\n', position);

    % Sorting and resampling (planes to stack per file) of raw exported images and data sheets in folder organization
    ip = sortResampleImages(ip);
    
    % Create maximum intensity projections of images
    ip = mipImages(ip);    

end
fprintf('\n- DONE! -\n');
end