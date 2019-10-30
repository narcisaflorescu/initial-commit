%Exercitiul 2

a = randn(1,5); %generam un vector cu elemente aleatoare cu distributie normala de lungime 3
for i = a(1:5) %parcurgem vectorul
    if i<0 %verificam daca elementul curent este negativ
        fprintf('%g',i); %daca se verifica conditia, afisam elementul de pe pozitia i din vector
        fprintf('\n'); %pentru a afisa elementele negative unele sub altele
    end
end