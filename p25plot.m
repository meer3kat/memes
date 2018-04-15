load('p25.mat')
imagesc(p25)
colormap jet
hlx=xlabel('time','FontSize',14)
hlx=ylabel('B0','FontSize',14)
title('probability of more than 250 are sharing', 'FontSize', 16)
colorbar