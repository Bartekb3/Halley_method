function [value] = w2n_firstderivatve(a,x)
% Funkcja liczy wartość pierwszej pochodnej wielomianu w2n o wspolczynnikach 
% a0,a1,...,an dla podanego x, wykorzystując zależność rekurencyjną
% pomiędzy wielomianami Czebyszewa
%
% INPUT
% x jest argumentem dla którego liczymy wartość
% a to wektor a0,a1,...,an
% OUTPUT
% value - wartość pierwszej pochodnej 
% wielomianu w punkcie xchebyshevs = chebyshev_values(length(a),x);

chebyshevs = chebyshev_values(length(a),x);
chebyshevs_derivatives = [0,1];

for i = 3:length(a)
    tmp = 2*chebyshevs(i-1)+2*x*chebyshevs_derivatives(i-1) - chebyshevs_derivatives(i-2);
    chebyshevs_derivatives = [chebyshevs_derivatives,tmp];
end

value = sum(2.*a.*chebyshevs_derivatives.*chebyshevs);

end