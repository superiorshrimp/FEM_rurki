function val = e_prim(x, i, h) %wartość pochodnej e_i dla x
    if x > (i-1)*h & x <= i*h
        val = 1/h;
    elseif x > i*h & x < (i+1)*h
        val = - 1/h;
    else
        val = 0;
    end
end

