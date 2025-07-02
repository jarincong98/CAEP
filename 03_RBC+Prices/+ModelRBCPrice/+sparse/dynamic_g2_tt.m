function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = ModelRBCPrice.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 37
    T = [T; NaN(37 - size(T, 1), 1)];
end
T(36) = (-((-y(20))*(y(4)+y(4))))/(y(4)*y(4)*y(4)*y(4));
T(37) = getPowerDeriv(y(34)/y(18),(-params(1)),2);
end
