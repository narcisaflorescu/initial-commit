%Exercitiul 4 din tema de casa

%Semnal sinusoidal cu rezolutie temporara de 2ms
A = 0.8; % amplitudinea semnalului
T = 3; %perioada semnalului
F = 1 / T; %frecventa semnalului definita ca inversul perioadei
t = 0:0.002:3; % timpul de la 0 la 3 secunde cu rezolutie temporara de 2ms
s = A*sin(2*pi*F*t); %generam un semnal sinusoidal de perioada t si amplitudine A
for i = 1:length(s) %pentru a avea semnal sinusoidal redresat mono alternanta
    if s(i)<0
        s(i)=0;
    end
end
subplot(3,1,1), plot(t,s)
axis([0 3 0 1])
title('Semnal sinusoidal redresat mono alternanta') %titlul graficului
gtext('Rezolutie temporara de 2ms')
xlabel('Timp [s]') %eticheta de pe abscisa este 'Timp [s]'
ylabel('Amplitudine') %eticheta de pe ordonata este 'Amplitudine'
grid %afisam linii de grila

%Semnal sinusoidal cu rezolutie temporara de 20ms
t = 0:0.02:3; % timpul de la 0 la 3 secunde cu rezolutie temporara de 20ms
s = A*sin(2*pi*F*t); %generam un semnal sinusoidal de perioada t si amplitudine A
for i = 1:length(s) %pentru a avea semnal sinusoidal redresat mono alternanta
    if s(i)<0
        s(i)=0;
    end
end
subplot(3,1,2), plot(t,s)
axis([0 3 0 1])
title('Semnal sinusoidal redresat mono alternanta') %titlul graficului
gtext('Rezolutie temporara de 20ms')
xlabel('Timp [s]') %eticheta de pe abscisa este 'Timp [s]'
ylabel('Amplitudine') %eticheta de pe ordonata este 'Amplitudine'
grid %afisam linii de grila

%Semnal sinusoidal cu rezolutie temporara de 200ms
t = 0:0.2:3; % timpul de la 0 la 3 secunde cu rezolutie temporara de 200ms
s = A*sin(2*pi*F*t); %generam un semnal sinusoidal de perioada t si amplitudine A
for i = 1:length(s) %pentru a avea semnal sinusoidal redresat mono alternanta
    if s(i)<0
        s(i)=0;
    end
end
subplot(3,1,3), plot(t,s)
axis([0 3 0 1])
title('Semnal sinusoidal redresat mono alternanta') %titlul graficului
gtext('Rezolutie temporara de 200ms')
xlabel('Timp [s]') %eticheta de pe abscisa este 'Timp [s]'
ylabel('Amplitudine') %eticheta de pe ordonata este 'Amplitudine'
grid %afisam linii de grila