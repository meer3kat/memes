clear all;
%this is to simualte 1 time at different time steps of a firing brain

n = 40;%input grid number
p = 0.3;
I = random_start(n,p);%generate initial state 

t = 0;

v = VideoWriter('firebrain_1000.avi');
v.FrameRate = 10;
open(v);
figure('position', [0, 0, 700, 600])
imagesc(I);%plot
caxis([0 2]);
colorbar('Ticks',[0,1,2],'TickLabels',{'ready','firing','rest'},'FontSize',14)
title(sprintf('Simulation of a firing brain at t =  %s', string(t)),'FontSize',16)

axis tight manual 
set(gca,'nextplot','replacechildren'); 
frame = getframe(gcf);
writeVideo(v,frame);

waitforbuttonpress;

endtime = 1000;


for t = 1:endtime
    
        I = transit(n,I);
        
        imagesc(I);
        caxis([0 2]);
        colorbar('Ticks',[0,1,2],'TickLabels',{'ready','firing','rest'},'FontSize',14)
        title(sprintf('Simulation of a firing brain at t =  %s', string(t)),'FontSize',16)

        frame = getframe(gcf);
        writeVideo(v,frame);
   
        %pause(0.0025)
        
end
close(v)

%{
to save the final state
fig1 = imagesc(I);
caxis([0 2]);
colorbar('Ticks',[0,1,2],'TickLabels',{'ready','firing','rest'},'FontSize',14)
title('Simulation of a firing brain after 1000 time step','FontSize',16)
%saveas(fig1,'fire1000.png');
%}




