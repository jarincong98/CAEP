function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(1, 1);
end
[T_order, T] = TallerNK.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(14, 1);
    residual(1) = (y(4)) - (params(1)*y(4)+T(1)*y(1));
    residual(2) = (y(1)) - (y(1)-1/params(2)*(y(7)-y(8)));
    residual(3) = (y(8)) - (params(12));
    residual(4) = (y(6)) - (params(12)+y(4)*params(8)+y(1)*params(9)+y(10));
    residual(5) = (y(10)) - (y(10)*params(10)+x(2));
    residual(6) = (y(9)) - (y(9)*params(11)+x(1));
    residual(7) = (y(1)) - (y(2)-y(3));
    residual(8) = (y(3)) - ((-((1-params(4))*(params(13)-log(1-params(4)))))/(params(4)+params(3)+(1-params(4))*params(2))+(1+params(3))/(params(4)+params(3)+(1-params(4))*params(2))*y(9));
    residual(9) = (y(2)) - (y(9)+(1-params(4))*y(5));
    residual(10) = (y(7)) - (y(6)-y(4));
    residual(11) = (y(11)) - (y(6)*4);
    residual(12) = (y(13)) - (y(7)*4);
    residual(13) = (y(14)) - (y(8)*4);
    residual(14) = (y(12)) - (y(4)*4);
end
