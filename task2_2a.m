clear all;

%I = random_start(40,0.2); 
%if you want a random start

%plot fireing number over time 

%input grid number
n = 40;

I = zeros(n); %create grid

I(29,20) = 1;
I(29,21) = 2;
I(30,20) = 1;
I(30,21) = 2;
I(30,27) = 1;
I(30,28) = 2;
I(30,30) = 1;
I(30,31) = 1;
I(31,21) = 1;
I(31,22) = 2;
I(31,25) = 1;
I(31,26) = 2;
I(31,30) = 2;
I(31,31) = 2;
I(32,23) = 1;
I(32,24) = 2;
I(32,27) = 2;
I(32,28) = 2;
I(32,29) = 1;
I(32,30) = 1;
I(33,25) = 1;
I(33,26) = 2;
I(33,28) = 1;
I(33,32) = 2;
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

for t = 1:15
    
    I = transit(n,I);
    
    imagesc(I)
    pause(0.25)

end
    
fig1 = imagesc(I);
caxis([0 2]);
colorbar('Ticks',[0,1,2],'TickLabels',{'ready','firing','rest'},'FontSize',14)
title('lauching other shapes behind','FontSize',16)
%saveas(fig1,'task2_2.png');





           



