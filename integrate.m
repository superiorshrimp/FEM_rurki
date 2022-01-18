function val = integrate(u, v, from, to, h) %całka od from do to dla u i v
    %wyznaczana za pomocą kwadratury gaussa (wzór z linka z treści zadania do wikipedii i http://albert.kubzdela.pracownik.put.poznan.pl/p4-10.pdf)
    val = ( multiply_es( (to-from)/(2*sqrt(3)) + (to+from)/2, u, v, h) + multiply_es( (from-to)/(2*sqrt(3)) + (to+from)/2, u, v, h) ) * (to-from)/2;
end