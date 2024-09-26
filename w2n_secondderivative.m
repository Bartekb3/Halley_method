function [value] = w2n_secondderivative(a,x)
% Funkcja liczy wartość drugiej pochodnej wielomianu w2n o wspolczynnikach 
% a0,a1,...,an dla podanego x, wykorzystując zależność rekurencyjną
% pomiędzy wielomianami Czebyszewa
%
% INPUT
% x jest argumentem dla którego liczymy wartość
% a to wektor a0,a1,...,an
% OUTPUT
% value - wartość drugiej pochodnej 
% wielomianu w punkcie xchebyshevs = chebyshev_values(length(a),x);

chebyshevs = chebyshev_values(length(a),x);
chebyshevs_derivatives = [0,1];
for i = 3:length(a)
    tmp = 2*chebyshevs(i-1)+2*x*chebyshevs_derivatives(i-1) - chebyshevs_derivatives(i-2);
    chebyshevs_derivatives = [chebyshevs_derivatives,tmp];
end

chebyshevs_derivatives2 = [0,0];

for i = 3:length(a)
    tmp = 4*chebyshevs_derivatives(i-1)+2*x*chebyshevs_derivatives2(i-1)-chebyshevs_derivatives2(i-2);
    chebyshevs_derivatives2 = [chebyshevs_derivatives2,tmp];
end



value = sum(2*(chebyshevs_derivatives.^2 + chebyshevs.*chebyshevs_derivatives2));


end