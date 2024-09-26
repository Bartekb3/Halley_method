function [value] = w2n_value(a,x)
% Funkcja liczy wartość wielomianu w2n o wspolczynnikach 
% a0,a1,...,an dla podanego x,, wykorzystując zależność rekurencyjną
% pomiędzy wielomianami Czebyszewa
%
% INPUT
% x jest argumentem dla którego liczymy wartość
% a to wektor a0,a1,...,an
% OUTPUT
% value - wartość wielomianu w punkcie x

chebyshevs = chebyshev_values(length(a),x);
chebyshevs = chebyshevs .^2;
value = chebyshevs*a';

end