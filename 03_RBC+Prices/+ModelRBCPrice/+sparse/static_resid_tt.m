function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 4
    T = [T; NaN(4 - size(T, 1), 1)];
end
T(1) = params(5)*y(3)^params(6);
T(2) = (y(8)/params(4))^params(4);
T(3) = (1/(1-params(4)))^(1-params(4));
T(4) = params(8)^(1-params(7));
end
