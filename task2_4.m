clear all;

%input grid number
n = 40;

I = zeros(n); %create grid

I(20,20) = 1;
I(20,21) = 1;
I(21,20) = 1;
I(21,21) = 1;
I(19,20) = 2;
I(20,22) = 2;
I(22,21) = 2;
I(21,19) = 2;

imagesc(I); %plot
waitforbuttonpress;

for t = 1:20
    
    I = transit(n,I);
    imagesc(I)
    pause(0.25)
end
fig1 = imagesc(I);
caxis([0 2]);
colorbar('Ticks',[0,1,2],'TickLabels',{'ready','firing','rest'},'FontSize',14)
title('shape that oscillate periodically','FontSize',16)
saveas(fig1,'task2_4.png');





           



