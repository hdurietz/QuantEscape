function  [ output ] = sfitMax( data, aVarName, bVarName, MIP )
%% Determines sub-pixel 2D centroid of maximum intensity projection
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

values = data.values;
aVar = data.(char(aVarName));
bVar = data.(char(bVarName));

try sfitobject = fit([bVar,aVar],values,'loess', 'Span', 0.85,'Robust','Bisquare');
catch 
    try sfitobject = fit([bVar,aVar],values,'loess', 'Span', 0.65,'Robust','Bisquare');
    catch
        try sfitobject = fit([bVar,aVar],values,'loess', 'Span', 0.45,'Robust','Bisquare');
        catch
            try sfitobject = fit([bVar,aVar],values,'loess', 'Span', 0.25,'Robust','Bisquare');
            catch
            end
        end
    end
end

Fmax = 0;
aSTART=1;
bSTART=1;
aEND=size(MIP,1);
bEND=size(MIP,2);
aMAX = 0;
bMAX = 0;

for iter = 1:6
    step = [ 1 0.1 0.01 0.001 0.0001 0.00001 0.000001 0.0000001];
    for aIDX = 1: (aEND-aSTART)/step(iter)
        for bIDX = 1: (bEND-bSTART)/step(iter)
            
            aa = aSTART+aIDX*step(iter);
            bb = bSTART+bIDX*step(iter);
            
            if Fmax < sfitobject(aa,bb)
                Fmax = sfitobject(aa,bb);
                aMAX = aa;
                bMAX = bb;
            end
        end
    end
            
    aSTART = aMAX-2*step(iter);
    bSTART = bMAX-2*step(iter);
    aEND = aMAX+2*step(iter);
    bEND = bMAX+2*step(iter);
end





output.(sprintf(aVarName)) = aMAX;
output.(sprintf(bVarName)) = bMAX;
end

