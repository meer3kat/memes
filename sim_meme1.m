clear all;

n = 1000;
p = 0.001;%discover new meme
q = 0.01; %share a meme
total_time_step = 2000;
sim_number = 1000;
Bt = 0;
St = 0;
Rt = 0;


for rep = 1:sim_number
    rep
    
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
saveas(my_fig,'memes_sim_1000times.png');
hold off;
