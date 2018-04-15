figure3 = figure('position', [0, 0, 700, 500]);
%Plot the results
count=0;
for pp=qvals
    count=count+1;
    pp;
    for rep=1:numreps
        plot(pp,finalS(count,rep),'bx')
        hold on
    end
end

xlabel('q','FontSize',14)
ylabel('number of sharing person','FontSize',14)
title('plot of sharing person in individual run at t= 1000', 'FontSize', 16)
saveas(figure3,'indi_phase2t1000withq.png');
