function [roots] = spr(a)
% Funkcja wyznaczająca miejsca zerowe, metodami wbudowanymi
%
% INPUT
% a - wektor wsp wielomianu w2n
%
% OUTPUT
% roots - dokładne miejsca zerowe


syms x;
T=0;
for i = 1:length(a)
    T = T + (chebyshevT(i-1,x)^2)*a(i);
end

roots = unique(double(solve(T==0)));

end