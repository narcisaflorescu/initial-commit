%Exercitiul 1

%a)
a = 0:0.1:2; % generam vectorul linie a cu elemente incepand de la 0 la 2, cu pasul egal cu 0.1
b = ones(21,1); % generam vectorul coloana b cu toate elementele egale cu 1 care trebuie sa aiba 
% dimensiunea egala cu lungimea (nr de elemente)vectorului a pentru a se putea realiza inmultirea
c = a*b

%b)
d = b*a

%c)
e = a.*b' % prin inmultirea element cu element a celor doi vectori, se obtine un vector linie de aceeasi dimensiune