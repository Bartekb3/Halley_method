function [values] = chebyshev_values(n,x)
% Funkcja oblicza wartość wielomianów czebyszewa od 0 do n-1 stopnia w
% pukcie x
%
% INPUT
% n - liczba wielomianów czebyszewa
% x - argument
%
% OUTPUT
% values  -wektor wartosci wielomianow czebyszewa

values = [1,x];
for i =3:n
    tmp = 2*x*values(i-1) - values(i-2);
    values =  [values,tmp];
end

end