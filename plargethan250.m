clear all;
n = 1000;
p = 0.001;%discover new meme
q = 0.01; %share a meme
total_time_step = 1000;

Bvals = [1:1:999];
numreps = 100;
tval = [1:1:total_time_step];

p25 = zeros(999, total_time_step);
count = 0;

for b = Bvals
    b
    for i = 1:1:numreps
        [B,S,R] = runmeme_phase(n,total_time_step,p,q,b);
        for t = 1:total_time_step
            if S(t) > 250
                p25(b,t) = p25(b,t) + 0.01;
            end
        end
    end
end
figure2 = figure('position', [0, 0, 700, 500]);
imagesc(p25)
colormap jet
hlx=xlabel('time','FontSize',14)
hlx=ylabel('B0','FontSize',14)
title('probability of more than 250 are sharing', 'FontSize', 16)
colorbar
%saveas(figure2,'probablity250_100sim.png');
