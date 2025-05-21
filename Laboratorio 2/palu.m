clc;

A = [
    2 4 6
    4 7 9
    6 9 12
    ];

b = [5;-2;7];

[L,U,P] = lu(A);

Pb = P*b;

n = length(b);

y = zeros(n,1);
for i = 1:n
    y(i) = Pb(i) - L(i,1:i-1) * y(1:i-1);
end

x = zeros(n,1);

for i = n:-1:1
    x(i) = (y(i) - U(i,i+1:n) * x(i+1:n))/U(i,i);
end

disp(A*x);
