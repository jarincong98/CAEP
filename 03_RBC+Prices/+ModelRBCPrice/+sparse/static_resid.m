function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(4, 1);
end
[T_order, T] = ModelRBCPrice.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(16, 1);
    residual(1) = (y(7)) - (1);
    residual(2) = (y(5)) - (y(1)-y(1)*(1-params(3)));
    residual(3) = (y(4)*y(6)/y(16)) - (y(2)^(-params(1)));
    residual(4) = (1) - (T(1)/y(6));
    residual(5) = (y(4)*y(6)/y(16)) - (y(6)*y(4)*params(2)/y(16)*(1-params(3)+y(8)));
    residual(6) = (y(9)) - (1/y(14)*T(2)*T(3));
residual(7) = y(10);
    residual(8) = (y(11)) - (y(10)+y(5)+y(2));
    residual(9) = (y(12)) - (y(9));
    residual(10) = (y(13)) - (y(4)*y(11)-y(3)-y(1)*y(8)-y(10));
    residual(11) = (y(9)*params(10)/y(4)) - (params(10)-1);
    residual(12) = (y(8)) - (y(11)*params(4)*y(12)/y(1));
    residual(13) = (1) - (y(11)*(1-params(4))*y(12)/y(3));
    residual(14) = (y(14)) - (y(14)^params(7)*T(4)*(1+x(1)));
residual(15) = y(15);
    residual(16) = (y(16)) - (y(16)^params(12)*(1+x(2)));
end
