function [B,S,R] = runmeme(n,total_time_step,p,q)

%n = 1000;
%p = 0.001;%discover new meme
%q = 0.01; %share a meme

N = zeros(total_time_step,n);


start = randperm(1000,2); %generate the person who (bored, share)

N(1,start(1)) = 2;%bored 2
N(1,start(2)) = 1; %sharing


for t = 1:1:total_time_step
    
    for i = 1:n
        
        if N(t,i) == 2%if bored stay bored forever
            N(t+1, i) = 2;
            
        end
        
        if N(t,i) == 0 %if rest will discover a new meme
            if rand < p % found a new meme at probability p and be sharer
                N(t+1, i) = 1;
            else 
                N(t+1, i) = 0;
            end
        end
        
        if N(t,i) == 1
            if rand < q
                target = randi([1 1000]);
                if N(t,target) == 2
                    N(t+1, i) = 2;
                else 
                    N(t+1, target) = 1;
                    N(t+1, i) = 1;
                end
            else
                N(t+1,i) = 1;
            end
        end
    end
end


for t = 1:1:total_time_step+1
    B(t) = 0;
    S(t) = 0;
    R(t) = 0;
    for i = 1:n
        if N(t,i) == 2
            B(t) = B(t) + 1;
        end
        if N(t,i) == 1
            S(t) = S(t) + 1;
        end
        if N(t,i) == 0
            R(t) = R(t) + 1;
        end
    end
end

end

            
            


