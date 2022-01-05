function val = e(x, i, h) %wartość e_i dla x
    if x <= (i-1)*h | x >= (i+1)*h
        val = 0;
    else
        val = 1 - abs( (x - i * h) / h);
    end
end