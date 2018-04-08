function y = transit1(n, I)
%ready 0, fire 1, rest 2

y_initial = I; %initial our transit value
y = zeros(n); %create matrix for next state with all zeros ready to write 

for i = 1:n
    for k = 1:n
        
        %if fire go to rest
        if y_initial(i,k) == 1
            y(i,k) = 0;
        end
        

        
        % if ready go to #$%^&^%$#@#$%^&*^%$#
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
                
                    
                    if y_initial(p,q) == 1
                        count = count + 1;
                    end
                end
            end
            
            if count == 1 || count == 3
                y(i,k) = 1;
            end
        end
    end
end
end

            
            


