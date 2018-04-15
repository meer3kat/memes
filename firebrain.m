clear all;
%input grid number
n = 40;
I = zeros(n); %create grid
imagesc(I);
%generate initial state that 
for i = 1:n
    for j = 1:n
        initial_state = rand;
        if initial_state < 0.3
            I(i,j) = 1;
        end
    end
end

imagesc(I); %plot
%if I(i,j) = 1, yellow
%if I(i,j) = 0, purple
%if I(i,j) = 2, blue
waitforbuttonpress;
%for tentime = 1:10
for t = 1:1000
    
    I = transit(n,I);
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





           



