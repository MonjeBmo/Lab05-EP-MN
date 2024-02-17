clc;
fprintf("\n\nMETODO DE PUNTO FIJO\n\n");

x0 = input("Escribir el valor inicial -> ");

iter_max = input("Escribir el numero maximo de iteraciones -> ");
es = input("Es esperado -> ");

fprintf("------------------------------------------\n");
fprintf("i\t|\tXi\t\t|\tEa\n");
fprintf("------------------------------------------\n");

function y = f(x)
    y = sqrt(log((5 * x) / 2));
end

function puntoFijo(x0, iter_max, es)
    iter = 0;
    ea = 100;

    while ea > es && iter < iter_max
        x1 = f(x0);

        if x1 ~= 0
            ea = abs((x1 - x0) / x1) * 100;
        end

        fprintf("%d\t|\t%.6f\t|\t%.2f\n", iter, x1, ea);
        x0 = x1;
        iter = iter + 1;
    end

    fprintf("LA RAIZ APORX: %.6f\n", x1);

end

puntoFijo(x0, iter_max, es);
