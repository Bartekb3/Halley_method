function [xprzyb,iter] = Halley2(a,x,przyb)
% Funkcja wykonuje iteracje Metody Halley'a na wielomianie
% w2n o wsp a do momentu aż |xk -xk+1|<przyb lub liczba iteracji >1000
%
% INPUT
% x - argument początkowy
% a wektor współczynników wielomianu w2n
% przyb - warunek stopu
%
% OUTPUT
% xprzyb - wektor xsów w którym pierwszy element to x po pierwszej
% iteracji a ostatni to wartość x po reps iteracjach


xpop=inf;
iter = 0;
while abs(x-xpop)>przyb
    xpop = x;
    val =w2n_value(a,x);
    valder =w2n_firstderivatve(a,x);
    valderder = w2n_secondderivative(a,x);
    x = x - (2*val*valder)/(2*(valder^2) - val*valderder); 
    iter = iter+1;
    if iter >1000
        break
    end
end
xprzyb = x;


end