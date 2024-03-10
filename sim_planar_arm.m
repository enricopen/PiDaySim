
function sim_planar_arm (theta1,theta2,l1,l2)
    dim = length(theta2); %length of angle vector

    for i=1:dim
        x0 = 0;
        y0 = 0;
        
        %position of first link
        x1 = round(l1*cosd(theta1(i)),3);
        y1 = round(l1*sind(theta1(i)),3);
        
        %position of second link
        x2 = round((x1 + l2*cosd(theta1(i)+theta2(i))),3);
        y2 = round((y1 + l2*sind(theta1(i)+theta2(i))),3);
        
        %plot
        clf
        plot([x0 x1],[y0 y1], [x1 x2],[y1 y2],LineWidth=2,Color="black")
        hold on
        plot([x0 x1 x2],[y0 y1 y2],'.k','MarkerSize',15)
        plot([x0 x1],[y0 y1],'ok','MarkerSize',10)
        axis([-10 10 -10 10])
        grid on
        refreshdata
        
        drawnow
        pause(2)
        
    end
end

