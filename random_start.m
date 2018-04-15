function I = random_start(n, p)
I = zeros(n);
for i = 1:n
        for j = 1:n
            initial_state = rand;
            if initial_state < p
                I(i,j) = 1;
            end
        end
end
end