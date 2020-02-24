function [] = partManTracks( ip, readpath )
%% Partition manual tracks
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

fprintf('\nPartitioning manual tracks...\n\n');
cd (readpath)
load('panelMetadata.mat'); %#ok<*LOAD>

allChannels = ip.allChannels.(char(ip.allExperiments(1)));
ip.nChannels = length(allChannels);

% Read the manual Tracks file from ImageJ
table=csvread('manTracks.csv', 1, 0);
% slice no is dependent on which channel is selected in imagej while
% tracking (as well as the number of z-planes and channels). The routine is
% 1) perform object tracking  choossing the first channel 2) and prior to
% automatic object tracking
% Thus, there can be 2 or 3 de facto channels.

dMax_tCC = max(cell2mat(panelMetadata(:,9))); %#ok<*NODEF>
manTrack = [];
for ii = 1:size(table,1)
    %   convert slice no to relative time variable
    
    slice = table(ii,2);%table(ii,3);
    time = (slice-1)/ip.nChannels + 1;
    %time = (slice-1)/ip.nChannels;
    %time = (slice)/ip.nChannels;
    xVar = table(ii,3);%table(ii,4);
    yVar = table(ii,4);%table(ii,5);
    
    for jj = 1:size(panelMetadata,1)
        
        xLim = panelMetadata{jj,10};
        yLim = panelMetadata{jj,11};
        xDim = panelMetadata{jj,5};
        yDim = panelMetadata{jj,6};
        
        %       evaluate if the coordinates belong to the current ROI
        if xVar >= xLim && xVar <= xLim+xDim   && ...
           yVar >= yLim && yVar <= yLim+yDim
       
           exp = panelMetadata{jj,1};
           ts = panelMetadata{jj,2};
           cell = panelMetadata{jj,3};
           event = panelMetadata{jj,4};

%          if the coordinates are the first in the current ROI, clear the 
%          manTrack variable
           if exist('previous_event','var') == 1 
               if strcmp(previous_event, event) == 0
                  manTrack = [];
               end
           end

%          convert the manTrack coordinates to roi relative coordinates
%          add to manTrack variable
%          OUTPUT VARIABLES
%          1. Absolut frame number
%          2. x coordinate relative ROI
%          3. y coordinate relative ROI
           index = size(manTrack,1)+1;
           manTrack(index,1) = time - (dMax_tCC - panelMetadata{jj,9}); %#ok<*AGROW>
           manTrack(index,2) = xVar-xLim + 1;
           manTrack(index,3) = yVar-yLim + 1;
           
           pw = [ip.dataDir filesep exp filesep ts filesep 'eventMetadata' filesep cell filesep event];
           cd (pw)
           
           save('manTrack.mat', 'manTrack') 
           
           previous_event = event;
        end
    end
end

fprinf('\n- DONE! -\n');
end

