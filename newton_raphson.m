clc;
fprintf("\n\nMETODO DE PUNTO FIJO\n\n");

x0 = input("Escribir el valor inicial -> ");

iter_max = input("Escribir el numero maximo de iteraciones -> ");
es = input("Es esperado -> ");

fprintf("------------------------------------------\n");
fprintf("i\t|\tXi\t\t|\tEa\n");
fprintf("------------------------------------------\n");

function y = f_prima(x)
    y = 4 * x * exp(x^2) - 5;
end

function y = f(x)
    y = (2 * exp(x^2) - 5 * x);
end

function newton_raphson(x0, iter_max, es)
    iter = 0;
    ea = 100;

    while (1)
        x1 = x0 - f(x0) / f_prima(x0);

        if (x1 ~= 0)
            ea = abs((x1 - x0) / x1) * 100;
        end

        fprintf("%d\t|\t%f\t|\t%f\n", iter, x1, ea);

        if (ea < es || iter >= iter_max)
            break;
        end

        iter = iter + 1;
        x0 = x1;
    end

    fprintf("la raiz aproximada es: %f\n", x1);
end

newton_raphson(x0, iter_max, es);
