%Exercitiul 3 din tema de casa

%Reprezentam un semnal dreptughiular multinivel, aleator cu rezolutie
%temporara de 2ms pentru nivelurile {-7,-5,-3,-1,1,3,5,7}
nivele = 8; % numarul nivelurilor
durata = 0.25; %[s] durata fiecarui nivel
t = 0:0.002:nivele+1; %timpul de la 0 la 8+1=9s, pentru a avea aceeasi lungime a vectorilor 
%necesari pentru reprezentarea grafica
k = 1; 
for i = 1:length(t) %parcurgem vectorul
    if t(i) <= k*durata %punem conditia(1) daca timpul este mai mic sau egal cu durata fiecarui nivel
        if k <= length(t) %daca conditia(1) este adevarata, punem conditia(2) daca k este mai mic
                          %sau egal cu perioada
            s(i) = t(k); %daca conditia(2) este adevarata, semnalul va valoarea timpului
                else
            s(i) = 0; %in caz contrar, ia valoarea 0
        end
        
    else
        
        if k <= length(t) %conditia(1) este falsa, punem din nou conditia(2)
            s(i) = t(k);  %daca conditia(2) este adevarata, semnalul va valoarea timpului, altfel nu ia nicio valoare
        end
    k=k+1;
    end
end
s = s*200-7; %necesar pentru ca semnalul sa atinga nivelele cerute
plot(t,s)
axis([0 9 -7 7]) 
title('Semnal dreptunghiular multinivel,aleator') %titlul graficului
grid minor %afisam linii de grila
%Asemanator pentru celelalte cerinte