function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 11
    T = [T; NaN(11 - size(T, 1), 1)];
end
T(1) = params(1)/(1-params(1));
T(2) = y(4)^params(2);
T(3) = y(10)^(-params(2));
T(4) = (1-params(2))*exp(y(3))*T(2)*T(3);
T(5) = params(3)/(1+params(4))*1/y(17);
T(6) = params(2)*exp(y(11))*y(12)^(params(2)-1);
T(7) = y(18)^(1-params(2));
T(8) = T(6)*T(7);
T(9) = 1+T(8)-params(5);
T(10) = y(10)^(1-params(2));
T(11) = exp(y(3))*T(2)*T(10);
end
