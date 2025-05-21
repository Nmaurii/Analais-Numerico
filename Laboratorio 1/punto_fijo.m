clc;
syms x;

f = @(x) (exp(x+2)-3);
g = matlabFunction(diff(f,x))
y = @(x) (x-f(x)/g(x));

x0 = 0;
tolerancia = 10^(-10);
iteraciones = 10;
ref = inf;

i=0;

while(i<iteraciones)

    if(ref < tolerancia)
        disp(num2str(x1,8));
        break;
    
    end
    x1 = y(x0);
    ref = abs(x1-x0);
    disp(ref);
    x0=x1;
    i=i+1;

end
