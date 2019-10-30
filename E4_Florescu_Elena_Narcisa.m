%Ecercitiul 4

%a)
figure('Color','cyan') 
z = zeros(1,21) %declaram vectorul z de lungime 21
z(6)=1; %punem pe pozitia a sasea elementul 1
subplot(2,1,1)
n = 0:20; %declaram vectorul n care are aceeasi lungime cu vectorul z
stem(n,z) %comanda propriu-zisa ceruta de afisare a graficului
grid on
grid minor
title('Reprezentarea grafica a lui z in functie de n')
subplot(2,1,2)
m = -5:15; %declaram vectorul m care are aceeasi lungime cu vectorul z
stem(m,z) %comanda propriu-zisa ceruta de afisare a graficului
grid on %afisam linii de grila
grid minor %afisam liniide grila majore si minore
title('Reprezentarea grafica a lui z in functie de m')

%b)
figure('Color','magenta') 
t = abs(10-n); %definim t-ul cu ajutorul functiei abs(modul)
stem(n,t); 
grid on
grid minor
title('Reprezentarea grafica a lui t in functie de n')

%c)
a = -15:25; b = 0:50;
x1 = sin(pi/17*a); %definim x1
x2 = cos(pi/sqrt(23)*b); %definim x2

%cerinta 1
figure('Color','green') 
stem(a,x1), grid %reprezentarea celor doua figuri folosind comanda stem
hold on %permite afisarea fara a sterge graficul existent
stem(b,x2), grid
title('Reprezentarea grafica folosind comanda stem')

%cerinta 2
figure('Color','yellow') 
subplot(2,1,1),plot(a,x1), grid %reprezentarea celor doua figuri folosind comanda plot
title('Reprezentarea grafica folosind comanda plot')
subplot(2,1,2),plot(b,x2), grid
title('Reprezentarea grafica folosind comanda plot')
figure('Color','red') 
subplot(2,1,1),stem(a,x1), grid %reprezentarea celor doua figuri folosind comanda stem
title('Reprezentarea grafica folosind comanda stem')
subplot(2,1,2),stem(b,x2), grid
title('Reprezentarea grafica folosind comanda stem')



