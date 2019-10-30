function [ave, vector, matrix] = E3_function(x) %definim functia
    suma=0; %initializam variabila suma cu 0 pentru a aduna la ea partile reale ale elementelor
    for i = 1:length(x) %parcurgem vectorul cu valori complexe
        suma = suma + real(x(i)); %determinam suma partilor reale
    end
    ave = suma/length(x); %determinam media aritmetica
    vector = power(x,2); %functia power genereaza un vector cu valorile initiale ale lui x ridicate la patrat
    matrix = x'*x; %determinam matricea prin inmultirea vectorului x xu transpusul sau
end

