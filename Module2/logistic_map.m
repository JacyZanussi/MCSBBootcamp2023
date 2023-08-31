%% Rabbit Population Discrete logistic Growth


Nmax = 1000;
N_cyclen = 100
K = 0.6;
M = 1000;
R = 3*(1:M)/M;

figure(1);
hold on
for r=R
    %%reset vector of values
    x = zeros(Nmax);
    x(1) = 0.2;
    %%generate solution
    for n=1:(N-1)
        x(n + 1) = x(n) + r*(1-(x(n)/K))*x(n);
    end

%% We need our x and y values to match, even if we're plotting over a constant value.
v = r*ones(1,N_cyclen);
scatter(v,x((N-N_cyclen + 1):N),1,"black");
end
