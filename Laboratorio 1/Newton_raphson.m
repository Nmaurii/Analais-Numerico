syms x
f = @(x) -3+exp(x+2);
x0 = 0;
tol = 10^-10;
step = inf;
maxIter = 10;
df = diff(f, x);
f_prima = matlabFunction(df);
g = @(x) x-f(x)/f_prima(x);
i=0;

while(i<maxIter)
    if step<tol;
       disp(['Mejor solucion por alcanzar nivel de tolerancia encontrada en: ', num2str(x1,8)]);
       disp(['Utilizando: ', num2str(i), ' iteraciones'])
       break;
    end
        x1 = g(x0);
        step = abs(x1-x0);
        disp(step);
        x0=x1;
        i=i+1;
    end
if i==maxIter
    disp(['Mejor solucion por numero maximo de iteraciones: ', vpa(x0)]);
end
