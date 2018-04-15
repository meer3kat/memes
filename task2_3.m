clear all;

%input grid number
n = 40;

I = zeros(n); %create grid

I(20,20) = 2;
I(20,21) = 2;
I(18,22) = 2;
I(19,20) = 1;
I(19,22) = 1;
I(21,20) = 1;
%{
I(21,20) = 1;
I(21,21) = 1;
I(19,20) = 2;
I(20,22) = 2;
I(22,21) = 2;
I(21,19) = 2;
%}

imagesc(I); %plot
waitforbuttonpress;

for t = 1:20
    
    I = transit(n,I);
    %waitforbuttonpress;
    imagesc(I)
    pause(0.2)
end

fig1 = imagesc(I);
caxis([0 2]);
colorbar('Ticks',[0,1,2],'TickLabels',{'ready','firing','rest'},'FontSize',14)
title('shape that move less than one cell per time step','FontSize',16)
saveas(fig1,'task2_3.png');





           



