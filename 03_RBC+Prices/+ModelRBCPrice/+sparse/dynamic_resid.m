function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(14, 1);
end
[T_order, T] = ModelRBCPrice.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(16, 1);
    residual(1) = (y(23)) - (1);
    residual(2) = (y(21)) - (y(17)-(1-params(3))*y(1)+T(1)*(y(17)-y(1))^2);
    residual(3) = (T(2)) - (y(18)^(-params(1)));
    residual(4) = (1) - (T(3)/y(22));
    residual(5) = (T(2)*(1+params(11)*(y(17)-y(1)))) - (T(4)*(1-params(3)+y(40)+params(11)*(y(33)-y(17))));
    residual(6) = (y(25)) - (1/y(30)*T(5)*T(14));
    residual(7) = (y(26)) - (T(6)*T(7)^2);
    residual(8) = (y(27)) - (y(26)+y(21)+y(18));
    residual(9) = (y(28)) - (y(25));
    residual(10) = (y(29)) - (y(20)*y(27)-y(19)-y(17)*y(24)-y(26));
    residual(11) = (y(25)*params(10)/y(20)) - (params(10)-1+y(20)*params(9)*T(7)/y(4)-T(8)*T(9)*T(10)*y(43)/y(27));
    residual(12) = (y(24)) - (y(27)*params(4)*y(28)/y(1));
    residual(13) = (1) - (y(27)*(1-params(4))*y(28)/y(19));
    residual(14) = (y(30)) - (T(12)*(1+x(1)));
    residual(15) = (y(31)) - (T(7));
    residual(16) = (y(32)) - (T(13)*(1+x(2)));
end
