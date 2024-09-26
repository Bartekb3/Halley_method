function [y] = w2n_vector(a,x)
% Funkcja oblicza wektorowo wartości w2n dla wektora argumentów x
% 
% INPUT
% a -  a to wektor a0,a1,...,an
% x - wektor argumentów
% OUTPUT
% y - wektor wartosci w2n


y=[];
for i =x
    y=[y,w2n_value(a,i)];
end

end