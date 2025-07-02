function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = RBC_desde_cero.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 22
    T = [T; NaN(22 - size(T, 1), 1)];
end
T(22) = getPowerDeriv(y(4),params(2),2);
end
