clear all;

n = 1000;
p = 0.001;%discover new meme
q = 0.01; %share a meme
total_time_step = 2000;
sim_number = 1000;%a lot @.@ for my computer

for rep = 1:sim_number
    
    [B,S,R] = runmeme(n,total_time_step,p,q);
    result_B(rep,:) = B;
    result_S(rep,:) = S;
    result_R(rep,:) = R;
end

my_fig = figure('position', [0, 0, 700, 500]);
plot(mean(result_B));
hold on;
plot(mean(result_R));
plot(mean(result_S));
xlabel('time step');
ylabel('total number of people reacting to meme');
title('simulation of spread of memes');
legend('total number of bored','total number of resting','total number of sharing');
saveas(my_fig,'memes.png');
hold off;

