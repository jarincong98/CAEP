function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 14
    T = [T; NaN(14 - size(T, 1), 1)];
end
T(1) = params(11)/2;
T(2) = y(20)*y(22)/y(32);
T(3) = params(5)*y(19)^params(6);
T(4) = params(2)*y(36)*y(38)/y(48);
T(5) = (y(24)/params(4))^params(4);
T(6) = params(9)/2;
T(7) = y(20)/y(4)-1;
T(8) = params(2)*params(9)*(y(34)/y(18))^(-params(1));
T(9) = y(36)/y(20)-1;
T(10) = (y(36)/y(20))^2;
T(11) = params(8)^(1-params(7));
T(12) = y(14)^params(7)*T(11);
T(13) = y(16)^params(12);
T(14) = (1/(1-params(4)))^(1-params(4));
end
