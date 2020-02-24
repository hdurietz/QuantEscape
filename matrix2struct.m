function[ output ] = matrix2struct(matrixData, aVarName, bVarName)
%% Convert matrix to structured array
% QuantEscape - Quantification tools for endosomal escape and damage
% Hampus Du Rietz, 2020

[A, B] = size(matrixData);

aVar = zeros(A*B,1);
bVar = zeros(A*B,1);
values = zeros(A*B,1);
gg = 1;

for aIDX = 1:A
    for bIDX = 1:B
        aVar(gg) = aIDX;
        bVar(gg) = bIDX;
        values(gg) = matrixData(aIDX,bIDX);
        gg = gg+1;
    end
end

output.(char(aVarName)) = aVar;
output.(char(bVarName)) = bVar;
output.values = values;

end

