%% Make composite image of all channels
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

intensityCutoff = 99.99;

load('c348.mat')
p.c348n = c348/(mean(prctile(reshape(c348, [1,2048*2048*100]),intensityCutoff)));
clear c348

load('c509.mat')
p.c509n = c509/(mean(prctile(reshape(c509, [1,2048*2048*100]),intensityCutoff)));
clear c509

load('c560.mat')
p.c560n = c560/(mean(prctile(reshape(c560, [1,2048*2048*100]),intensityCutoff)));
clear c560

load('c660.mat')
p.c660n = c660/(mean(prctile(reshape(c660, [1,2048*2048*100]),intensityCutoff)));
clear c660

channels = fieldnames(p);
addChannels = zeros(2048,2048,100,4);

for ii = 1:numel(channels)
    addChannels(:,:,:,ii) = p.(char(channels(ii)));
    
    if ii == 1
        p.c348 = [];
    elseif ii == 2
        p.c509 = [];
    elseif ii == 3
        p.c560 = [];
    elseif ii == 4
        p.c660 = [];
    end
    
end

maxChannels = max(addChannels,[],4);
mipMaxChannels = max(maxChannels,[],3);

% Bead segmentation
MEDIAN = median(reshape(mipMaxChannels, [1 2048*2048]));
STD = std(reshape(mipMaxChannels, [1 2048*2048]));
mipThresh = mipMaxChannels;
mipThresh(mipThresh<MEDIAN+5*STD)=0;
mipThresh(mipThresh>0)=1;

thresh = maxChannels;
thresh(thresh<MEDIAN+5*STD)=0;
thresh(thresh>0)=1;

CC = bwconncomp(thresh, 6);
labels = labelmatrix(CC);
stats = struct2table(regionprops(labels, 'BoundingBox', 'Area', 'Image'));

deleteMin = stats.Area < 50;
stats(deleteMin,:) = [];
deleteMax = stats.Area > 1000;
stats(deleteMax,:) = [];

%%

channels ={'c348', 'c509', 'c560', 'c660'};

nChannels = numel(channels);
margin = 5;

for iChannels = 1:nChannels

    
   fullStack = load(sprintf('%s.mat',channels{iChannels}));
    
    for iBeads = 1:height(stats)
        
        xBound_start = floor(stats.BoundingBox(iBeads,1)) - margin;
        yBound_start = floor(stats.BoundingBox(iBeads,2)) - margin;
        zBound_start = floor(stats.BoundingBox(iBeads,3)) - margin;
        xBound_end = floor(stats.BoundingBox(iBeads,1)) + stats.BoundingBox(iBeads,4) + margin;
        yBound_end = floor(stats.BoundingBox(iBeads,2)) + stats.BoundingBox(iBeads,5) + margin;
        zBound_end = floor(stats.BoundingBox(iBeads,3)) + stats.BoundingBox(iBeads,6) + margin;
        
        if xBound_start < 1
            xBound_start = 1;
        elseif xBound_start >2048
            xBound_start = 2048;
        end
        
        if yBound_start < 1
            yBound_start = 1;
        elseif yBound_start >2048
            yBound_start = 2048;
        end
        
        if zBound_start < 1
            zBound_start = 1;
        elseif zBound_start >100
            zBound_start = 100;
        end        
        
        if xBound_end > 2048
            xBound_end = 2048;
        end          
        
        if yBound_end > 2048
            yBound_end = 2048;
        end  
        
        if zBound_end > 100
            zBound_end = 100;
        end  
        
        data = fullStack.(char(channels(iChannels)))(...
            yBound_start:yBound_end,...
            xBound_start:xBound_end,...
            zBound_start:zBound_end);
        
        xyMIP = max(data,[],3);
        xzMIP = max(permute(data,[1 3 2]),[],3);
        yzMIP = max(permute(data,[2 3 1]),[],3);
        
        xyReshaped = matrix2struct(xyMIP,'yVar','xVar');
        xzReshaped = matrix2struct(xzMIP,'xVar','zVar');
        yzReshaped = matrix2struct(yzMIP,'yVar','zVar');
        
        % Returns the relative maximum of the fitted surface
        xyMAX = sfitMax(xyReshaped,'yVar','xVar', xyMIP);
        xzMAX = sfitMax(xzReshaped,'xVar','zVar', xzMIP);
        yzMAX = sfitMax(yzReshaped,'yVar','zVar', yzMIP);
        
        % Convert relativ maximums to absolute maximums
        xyMAXabs.xVar = xyMAX.xVar + floor(stats.BoundingBox(iBeads,1));
        xyMAXabs.yVar = xyMAX.yVar + floor(stats.BoundingBox(iBeads,2));
        xzMAXabs.xVar = xzMAX.xVar + floor(stats.BoundingBox(iBeads,1));
        xzMAXabs.zVar = xzMAX.zVar + floor(stats.BoundingBox(iBeads,3));
        yzMAXabs.yVar = yzMAX.yVar + floor(stats.BoundingBox(iBeads,2));
        yzMAXabs.zVar = yzMAX.zVar + floor(stats.BoundingBox(iBeads,3));
        
        % Add values to struct
        s.(sprintf('bead%d',iBeads)).(char(channels(iChannels))).xVar = xyMAXabs.xVar;
        s.(sprintf('bead%d',iBeads)).(char(channels(iChannels))).yVar = xyMAXabs.yVar;
        s.(sprintf('bead%d',iBeads)).(char(channels(iChannels))).zVar = (xzMAXabs.zVar+yzMAXabs.zVar)*0.5;
    
    end 
end

% Collect all bead data for all channels and all variables
nBeads = numel(fieldnames(s));
vars = {'xVar' 'yVar' 'zVar'};

for iChannels = 1:nChannels
    for iBeads = 1:nBeads
        for iVars = 1:numel(vars)
        mdlData.(char(channels(iChannels))).(char(vars(iVars)))(iBeads,1) =  s.(sprintf('bead%d',iBeads)).c509.(char(vars(iVars)));
        mdlData.(char(channels(iChannels))).(char(vars(iVars)))(iBeads,2) =  s.(sprintf('bead%d',iBeads)).c509.(char(vars(iVars))) -...
            s.(sprintf('bead%d',iBeads)).(char(channels(iChannels))).(char(vars(iVars)));
        end
    end
end

% Fit linear models for all channels and all variables (x,y,z)
for iChannels = 1:nChannels
    for iVars = 1:numel(vars)
        ref = mdlData.(char(channels(iChannels))).(char(vars(iVars)))(:,1);
        delta = mdlData.(char(channels(iChannels))).(char(vars(iVars)))(:,2);
        linmdl.(char(channels(iChannels))).(char(vars(iVars))) = fitlm(ref,delta);
    end
end

save('linmdl.mat', 'linmdl');
save('beadData.mat', 's');
save('mdlData', 'mdlData');


    