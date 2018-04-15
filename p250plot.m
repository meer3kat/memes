load('probabilityof250.mat')

figure2 = figure('position', [0, 0, 700, 500]);
meshgrid(p25)
surf(p25)
grid on
colormap jet
%hlx=xlabel('time','FontSize',14)
%hlx=ylabel('B0','FontSize',14
%title('probability of more than 250 are sharing', 'FontSize', 16)
colorbar
saveas(figure2,'probablity250_100simsurface.png');