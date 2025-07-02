function [g2_v, T_order, T] = dynamic_g2(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(22, 1);
end
[T_order, T] = RBC_desde_cero.sparse.dynamic_g2_tt(y, x, params, steady_state, T_order, T);
g2_v = NaN(26, 1);
g2_v(1)=T(1)*1/((1-y(10))*(1-y(10)));
g2_v(2)=T(1)*(-(y(9)*((-(1-y(10)))-(1-y(10)))))/((1-y(10))*(1-y(10))*(1-y(10))*(1-y(10)))-(1-params(2))*exp(y(3))*T(2)*getPowerDeriv(y(10),(-params(2)),2);
g2_v(3)=(-T(14));
g2_v(4)=(-(T(13)*(1-params(2))*exp(y(3))*T(19)));
g2_v(5)=(-T(4));
g2_v(6)=(-(T(3)*(1-params(2))*exp(y(3))*T(19)));
g2_v(7)=(-(T(3)*(1-params(2))*exp(y(3))*T(22)));
g2_v(8)=(y(9)+y(9))/(y(9)*y(9)*y(9)*y(9));
g2_v(9)=(-(T(9)*params(3)/(1+params(4))*(y(17)+y(17))/(y(17)*y(17)*y(17)*y(17))));
g2_v(10)=(-(T(12)*T(18)));
g2_v(11)=(-(T(8)*T(12)));
g2_v(12)=(-(T(12)*T(21)));
g2_v(13)=(-(T(5)*T(6)*getPowerDeriv(y(18),1-params(2),2)));
g2_v(14)=(-(T(5)*T(18)));
g2_v(15)=(-(T(5)*T(17)*T(20)));
g2_v(16)=(-(T(5)*T(8)));
g2_v(17)=(-(T(5)*T(21)));
g2_v(18)=(-(T(5)*T(7)*params(2)*exp(y(11))*getPowerDeriv(y(12),params(2)-1,2)));
g2_v(19)=(-(exp(y(3))*T(2)*getPowerDeriv(y(10),1-params(2),2)));
g2_v(20)=T(16);
g2_v(21)=(-(T(15)*exp(y(3))*T(19)));
g2_v(22)=(-T(11));
g2_v(23)=(-(T(10)*exp(y(3))*T(19)));
g2_v(24)=(-(T(10)*exp(y(3))*T(22)));
g2_v(25)=(-((-((-y(14))*(y(10)+y(10))))/(y(10)*y(10)*y(10)*y(10))));
g2_v(26)=(-((-1)/(y(10)*y(10))));
end
