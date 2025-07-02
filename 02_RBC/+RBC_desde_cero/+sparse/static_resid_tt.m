function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 7
    T = [T; NaN(7 - size(T, 1), 1)];
end
T(1) = y(4)^params(2);
T(2) = y(2)^(-params(2));
T(3) = (1-params(2))*exp(y(3))*T(1)*T(2);
T(4) = 1/y(1)*params(3)/(1+params(4));
T(5) = params(2)*exp(y(3))*y(4)^(params(2)-1);
T(6) = y(2)^(1-params(2));
T(7) = 1+T(5)*T(6)-params(5);
end
