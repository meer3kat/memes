clear all;
%input grid number
n = 40;

for simulate_time = 1:100
    I = zeros(n); %create grid
    %imagesc(I);

    %generate initial state
    for i = 1:n
        for j = 1:n
            initial_state = rand;
            if initial_state < 0.3
                I(i,j) = 1;
            end
        end
    end
    


    imagesc(I); %plot
    for t = 1:1000
        firecell(t,simulate_time) = 0;
        for i = 1:n
            for j = 1:n
                if I(i,j) == 1
                    firecell(t, simulate_time) = firecell(t, simulate_time) + 1;
                end
            end
        end
    
        I = transit(n,I);
        
        
        
        %waitforbuttonpress;
        %imagesc(I)
        %pause(0.5)
    end
    
   % firecell(simulate_time) = 0;
    
    %{
    for i = 1:n
        for j = 1:n
            if I(i,j) == 1
                firecell(simulate_time) = firecell(simulate_time) + 1;
            end
        end
     end
     %}     
            
    %imagesc(I)
end


result = firecell(2);
plot(result);



           



