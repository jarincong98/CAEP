function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = Model_SOECESPricesMP.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 29
    T = [T; NaN(29 - size(T, 1), 1)];
end
T(21) = getPowerDeriv(y(9)*y(3)/params(4),1/params(5),1);
T(22) = getPowerDeriv(y(6)*y(36)/y(4),params(12),1);
T(23) = getPowerDeriv(y(8)/y(4),params(8),1);
T(24) = getPowerDeriv(y(11)/y(4),params(9),1);
T(25) = getPowerDeriv(T(15),1/(1-params(9)),1);
T(26) = getPowerDeriv(y(8)/y(5),params(8),1);
T(27) = getPowerDeriv(y(11)/y(5),params(9),1);
T(28) = getPowerDeriv(y(39),params(8)-1,1);
T(29) = getPowerDeriv(y(40),params(8)-1,1);
end
