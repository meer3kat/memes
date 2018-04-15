function y = transit_meme(n,I,p,q)
%rest0, share1, bored2
%n grid set to 40*40
%I matrix
%p probability find a new meme for a rest
%q probability for share and bored to find a person

y_initial = I; %initial our transit value
y = zeros(n); %create matrix for next state with all zeros ready to write 

for i = 1:n
    for k = 1:n

        %%%%%%%%bored
        %if bored will find someone
        if y_initial(i,k) == 2
            if rand < q
                target = randi(8);
                if target == 1
                    loc = [i-1,k-1];
                elseif target == 2
                    loc = [i-1,k];
                elseif target == 3
                    loc = [i-1,k+1];
                elseif target == 4
                    loc = [i,k-1];
                elseif target == 5
                    loc = [i,k+1];
                elseif target == 6
                    loc = [i+1,k-1];
                elseif target == 7
                    loc = [i+1,k];
                else
                    loc = [i+1,k+1];
                end
                
                
                %hard reset boundary
                if loc(1) ==0
                    loc(1) = n;
                end
                if loc(1) == n+1
                    loc(1) = 1;
                end
                if loc(2) ==0
                    loc(2) = n;
                end
                if loc(2) ==n+1
                    loc(2) = 1;
                end
                
                if y_initial(loc(1),loc(2)) == 0
                    y(i,k) = 0;
                else
                    y(i,k) = 2;
                end
            else
                y(i,k) = 2;
            end
        end
              
        
        if y_initial(i,k) == 0%if rest go find new meme
            if rand < p %p to find a meme and become a sharer
                y(i,k) = 1;
            else
                y(i,k) = 0; %stay rest
            end
        end
        
        if y_initial(i,k) == 1%if share go find people to share
            if rand < q
                target = randi(8);
                if target == 1
                    loc = [i-1,k-1];
                elseif target == 2
                    loc = [i-1,k];
                elseif target == 3
                    loc = [i-1,k+1];
                elseif target == 4
                    loc = [i,k-1];
                elseif target == 5
                    loc = [i,k+1];
                elseif target == 6
                    loc = [i+1,k-1];
                elseif target == 7
                    loc = [i+1,k];
                else
                    loc = [i+1,k+1];
                end
                
                
                %hard reset boundary
                if loc(1) ==0
                    loc(1) = n;
                end
                if loc(1) == n+1
                    loc(1) = 1;
                end
                if loc(2) ==0
                    loc(2) = n;
                end
                if loc(2) ==n+1
                    loc(2) = 1;
                end
                
                if y_initial(loc(1),loc(2)) == 0
                    y(loc(1),loc(2)) = 1;
                    y(i,k) = 1;
                elseif y_initial(loc(1),loc(2)) == 2
                    y(i,k) = 2;
                else
                    y(i,k) = 1;
                end
                    

            else
                y(i,k) = 1;
            end
        end
        
    end
end
end