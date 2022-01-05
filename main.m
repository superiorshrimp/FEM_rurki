function main(n)
    h=2/n; %odległość między kolejnymi punktami ze wzoru h = (b-a)/n
    left = zeros(n,n); %macierz B lewej strony
    right = zeros(n,1); %macierz L prawej strony
    %poniżej 4 wartości macierzy lewej strony (po 2 z 1. i ostatniego rzędu)
    left(1,1) = be(0,0,0,h,h);
    left(1,2) = be(0,1,0,h,h);
    left(n,n-1) = be(n-2,n-1,(n-2)*h,2-h,h);
    left(n,n) = be(n-1,n-1,(n-2)*h,2,h);
    for k = 2 : n - 1 %wypełnianie reszty macierzy lewej strony
        left(k,k-1) = be(k-2,k-1,(k-2)*h,(k-1)*h,h);
        left(k,k) = be(k-1,k-1,(k-2)*h,k*h,h);
        left(k,k+1) = be(k-1,k,(k-1)*h,k*h,h);
    end

    for k = 1 : n %wypełnianie reszty macierzy prawej strony
        right(k,1) = l( e(0,k-1,h) );
    end

    result = left \ right; %wynik układu równań

    p = 3; %stopień wielomianu przybliżającego rozwiązanie
    polynomial = polyfit([0:h:2-h],result,p); %znaleziony wielomian
    precision = 10000; %dokładność wyświetlanego wielomianu
    xs = [0:2/precision:2]; %wybrane punkty na osi x
    ys = zeros(1,precision+1); %wybrane punkty na osi y
    for i = 1 : precision+1 %dla każdego punktu na osi x z xs
        for j = 1 : p+1 %dla każdego współczynnika wielomianu
            ys(i) = ys(i) + polynomial(j) * (2*(i-1)/precision)^(p+1-j); %wartość wielomianu w danym punkcie z xs
        end
    end
    
    %poniżej rysowanie grafu
    plot(xs, ys);
    hold on
    plot(xs, ys, 'rx') ;
    hold off
end