syms a b c
f = [a^2 + 2*b^2 - b - 2*c;
     a^2 - 8*b + 10*c;
     a^2 - 7*b*c];
maxIter = 10;
vars = [a;b;c];
DF = jacobian(f, vars);
J = matlabFunction(DF, 'vars', {a,b,c});
F = matlabFunction(f,'vars', {a,b,c});
x0 = [1; 1; 1];
i = 0;
while(i<maxIter)
         x1 = x0 - J(x0(1),x0(2),x0(3)) \ F(x0(1),x0(2),x0(3));
         x0 = x1;
         i = i+1
 end

 disp(x0);
