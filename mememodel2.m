function [B,S,R] = mememodel2(n,total_time_step,p,q)

B(1) = 1;
S(1) = 1;
R(1) = n- B(1) - S(1);

for t = 1:1:total_time_step
    B(t+1) = B(t) + S(t)*q*B(t)/n - B(t)*q*R(t)/n;
    S(t+1) = S(t) + p*R(t) - S(t)*q*B(t)/n + S(t)*q*R(t)/n;
    R(t+1) = R(t) - R(t)*p - S(t)*q*R(t)/n + B(t)*q*R(t)/n;
end

end