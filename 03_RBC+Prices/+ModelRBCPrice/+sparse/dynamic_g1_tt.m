function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = ModelRBCPrice.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 35
    T = [T; NaN(35 - size(T, 1), 1)];
end
T(15) = (-y(34))/(y(18)*y(18));
T(16) = getPowerDeriv(y(34)/y(18),(-params(1)),1);
T(17) = params(2)*params(9)*T(16)*1/y(18);
T(18) = T(9)*T(17);
T(19) = params(5)*getPowerDeriv(y(19),params(6),1);
T(20) = (-y(20))/(y(4)*y(4));
T(21) = y(22)/y(32);
T(22) = 1/y(4);
T(23) = (-y(36))/(y(20)*y(20));
T(24) = 2*y(36)/y(20);
T(25) = T(23)*T(24);
T(26) = params(2)*y(38)/y(48);
T(27) = 1/y(20);
T(28) = T(24)*T(27);
T(29) = y(20)/y(32);
T(30) = params(2)*y(36)/y(48);
T(31) = 1/params(4)*getPowerDeriv(y(24)/params(4),params(4),1);
T(32) = T(11)*getPowerDeriv(y(14),params(7),1);
T(33) = getPowerDeriv(y(16),params(12),1);
T(34) = (-(y(20)*y(22)))/(y(32)*y(32));
T(35) = (-(params(2)*y(36)*y(38)))/(y(48)*y(48));
end
