clear all;

n = 40;%input grid number
p = 0.3;

endtime = 1000;

for s_time = 1:100
    I = random_start(n,p);%generate initial state 
%{
    imagesc(I);%plot
    caxis([0 2]);
    colorbar('Ticks',[0,1,2],'TickLabels',{'ready','firing','rest'},'FontSize',14)
    title('Simulation of a firing brain','FontSize',16)
%}    
    for t = 1:endtime+1
        %waitforbuttonpress;
    
        %plot
        %{
        imagesc(I)
        caxis([0 2]);
        colorbar('Ticks',[0,1,2],'TickLabels',{'ready','firing','rest'},'FontSize',14)
        title('Simulation of a firing brain','FontSize',16)
        %}
   
        %pause(0.0025)
    
        firecell(s_time, t) = 0;
        for i = 1:n
            for j = 1:n
              if I(i,j) == 1
                firecell(s_time,t) = firecell(s_time,t) + 1;
              end
            end
        end
        
        I = transit(n,I);
    end
end

%to plot

fig2 = figure('position', [0, 0, 700, 500]);
x = 0:1:1000;
plot(x,mean(firecell),'LineWidth',3);
ylim([0 600])
xlabel('time step','FontSize',14);
ylabel('number of firing cell','FontSize',14);
ylim([0 1001]);
title('100 simulations of a firing brain to 1000 time steps','FontSize',16);
%legend('total number of bored','total number of resting','total number of sharing');
saveas(fig2,'firebrain100sim.png');
