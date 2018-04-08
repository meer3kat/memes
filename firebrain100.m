clear all;
%this is to simualte 1 time at different time steps of a firing brain

n = 40;%input grid number
p = 0.3;
I = random_start(n,p);%generate initial state 

imagesc(I);%plot
caxis([0 2]);
colorbar('Ticks',[0,1,2],'TickLabels',{'ready','firing','rest'},'FontSize',14)
title('Simulation of a firing brain','FontSize',16)

waitforbuttonpress;

endtime = 100;

for t = 1:endtime
    
        I = transit(n,I);
    
        %plot
        %{ 
        imagesc(I)
        caxis([0 2]);
        colorbar('Ticks',[0,1,2],'TickLabels',{'ready','firing','rest'},'FontSize',14)
        title('Simulation of a firing brain','FontSize',16)
        %}
   
        %pause(0.0025)
        
end

%to save the final state
fig1 = imagesc(I);
hold on;
caxis([0 2]);
colorbar('Ticks',[0,1,2],'TickLabels',{'ready','firing','rest'},'FontSize',14)
title('Simulation of a firing brain after 100 time step','FontSize',16)
%saveas(fig1,'fire1000.png');




