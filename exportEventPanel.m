function [ ] = exportEventPanel( panel, panelMetadata, writepath, panelName )
%% Export the event panelfiles generated by eventPanel.m
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

cd (char(writepath))
destination = 'eventPanels';
if ~exist(destination,'dir')
    mkdir(destination);
end
cd (destination)

dateparam = clock;
destination = char(sprintf('%s %d.%d.%d %d.%d', panelName, dateparam(1),dateparam(2),dateparam(3),dateparam(4),dateparam(5)));
if ~exist(destination,'dir')
    mkdir(destination);
end
cd (destination)

mkdir 'Panel files'
cd 'Panel files'

syntax = 'eventPanel_c%s_t%s.tif';
stringC = '%d';

nTimes = size(panel,4);
if nTimes < 10
    maxTimes = 9;
elseif nTimes < 100
    maxTimes = 99;
elseif nTimes < 1000
    maxTimes = 999;
elseif nTimes < 10000
    maxTimes = 9999;
end

for iChannel = 1:size(panel,5)
    for iTime = 1:nTimes
        
        if maxTimes == 9
            stringT = '%d';
            
        elseif maxTimes == 99
            if iTime < 10
                stringT = '0%d';
            else
                stringT = '%d';
            end
            
        elseif maxTimes == 999
            if iTime < 10
                stringT = '00%d';
            elseif iTime < 100
                stringT = '0%d';
            else
                stringT = '%d';
            end
            
        elseif maxTimes == 9999
            if iTime < 10
                stringT = '000%d';
            elseif iTime < 100
                stringT = '00%d';
            elseif iTime < 1000
                stringT = '0%d';
            else
                stringT = '%d';
            end
            
        end
        
        filesyntax = sprintf(char(syntax),stringC, stringT);
        filename = sprintf(filesyntax, iChannel, iTime);
        
        for iPlane = 1:size(panel,3)
            
            data = panel(:,:,iPlane,iTime,iChannel);
            data = uint16(data);
            imwrite(data, char(filename), 'WriteMode', 'append');
        end
    end
end

cd (['..' filesep])

save('panelMetadata.mat', 'panelMetadata');

fprintf('\n- DONE -\n');

end

