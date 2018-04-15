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


figure('position', [0, 0, 700, 600])
imagesc(I);
colormap jet
caxis([0 4]);
colorbar('Ticks',[0,1,2,3,4],'TickLabels',{'waiting','growing','reproducing','aging','dead'},'FontSize',14)
title(sprintf('Simulation of population t =  %s', string(t)),'FontSize',16)
axis tight manual 
set(gca,'nextplot','replacechildren'); 



waitforbuttonpress;

%for tentime = 1:10
for t = 1:100
    
    I = transitown(n,I);

    
    %pause(0.1)
end
%to save the final state
fig1 = imagesc(I);
caxis([0 4]);
colorbar('Ticks',[0,1,2,3,4],'TickLabels',{'waiting','growing','reproducing','aging','dead'},'FontSize',14)   
title(sprintf('Simulation of population t =  %s', string(t)),'FontSize',16)

saveas(fig1,'mycell_automatat100.png');



           



