function [] = tabela(a,x)
% Funkcja prezentująca w postaci tabelarycznej, x0, liczbę iteracji
% potrzebynch do osiągnieącia rządanego miejsca zerowego, przyblizenie,
% prawdziwe miejsce zerowe oraz błąd wzgl i bzwzgl
%
% INPUT 
% a - wektor współczynników wielomianu w2n
% x - wektor x startowych

columnTitles = ["x0","liczba iteracji","Przyblizenie końcowe ","Faktyczne miejsce zerowe ","Błąd bezwzględny","Błąd względny"];

roots = spr(a);
results = [];

for i = x
    [result,iter] = Halley2(a,i,10^-10);
    err = abs(roots - result);
    d =roots(err==min(err));
    result = [iter,   result,   d(1) ,   min(err),    min(err)/abs(roots(err == min(err)))];
    results = [results;result];
end

results = [x',results];
figure;
figureSize = [200, 200, 900, 300];
set(gcf, 'Position', figureSize);
t=uitable('Data', results, 'ColumnName', columnTitles, 'Units', 'normalized', 'Position', [0.1, 0.1, 0.8, 0.8]);
t.ColumnFormat = {'short','short','long','long','short','short'};


end