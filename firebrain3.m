clear all;
%input grid number
n = 60;

I = zeros(n); %create grid

imagesc(I);


%generate initial state
for i = 1:n
    for j = 1:n
        initial_state = rand;
        if initial_state < 0.01
            I(i,j) = 1;
        end
    end
end

imagesc(I); %plot
waitforbuttonpress;
%for tentime = 1:10
for t = 1:5000
    
    I = transit2(n,I);
    %waitforbuttonpress;
    imagesc(I)
    pause(0.2)
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





           



