function webCamTracking()
    clear cam;
    cam = webcam;
    preview(cam)
    for i = 1:100
        v=snapshot(cam);
        Y = imageKmeans(v,2,100,100);
        corr = giveMeCorr(Y);
        %plot3(corr(1),corr(2),corr(3),'o-')
        subplot(1,3,1)
        plot(corr(2),corr(1),'o-')
        drawnow;
        hold on;
        subplot(1,3,2)
        plot(corr(2),corr(3),'o-')
        drawnow;
        hold on;
        subplot(1,3,3)
        plotClus(1,Y)
        pause(1)
    end
end