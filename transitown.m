function y = transitown(n, I)
%waiting 0 grow 1 reproduce 2 mature 3 dead 4

y_initial = I; %initial our transit value
y = zeros(n); %create matrix for next state with all zeros ready to write 

for i = 1:n
    for k = 1:n
        
        %if dead 0.2 chance go to wait
        if y_initial(i,k) == 4 
            if rand < 0.6
                y(i,k) = 0;
            else
                y(i,k) = 4;
            end
        end
        
        if y_initial(i,k) == 3 %if mature 50% go to dead
            if rand < 0.5
                y(i,k) = 4;
            else
                y(i,k) = 3;
            end
        end
        
         
         % if 0 need to start grow 
        if y_initial(i,k) == 0
            count = 0;
            
            for p = (i-1) : (i+1)
                for q = (k-1) : (k+1)
                    %hard reset boundary condition to periodic >_<
                    if p == 0
                       p = n;
                    end
                    
                    if q == 0
                        q = n;
                    end
                    
                    if p == n + 1
                        p = 1;
                    end
                    
                    if q == n + 1
                        q = 1;
                    end
                
                    
                    if y_initial(p,q) == 2
                        count = count + 1;
                    end
                end
            end
            
            if count >1
                y(i,k) = 1;
            else 
                y(i,k) = 0;
            end
        end
        
         % if 1 need to get at one reproduce and mature to survice 
        if y_initial(i,k) == 1
            count = 0;
            count2 = 0;
            
            for p = (i-1) : (i+1)
                for q = (k-1) : (k+1)
                    %hard reset boundary condition to periodic >_<
                    if p == 0
                       p = n;
                    end
                    
                    if q == 0
                        q = n;
                    end
                    
                    if p == n + 1
                        p = 1;
                    end
                    
                    if q == n + 1
                        q = 1;
                    end
                
                    
                    if y_initial(p,q) == 2
                        count = count + 1;
                    end
                    if y_initial(p,q) == 3
                        count2 = count2 +1;
                    end
                end
            end
            
            if count >=1 && count2 >= 1
                y(i,k) = 2;
            else
                y(i,k) = 1;
            end
        end
                 % if 2 need to reproduce 
        if y_initial(i,k) == 2
            if rand < 0.5
                y(i,k) = 3;
            else
                y(i,k) = 2;
            end
           
        end
                  
        
    end
end
end
