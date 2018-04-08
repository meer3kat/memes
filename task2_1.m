clear all;

%input grid number
n = 40;

I = zeros(n); %create grid

I(5,5) = 1;
I(5,6) = 1;
I(6,5) = 2;
I(6,6) = 2;

I(20,21) = 1;
I(20,20) = 1;
I(21,20) = 2;
I(21,21) = 2;
I(22,19) = 1;
I(22,22) = 1;
I(23,19) = 2;
I(23,22) = 2;

imagesc(I); %plot
fig1 = imagesc(I);
caxis([0 2]);
colorbar('Ticks',[0,1,2],'TickLabels',{'ready','firing','rest'},'FontSize',14)
title('shapes that move forward at a rate of one cell per time step','FontSize',16)
saveas(fig1,'task2_1.png');


waitforbuttonpress;
%for tentime = 1:10
for t = 1:200
    
    I = transit(n,I);
    imagesc(I)
    pause(0.25)

end
    
    





           



