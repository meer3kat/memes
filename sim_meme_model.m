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

my_model_fig = figure('position', [0, 0, 700, 500]);
plot(m_result_B);
hold on;
plot(m_result_R);
plot(m_result_S);
xlabel('time step');
ylabel('total number of people reacting to meme');
title('simulation of spread of memes model');
legend('total number of bored','total number of resting','total number of sharing');
saveas(my_model_fig,'model_memes.png');
hold off;