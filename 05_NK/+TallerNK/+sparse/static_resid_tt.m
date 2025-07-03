function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 2
    T = [T; NaN(2 - size(T, 1), 1)];
end
T(1) = (1-params(4))/(1-params(4)+params(4)*params(5))*(1-params(6))*(1-params(6)*params(1))/params(6)*(params(2)+(params(4)+params(3))/(1-params(4)));
T(2) = (-(1-params(15)))/(params(2)*(1+params(15)));
end
