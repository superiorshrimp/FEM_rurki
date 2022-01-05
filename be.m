function val = be(u, v, from, to, h) %wartość B dla u i v od from do to
    val = integrate(u, v, from, to, h) - e(0, u, h) * e(0, v, h);
end