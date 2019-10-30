%Exercitiul 5

%a)
figure(1)
%Rezolutie 1ms
F = 50;
t = 0:0.001:0.2;
s = 2*sin(2*pi*F*t);
subplot(3,1,1), plot(t,s),xlabel('Timp [s]'),grid

%Rezolutie 10ms
F = 50;
t = 0:0.01:0.2;
s = 2*sin(2*pi*F*t);
subplot(3,1,2), plot(t,s),xlabel('Timp [s]'),grid

%Rezolutie 0.2ms
F = 50;
t = 0:0.0002:0.2;
s = 2*sin(2*pi*F*t);
subplot(3,1,3), plot(t,s),xlabel('Timp [s]'),grid

%Concluzie: Daca pasul este mai mic, se obtin mai multe valori discrete,
%iar sinusul poate fi mai bine afisat

%b) 
% La punctul a) am modificat doar pasul de variatie al variabilei t. Prin
% urmare, perioada semnalului nu se modifica. Intrucat la rezolutia de
% 10ms, afisarea functiei sinus nu este una foarte buna, determinam
% perioada semnalului din celelalte doua reprezentari ca fiind diferenta
% dintre doua minime sau maxime consecutive.
T = 0.046-0.026

%c)
figure(2)
Fs = 50; %frecventa semnalului sinusoidal
Fc = 20; %frecventa semnalului cosinusoidal
t = 0:0.001:0.2;
x1 = 2*sin(2*pi*Fs*t);
x2 = 2*cos(2*pi*Fc*t); %semnalul cosinusoidal generat
plot(t,x1)
hold on %permite afisarea semnalului cosinusoidal fara a sterge semnalul sinusoidal
plot(t,x2,'-r') %pentru reprezentarea cu rosu se foloseste '-r'
xlabel('Timp [s]') 
ylabel('Amplitudine')
grid
