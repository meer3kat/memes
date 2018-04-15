clear all;

%input grid number
n = 40;

I = zeros(n); %create grid
%{
I(20,20) = 1;
I(20,21) = 1;
%}
I(21,20) = 1;
I(21,21) = 1;
I(19,20) = 2;
I(20,22) = 2;
I(22,21) = 2;
I(21,19) = 2;


imagesc(I); %plot
waitforbuttonpress;
%for tentime = 1:10
for t = 1:2000
    
    I = transit(n,I);
    %waitforbuttonpress;
    imagesc(I)
    pause(0.02)
    %firecell(tentime, t) = 0;
    %for i = 1:n
      %  for j = 1:n
      %      if I(i,j) == 1
       %         firecell(tentime,t) = firecell(tentime,t) + 1;
       %     end
       % end
    end
    
    
%%end

%now do transit 





           



