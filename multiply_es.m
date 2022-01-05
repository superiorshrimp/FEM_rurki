function val = multiply_es(x, u, v, h) %iloczyn e'_u i e'_v dla x
    val = e_prim(x, u, h) * e_prim(x, v, h);
end