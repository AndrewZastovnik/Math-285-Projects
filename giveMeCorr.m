function corr = giveMeCorr(Y)
    X = giveMeX(100,100);
    %a very simple test to check which cluster is the background 
    Background = mode(Y(X(:,1) ==1));
    %hopefully this will give us the position of the mean of the cluster
       temp = mean(X(Y(:) ~= Background(1),:));
       thisClusterSize = sum(Y(:)~=Background(1));
       corr = zeros(3,1);
       [corr(1),corr(2),corr(3)] = projection3D(3,temp(1),temp(2),thisClusterSize,100,100,50);
       clear temp;
end