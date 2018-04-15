clear all;
%input grid number
n = 40;
p = 0.001;
q = 0.01;
I = zeros(n); %create grid
imagesc(I);
initial_x = randperm(n,2);
initial_y = randperm(n,2);


%1, sharing person
I(initial_x(1),initial_y(1)) = 1;
%2. bored person
I(initial_x(2),initial_y(2)) = 2;

t = 0;

v = VideoWriter('memes_3_t1000.avi');
v.FrameRate = 10;
open(v);
figure('position', [0, 0, 700, 600])
imagesc(I);
caxis([0 2]);
colorbar('Ticks',[0,1,2],'TickLabels',{'rest','sharing','bored'},'FontSize',14)
title(sprintf('Simulation of spread of meme at t =  %s', string(t)),'FontSize',16)
axis tight manual 
set(gca,'nextplot','replacechildren'); 
frame = getframe(gcf);
writeVideo(v,frame);


waitforbuttonpress;

for t = 1:1000
    I = transit_meme(n,I,p,q);

    %figure('position', [0, 0, 700, 600])
    imagesc(I);
    caxis([0 2]);
    colorbar('Ticks',[0,1,2],'TickLabels',{'rest','sharing','bored'},'FontSize',14)
    title(sprintf('Simulation of spread of meme at t =  %s', string(t)),'FontSize',16)

    frame = getframe(gcf);
    writeVideo(v,frame);
    
    %pause(0.1)

    
end
    
close(v)
    






           



