%Tema2

clear all
D=11;       % duty cycle
P=40;       % perioada semnal
Ts=0.1;     % perioada de esantionare
t=0:Ts:P-Ts;    % baza de timp 
duty=D/P*100;   % duty cycle ca procent
x= 0.5+0.5*square(2*pi/P*t,duty);  % generare semnal dreptunghiular
%%plot(t,x)

y = fft(x,250);     % spectrul semnaului x facut cu fast fourier transform 250 puncte
figure
subplot(1,2,1)
stem((-124:124)/Ts/124,abs([ flip(y(1:124)) y(1:125)]))  % plot spectru cu normare dupa Fs = 1/Ts
title('Spectrul semnalului prin FFT')
xlabel('Frecventa [Hz] ')
ylabel('|X fft|')

w0 = 2*pi/P;
N=50; 
for k=0:N
    if(k==0)
        fun = @(t) 0.5+0.5*square(2*pi/P*t,duty);   % cazul k=0 -> componenta continua 
        X0 = integral(fun,0,P);             % calcul componenta continua
    else
        fun = @(t) (0.5+0.5*square(2*pi/P*t,duty)).*exp(-j*k*w0*t); 
        X(k) = integral(fun,0,P);           % calcul coeficienti
    end
end
X2 = [X0 X];        % adaugare componenta continua pentru afisarea spectrului dupa coeficienti
subplot(1,2,2)
stem(-N:N,abs([flip(X) X2]))  % dublare spectru , X2 contine Componenta continua (coef nr 0)
title('Spectrul semnalului cu 50 de coeficienti')
xlabel('Coeficienti ')
ylabel('|X(k)|')

x2 = 0 ;
for k=1:N      
    x2=x2 + X(k)*exp(j*k*w0*t);  % reconstruirea semnalului -> suma impactului fiecarui coeficient 
end
x_fin = 1/P*(X0 + 2*x2);        % semnalul final
t2=0:Ts:3*P-Ts;         % afisare a 3 perioade de semnal
figure

plot(t2,[x x x])        % afisare a 3 perioade de semnal
hold on 
plot(t2,[x_fin x_fin x_fin])    % afisare a 3 perioade de semnal

title('Semnalul Dreptunghiular original si reconstituit')
xlabel('Timp [s]')
ylabel('Amplitudine [V]')
legend('Semnal original','Semnal reconstituit')


% Spectrul ideal al unui semnal dreptunghiular este un sinc 
% Se poate observa acest lucru prin calculul atat prin fft cat si prin coeficienti  ( in modul )

% Distorsiunile din semnalul reconstituit se datoreaza numarului finit de coeficienti calculati
% marind numarul de coeficienti putem imbunatati semnalul