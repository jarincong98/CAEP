function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = Model_SOECESPricesMP.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 117
    T = [T; NaN(117 - size(T, 1), 1)];
end
T(103) = getPowerDeriv(y(54)*y(48)/params(4),1/params(5),2);
T(104) = getPowerDeriv(y(92)/y(47),(-params(1)),2);
T(105) = params(3)*(T(41)*(-((-y(92))*(y(47)+y(47))))/(y(47)*y(47)*y(47)*y(47))+T(40)*T(40)*T(104));
T(106) = params(3)*(T(41)*(-1)/(y(47)*y(47))+T(40)*1/y(47)*T(104));
T(107) = params(3)*1/y(47)*1/y(47)*T(104);
T(108) = (-1)/(y(49)*y(49));
T(109) = getPowerDeriv(y(51)*y(81)/y(49),params(12),2);
T(110) = getPowerDeriv(y(53)/y(49),params(8),2);
T(111) = getPowerDeriv(y(84),params(8)-1,2);
T(112) = getPowerDeriv(y(53)/y(50),params(8),2);
T(113) = (-1)/(y(50)*y(50));
T(114) = getPowerDeriv(y(56)/y(49),params(9),2);
T(115) = getPowerDeriv(y(85),params(8)-1,2);
T(116) = getPowerDeriv(y(56)/y(50),params(9),2);
T(117) = getPowerDeriv(T(23),1/(1-params(9)),2);
end
