clear all;

n = 1000;
p = 0.001;%discover new meme
q = 0.01; %share a meme

N = zeros(n);

start = randi([1 1000],1,2); %generate the person who (bored, share)

N(1,start(1)) = 2;%bored 2
N(1,start(2)) = 1;%share 1

for t = 1:1:1000
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

imagesc(N)
           
           
        
        
        

