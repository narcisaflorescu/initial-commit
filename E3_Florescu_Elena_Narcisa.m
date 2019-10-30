%Exercitiul 3
a = uint8([1;2;3;4]); %vectorul care da partea reala
b = uint8([5;0;6;7]); %vectorul care da partea imaginara
x = complex(a,b); %generam vectorul cu valori complexe cu ajutorul functiei complex care 
%primeste ca parametrii vectorii a si b
[ave, vector, matrix] = E3_Florescu_Elena_Narcisa(x); %apelam functia 