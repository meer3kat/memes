figure2 = figure('position', [0, 0, 700, 500]);
imagesc(Bvals,hrange,histu'/(numreps*500),[0 0.1])
colormap jet
hlx=xlabel('number of bored person','FontSize',14)
hlx=ylabel('number of sharing person','FontSize',14)
title('Phase transition plot', 'FontSize', 16)
colorbar
saveas(figure2,'phasetransition.png');

figure3 = figure('position', [0, 0, 700, 500]);
%Plot the results
count=0;
for p=Bvals
    count=count+1;
    p;
    for rep=1:numreps
        plot(p,finalS(count,rep),'bx')
        hold on
    end
end

xlabel('number of bored person','FontSize',14)
ylabel('number of sharing person','FontSize',14)
title('plot of sharing person in individual run at t= 1000', 'FontSize', 16)
saveas(figure3,'indi_phase.png');
