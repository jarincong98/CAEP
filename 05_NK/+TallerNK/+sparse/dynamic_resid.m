function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(1, 1);
end
[T_order, T] = TallerNK.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(14, 1);
    residual(1) = (y(18)) - (params(1)*y(32)+y(15)*T(1));
    residual(2) = (y(15)) - (y(29)-1/params(2)*(y(21)-y(22)));
    residual(3) = (y(22)) - (params(12)+params(2)*(y(23)-y(9)));
    residual(4) = (y(20)) - (params(12)+y(18)*params(8)+y(15)*params(9)+y(24));
    residual(5) = (y(24)) - (params(10)*y(10)+x(2));
    residual(6) = (y(23)) - (y(9)*params(11)+x(1));
    residual(7) = (y(15)) - (y(16)-y(17));
    residual(8) = (y(17)) - ((-((1-params(4))*(params(13)-log(1-params(4)))))/(params(4)+params(3)+(1-params(4))*params(2))+(1+params(3))/(params(4)+params(3)+(1-params(4))*params(2))*y(9));
    residual(9) = (y(16)) - (y(9)+(1-params(4))*y(19));
    residual(10) = (y(21)) - (y(20)-y(32));
    residual(11) = (y(25)) - (y(20)*4);
    residual(12) = (y(27)) - (y(21)*4);
    residual(13) = (y(28)) - (y(22)*4);
    residual(14) = (y(26)) - (y(18)*4);
end
