%Exercitiul 6

F0 = 2000; Fs = 12000;
%T = 1/F0;
N = 10*12; %N=10ms*12kHz-numarul de esantioane
n = 0:N-1;
a = round(rand(1,20)) %generam un vector de 20 de elemente deoarece perioada de bit este 0.5 si 10ms/0.5ms=20 
%cu ajutorul functiei 'round' am pus pe cele 20 de pozitii ale vectorului a
%cate o valoare aleatoare de 0 sau 1

for i = 1:N
    s(i) = a(floor(i/Fs/F0+1)); %formam semnalul
end

%a)
figure('Color','cyan') %aici afisam semnalul continuu in timp absolut
pas=1/12;
t=0:pas:10-pas;
%t = 0:1/Fs:T-1/Fs;
plot(t,s), grid
%b)
figure('Color','magenta') %aici afisam semnalul  discret 
stem(n,s),grid