function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(7, 1);
end
[T_order, T] = RBC_desde_cero.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(8, 1);
    residual(1) = (params(1)/(1-params(1))*y(1)/(1-y(2))) - (T(3));
    residual(2) = (1/y(1)) - (T(4)*T(7));
    residual(3) = (y(4)*(1+params(4))*(1+params(6))) - (y(4)*(1-params(5))+y(5));
    residual(4) = (y(6)) - (y(1)+y(5));
    residual(5) = (y(6)) - (T(6)*exp(y(3))*T(1));
    residual(6) = (y(3)) - (y(3)*params(7)+x(1));
    residual(7) = (y(7)) - ((1-params(2))*y(8));
    residual(8) = (y(8)) - (y(6)/y(2));
end
