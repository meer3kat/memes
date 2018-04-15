clear all;
%input grid number
n = 120;

I = zeros(n); %create grid

imagesc(I);
%{
I(50,50) = 1;
I(50,51) = 1;
I(60,40) = 1;
%}
%
%generate initial state
for i = 1:n
    for j = 1:n
        initial_state = rand;
        if initial_state < 0.02
            I(i,j) = 1;

        end
    end
end
%

imagesc(I); %plot
waitforbuttonpress;
%for tentime = 1:10
for t = 1:5000
    
    I = transit1(n,I);
    %waitforbuttonpress;
    imagesc(I)
    pause(0.25)
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





           



