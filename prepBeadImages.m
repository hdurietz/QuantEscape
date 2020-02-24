%% Prepare images for MATLAB processing
%Use this script to read separate z-planes from one channel to create a
%full stack TIFF image. Set the working directory to the folder containing
%all images.
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

%Provide the stack size
xDim = 2048;
yDim = 2048;
zDim = 100;

c560 = zeros(yDim,xDim,zDim);
% c509 = c348;
% c560 = c348;
% c660 = c348;

dirData = dir;
dirData = dir; % Get the data for the current directory
dirData(strncmp({dirData.name}, '.', 1)) = []; % Remove false files
dirData(strncmp({dirData.name}, '~', 1)) = [];
files = {dirData.name}';

iPlane = 1;
for iFiles=1:numel(files)
    if contains(files(iFiles),'c3')
        c560(:,:,iPlane) = imread(files{iFiles});
        iPlane = iPlane + 1;
    end
end

    