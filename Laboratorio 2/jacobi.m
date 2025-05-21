clc;

A = [ 10 -1 2 0
     -1 11 -1 3
      2 -1 10 -1
      0 3 -1 8
    ];

M = diag(diag(A));

L = tril(A,-1);   
U = triu(A, 1);
N = -(L+U);

disp(M-N);

T = inv(M)*N;

disp(max(abs(eig(T))));
