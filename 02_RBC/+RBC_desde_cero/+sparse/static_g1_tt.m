function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = RBC_desde_cero.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 9
    T = [T; NaN(9 - size(T, 1), 1)];
end
T(8) = getPowerDeriv(y(2),1-params(2),1);
T(9) = getPowerDeriv(y(4),params(2),1);
end
