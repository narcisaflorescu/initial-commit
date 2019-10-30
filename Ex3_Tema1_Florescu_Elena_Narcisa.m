%Exercitiul 3 din tema de casa

N = 4; % numarul nivelurilor
ts = 0.001;
t = 0:ts:N;
j = 1;
for i = 1:length(t)
    if t(i) <= j*0.25
        if j <= length(t)
            s(i) = t(j);
                else
            s(i) = 0;
        end
        
    else
        
        if j <= length(t)
            s(i) = t(j);
        end
    j=j+1;
    end
end
axis([0 20 -5 5])
plot(t,s)

title('Semnal dreptunghiular multinivel,aleator') %titlul graficului
grid minor %afisam linii de grila
