clear all;

[X,Y]=meshgrid(1:10);
figure; 
hold on;
plot(X,Y,'k');
plot(Y,X,'k');axis off
I=(rand(10));
surface(I);
h=linspace(0.5,1,64);
h=[h',h',h'];
set(gcf,'Colormap',h);
N=100:-1:1;q=1;
x=linspace(1.5,10.5,10);
y=linspace(1.5,10.5,10);
for n=1:10
    for p=1:10
        text(y(n)-.5,x(p),num2str(N(q)),'FontWeight','bold');
        q=q+1;
    end
end