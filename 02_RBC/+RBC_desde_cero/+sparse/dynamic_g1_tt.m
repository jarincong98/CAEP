function [T_order, T] = dynamic_g1_tt(y, x, params, steady_state, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = RBC_desde_cero.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
T_order = 1;
if size(T, 1) < 21
    T = [T; NaN(21 - size(T, 1), 1)];
end
T(12) = params(3)/(1+params(4))*(-1)/(y(17)*y(17));
T(13) = getPowerDeriv(y(10),(-params(2)),1);
T(14) = (1-params(2))*exp(y(3))*T(2)*T(13);
T(15) = getPowerDeriv(y(10),1-params(2),1);
T(16) = (-(exp(y(3))*T(2)*T(15)));
T(17) = getPowerDeriv(y(18),1-params(2),1);
T(18) = T(6)*T(17);
T(19) = getPowerDeriv(y(4),params(2),1);
T(20) = params(2)*exp(y(11))*getPowerDeriv(y(12),params(2)-1,1);
T(21) = T(7)*T(20);
end
