function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(11, 1);
end
[T_order, T] = RBC_desde_cero.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(8, 1);
    residual(1) = (T(1)*y(9)/(1-y(10))) - (T(4));
    residual(2) = (1/y(9)) - (T(5)*T(9));
    residual(3) = (y(12)*(1+params(4))*(1+params(6))) - (y(4)*(1-params(5))+y(13));
    residual(4) = (y(14)) - (y(9)+y(13));
    residual(5) = (y(14)) - (T(11));
    residual(6) = (y(11)) - (y(3)*params(7)+x(1));
    residual(7) = (y(15)) - ((1-params(2))*y(16));
    residual(8) = (y(16)) - (y(14)/y(10));
end
