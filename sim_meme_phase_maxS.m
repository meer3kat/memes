clear all;

n = 1000;
pp = 0.001;%discover new meme
q = 0.01; %share a meme
total_time_step = 1000;
%sim_number = 1000;%a lot @.@ for my computer
Bt = 0;
St = 0;
Rt = 0;

Bvals = [1:10:999];
numreps = 10;
hrange = [0:1:n];

histu = zeros(length(Bvals), length(hrange));
count = 0;

for b = Bvals
    Sall = [];
    count = count + 1
    
    for rep = 1:numreps
        [B,S,R] = runmeme_phase(n,total_time_step,pp,q,b);
        S = S';
        
        finalS(count,rep) = S(end);
        maxS(count,rep) = max(S);
        Sall = [Sall;S((end-499):end)];
    end
    %take the histogram
    histu(count,:) = hist(Sall,hrange);
end

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
for pp=Bvals
    count=count+1;
    pp;
    for rep=1:numreps
        plot(pp,finalS(count,rep),'bx')
        hold on
    end
end

xlabel('number of bored person','FontSize',14)
ylabel('number of sharing person','FontSize',14)
title('plot of sharing person in individual run at t= 1000', 'FontSize', 16)
saveas(figure3,'indi_phase.png');

    
%{

for rep = 1:sim_number
    
    [B,S,R] = runmeme(n,total_time_step,p,q);
    Bt = Bt + B;
    St = St + S;
    Rt = Rt + R;
end

result_B = Bt/sim_number;
result_S = St/sim_number;
result_R = Rt/sim_number;
x = 0:1:total_time_step;

my_fig = figure('position', [0, 0, 700, 500]);
plot(x,result_B,'b','LineWidth',5);
hold on;
plot(x,result_S,'r','LineWidth',5);
plot(x,result_R,'y','LineWidth',5);
xlabel('time','FontSize',14);
ylabel('number of people reacting to meme','FontSize',14);
title('1000 simulation of spread of memes','FontSize',16);
legend('number of bored','number of resting','number of sharing');
saveas(my_fig,'memes_1.png');
hold off;
%}