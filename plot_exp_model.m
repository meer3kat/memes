clear

load('100sim');
average_fire = mean(firecell);
%fit exp model data
% y = a* exp(b*x) + c*exp(d*x);
a = 313.1;
b = -0.1323;
c = 45.59;
d = -0.002314;


fig2 = figure('position', [0, 0, 700, 500]);
x = 0:1:1000;
plot(x,average_fire,'bd','MarkerSize',2);
hold on
x_fit = 0:0.01:1000;
y_fit = a*exp(b*x_fit) + c*exp(d*x_fit);
plot(x_fit,y_fit,'g','LineWidth',2);
ylim([0 600])
xlabel('time step','FontSize',14);
ylabel('number of firing cell','FontSize',14);
title('average firing cell after 100 simulations','FontSize',16);
legend('average firing cell','exponential model');

text(650,500,'y = a* exp(b*x) + c*exp(d*x)','FontSize', 14)
text(650,480,'a = 313.1','FontSize', 14)
text(650,460,'b = -0.1323','FontSize', 14)
text(650,440,'c = 45.59','FontSize', 14)
text(650,420,'d = -0.002314','FontSize', 14)
saveas(fig2,'sim_model.png');