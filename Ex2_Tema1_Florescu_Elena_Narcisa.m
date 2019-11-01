%Exercitiul 2 din tema de casa

%Semnal triunghiular cu rezolutie temporara de 2ms
T=5;
F=1/T;
t = 0:0.002:5; % timpul de la 0 la 5s cu rezolutie temporara de 2ms
s = sawtooth (2*pi*F*t,1/2); %generam un semnal triunghiular de perioada t
% setam 1/2 pentru a genera un semnal triunghiular standard
s = s*1.5 -0.5;
subplot(3,1,1), plot(t,s)
axis([0 5 -2.5 2.5])
title('Semnal triunghiular periodic') %titlul graficului
gtext('Rezolutie temporara de 2ms')
xlabel('Timp [s]') %eticheta de pe abscisa este 'Timp [s]'
ylabel('Amplitudine') %eticheta de pe ordonata este 'Amplitudine'
grid %afisam linii de grila

%Semnal triunghiular cu rezolutie temporara de 20ms
t = 0:0.02:5; % timpul de la 0 la 5s cu rezolutie temporara de 20ms
s = sawtooth (2*pi*F*T*t,1/2); %generam un semnal triunghiular de perioada t
% setam 1/2 pentru a genera un semnal triunghiular standard
s = s*1.5 -0.5;
subplot(3,1,2), plot(t,s)
axis([0 5 -2.5 2.5])
title('Semnal triunghiular periodic') %titlul graficului
gtext('Rezolutie temporara de 20ms')
xlabel('Timp [s]') %eticheta de pe abscisa este 'Timp [s]'
ylabel('Amplitudine') %eticheta de pe ordonata este 'Amplitudine'
grid %afisam linii de grila

%Semnal triunghiular cu rezolutie temporara de 200ms
t = 0:0.2:100; % timpul de la 0 la 5s cu rezolutie temporara de 200ms
s = sawtooth (2*pi*F*t,1/2);%generam un semnal triunghiular de perioada t
% setam 1/2 pentru a genera un semnal triunghiular standard
s = s*1.5 -0.5;
subplot(3,1,3), plot(t,s)
axis([0 5 -2.5 2.5])
title('Semnal triunghiular periodic') %titlul graficului
gtext('Rezolutie temporara de 200ms')
xlabel('Timp [s]') %eticheta de pe abscisa este 'Timp [s]'
ylabel('Amplitudine') %eticheta de pe ordonata este 'Amplitudine'
grid %afisam linii de grila



