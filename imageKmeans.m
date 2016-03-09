function Y = imageKmeans(Ximg,k,sizex,sizey)
    %Applys kmeans to an image Ximg
    %before running kmeans it restructers the 
    %image so that x and y positions are in the first
    %two columns and red intensities are in third
    Ximg= imrez(Ximg,sizex,sizey);
    X = zeros(sizex*sizey,1);
    Ximg = double(Ximg);
    count = 1;
    for i = 1:sizey
        for j = 1:sizex
%             X(count,1) = i;
%             X(count,2) = j;
            X(count,1) = Ximg(i,j,1);
            %X(count,4) = Ximg(i,j,2);
            %X(count,5) = Ximg(i,j,3);
            count = count +1;
        end
    end   
        Y = kmeans(X,k,'Replicates',10);  
end