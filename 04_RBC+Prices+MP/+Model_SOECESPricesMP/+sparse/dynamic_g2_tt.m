function [T_order, T] = dynamic_g2_tt(y, x, params, steady_state, T_order, T)
if T_order >= 2
    return
end
[T_order, T] = Model_SOECESPricesMP.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
T_order = 2;
if size(T, 1) < 117
    T = [T; NaN(117 - size(T, 1), 1)];
end
T(103) = getPowerDeriv(y(51)*y(45)/params(4),1/params(5),2);
T(104) = getPowerDeriv(y(86)/y(44),(-params(1)),2);
T(105) = params(3)*(T(41)*(-((-y(86))*(y(44)+y(44))))/(y(44)*y(44)*y(44)*y(44))+T(40)*T(40)*T(104));
T(106) = params(3)*(T(41)*(-1)/(y(44)*y(44))+T(40)*1/y(44)*T(104));
T(107) = params(3)*1/y(44)*1/y(44)*T(104);
T(108) = (-1)/(y(46)*y(46));
T(109) = getPowerDeriv(y(48)*y(78)/y(46),params(12),2);
T(110) = getPowerDeriv(y(50)/y(46),params(8),2);
T(111) = getPowerDeriv(y(81),params(8)-1,2);
T(112) = getPowerDeriv(y(50)/y(47),params(8),2);
T(113) = (-1)/(y(47)*y(47));
T(114) = getPowerDeriv(y(53)/y(46),params(9),2);
T(115) = getPowerDeriv(y(82),params(8)-1,2);
T(116) = getPowerDeriv(y(53)/y(47),params(9),2);
T(117) = getPowerDeriv(T(23),1/(1-params(9)),2);
end
