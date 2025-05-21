clc;


A = [6 3 4 
     3 6 5
     4 5 10
     ];
b = [1;2;3];

if(det(A) ~=  0)
    
    L = chol(A,"lower");
    disp(L);
    disp(L*L');
    
    y = L\b;
    x = L'\y;

    disp(A*x);

end
