%Exercitiul 1 din tema de casa

%Semnal dreptunghiular cu rezolutie temporara de 2ms
n=25; %factor de umplere 25%
T=2; %perioada semnalului
t = 0:0.002:2; %timpul de la 0 la 2s cu rezolutie temporara de 2ms
s = square(t,n); %generam un semnal dreptunghiular avand perioada t si factorul de umplere n
for i = 1:length(s) %este nevoie sa parcurgem acest for pentru a stabili nivele de maxim si minim corespunzatoare
    if s(i) > 0
        s(i) = s(i)/2;
    end
end
subplot(3,1,1), plot(t,s)
axis([0 2 -1.5 1.5]) %pe abscisa se va vizualiza intre 0 si 2, iar pe ordonata intre -1.5 si 1.5
title('Semnal dreptunghiular periodic') %titlul graficului
gtext('Rezolutie temporara de 2ms')
xlabel('Timp [s]') %eticheta de pe abscisa este 'Timp [s]'
ylabel('Amplitudine') %eticheta de pe ordonata este 'Amplitudine'
grid %afisam linii de grila

%Semnal dreptunghiular cu rezolutie temporara de 20ms
t = 0:0.02:2; %timpul de la 0 la 2s cu rezolutie temporara de 20ms
s = square(t,n); %generam un semnal dreptunghiular avand perioada t si factorul de umplere n
for i = 1:length(s)
    if s(i) > 0
        s(i) = s(i)/2;
    end
end
subplot(3,1,2), plot(t,s)
axis([0 2 -1.5 1.5])
title('Semnal dreptunghiular periodic') %titlul graficului
gtext('Rezolutie temporara de 20ms')
xlabel('Timp [s]') %eticheta de pe abscisa este 'Timp [s]'
ylabel('Amplitudine') %eticheta de pe ordonata este 'Amplitudine'
grid %afisam linii de grila

%Semnal dreptunghiular cu rezolutie temporara de 200ms
t = 0:0.2:2; %timpul de la 0 la 2s cu rezolutie temporara de 200ms
s = square(t,n); %generam un semnal dreptunghiular avand perioada t si factorul de umplere n
for i = 1:length(s)
    if s(i) > 0
        s(i) = s(i)/2;
    end
end
subplot(3,1,3), plot(t,s)
axis([0 2 -1.5 1.5])
title('Semnal dreptunghiular periodic') %titlul graficului
gtext('Rezolutie temporara de 200ms')
xlabel('Timp [s]') %eticheta de pe abscisa este 'Timp [s]'
ylabel('Amplitudine') %eticheta de pe ordonata este 'Amplitudine'
grid %afisam linii de grila