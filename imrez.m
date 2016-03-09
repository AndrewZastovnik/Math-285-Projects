function X = imrez(M,newx,newy)
    oldSize = size(M);                 
    newSize = [newy newx]; 
    scale = newSize./oldSize(1:2);
    %# Compute an upsampled set of indices:
    rowIndex = min(round(((1:newSize(1))-0.5)./scale(1)+0.5),oldSize(1));
    colIndex = min(round(((1:newSize(2))-0.5)./scale(2)+0.5),oldSize(2));
    X = M(rowIndex,colIndex,:);
end