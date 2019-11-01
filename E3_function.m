function [ave, vector, matrix] = E3_function(x) %definim functia
    ave = mean(real(x)) %determinam media aritmetica
    vector = power(x,2) %functia power genereaza un vector cu valorile initiale ale lui x ridicate la patrat
    matrix = x'*x %determinam matricea prin inmultirea vectorului x cu transpusul sau
end

