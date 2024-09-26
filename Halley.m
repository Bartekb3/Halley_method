function [xprzyb] = Halley(a,x,reps)
% Funkcja wykonuje "reps" iteracji Metody Halley'a na wielomianie
% w2n o wsp a
%
% INPUT
% x - argument początkowy
% a wektor współczynników wielomianu w2n
%
% OUTPUT
% xprzyb - wektor xsów w którym pierwszy element to x po pierwszej
% iteracji a ostatni to wartość x po reps iteracjach

xprzyb=[];
for i = 1:reps
    val =w2n_value(a,x);
    valder =w2n_firstderivatve(a,x);
    valderder = w2n_secondderivative(a,x);
    x = x - (2*val*valder)/(2*(valder^2) - val*valderder); 
    xprzyb = [xprzyb,x];
end
end