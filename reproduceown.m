clear all;
%input grid number
n = 100;

I = zeros(n); %create grid

imagesc(I);

%generate initial state
for i = 1:n
    for j = 1:n
        initial_state = rand;
        if initial_state < 0.05 
            I(i,j) = 1;
        elseif initial_state < 0.1
            I(i,j) = 2;
        elseif initial_state< 0.25
            I(i,j) = 3;
        elseif initial_state< 0.35
            I(i,j) = 4;
        end
            

    end
end
%


t = 0;

v = VideoWriter('myca_t1000.avi');
v.FrameRate = 10;
open(v);
figure('position', [0, 0, 700, 600])
imagesc(I);
colormap jet
caxis([0 4]);
colorbar('Ticks',[0,1,2,3,4],'TickLabels',{'waiting','growing','reproducing','aging','dead'},'FontSize',14)
title(sprintf('Simulation of population t =  %s', string(t)),'FontSize',16)
axis tight manual 
set(gca,'nextplot','replacechildren'); 
frame = getframe(gcf);
writeVideo(v,frame);


waitforbuttonpress;

%for tentime = 1:10
for t = 1:1000
    
    I = transitown(n,I);

    imagesc(I)
    colorbar
    pause(0.25)


    imagesc(I);
    colormap jet
    caxis([0 4]);
    colorbar('Ticks',[0,1,2,3,4],'TickLabels',{'waiting','growing','reproducing','aging','dead'},'FontSize',14)
    title(sprintf('Simulation of population t =  %s', string(t)),'FontSize',16)
    frame = getframe(gcf);
    writeVideo(v,frame);
    
    %pause(0.1)
end

close(v)



           



