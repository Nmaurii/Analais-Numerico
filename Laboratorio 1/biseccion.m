clc;
%definimos la funcion
f = @(x)exp(x+2)-3;

tolerancia = 10^(-6);
intervalo = [-2,2];

%cantidad = int8(log((intervalo(2)-intervalo(1))/(tolerancia))/log(2))+1 ;
cantidad  = 40;

if f(intervalo(2)) * f(intervalo(1)) < 0

    disp("hay solucion en  el intervalo.")
    mejor = 0
    for iteracion = 1:cantidad
        b = (intervalo(2)+intervalo(1))/2;
        if(f(b) > 0)
            intervalo(2) = b;
        elseif (f(b)<0)
            intervalo(1) = b;
        else
            disp(b," es solucion");
        end

        disp(intervalo);
    end

else

    disp("No hay solucion en el intervalo.")
end

disp(["Mejor resultado",min(intervalo)])
disp(["Iteracion",cantidad])
