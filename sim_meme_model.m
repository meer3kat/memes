clear all;

n = 1000;
p = 0.001;%discover new meme
q = 0.01; %share a meme
total_time_step = 2000;
sim_number = 1;

for rep = 1:sim_number
    [B,S,R] = mememodel(n,total_time_step,p,q);
    
    m_result_B(rep,:) = B;
    m_result_S(rep,:) = S;
    m_result_R(rep,:) = R;
end

load('1000_sim_memes.mat');
x = 0:1:total_time_step;

my_fig = figure('position', [0, 0, 700, 500]);
plot(x,result_B,'b','LineWidth',3);
hold on;
plot(x,result_S,'r','LineWidth',3);
plot(x,result_R,'y','LineWidth',3);
plot(x,m_result_B,'--b','LineWidth',3);
plot(x,m_result_S,'r--','LineWidth',3);
plot(x,m_result_R,'y--','LineWidth',3);

xlabel('time','FontSize',14);
ylabel('number of people reacting to meme','FontSize',14);
title('simulation of spread of memes and mean field model','FontSize',16);
legend({'number of bored','number of sharing','number of resting','number of bored in model','number of sharing in model','number of resting in model'},'Location','east');
saveas(my_fig,'memes_withmodel1000.png');
hold off;
