function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(4, 1);
end
[T_order, T] = ModelRBCPrice.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(42, 1);
g1_v(1)=(-(1-(1-params(3))));
g1_v(2)=y(8);
g1_v(3)=(-((-(y(11)*params(4)*y(12)))/(y(1)*y(1))));
g1_v(4)=(-(getPowerDeriv(y(2),(-params(1)),1)));
g1_v(5)=(-1);
g1_v(6)=(-(params(5)*getPowerDeriv(y(3),params(6),1)/y(6)));
g1_v(7)=1;
g1_v(8)=(-((-(y(11)*(1-params(4))*y(12)))/(y(3)*y(3))));
g1_v(9)=y(6)/y(16);
g1_v(10)=y(6)/y(16)-(1-params(3)+y(8))*y(6)*params(2)/y(16);
g1_v(11)=(-y(11));
g1_v(12)=(-(y(9)*params(10)))/(y(4)*y(4));
g1_v(13)=1;
g1_v(14)=(-1);
g1_v(15)=y(4)/y(16);
g1_v(16)=(-((-T(1))/(y(6)*y(6))));
g1_v(17)=y(4)/y(16)-(1-params(3)+y(8))*y(4)*params(2)/y(16);
g1_v(18)=1;
g1_v(19)=(-(y(6)*y(4)*params(2)/y(16)));
g1_v(20)=(-(T(3)*1/y(14)*1/params(4)*getPowerDeriv(y(8)/params(4),params(4),1)));
g1_v(21)=y(1);
g1_v(22)=1;
g1_v(23)=1;
g1_v(24)=(-1);
g1_v(25)=params(10)/y(4);
g1_v(26)=1;
g1_v(27)=(-1);
g1_v(28)=1;
g1_v(29)=1;
g1_v(30)=(-y(4));
g1_v(31)=(-(params(4)*y(12)/y(1)));
g1_v(32)=(-((1-params(4))*y(12)/y(3)));
g1_v(33)=1;
g1_v(34)=(-(params(4)*y(11)/y(1)));
g1_v(35)=(-((1-params(4))*y(11)/y(3)));
g1_v(36)=1;
g1_v(37)=(-(T(3)*T(2)*(-1)/(y(14)*y(14))));
g1_v(38)=1-(1+x(1))*T(4)*getPowerDeriv(y(14),params(7),1);
g1_v(39)=1;
g1_v(40)=(-(y(4)*y(6)))/(y(16)*y(16));
g1_v(41)=(-(y(4)*y(6)))/(y(16)*y(16))-(1-params(3)+y(8))*(-(y(6)*y(4)*params(2)))/(y(16)*y(16));
g1_v(42)=1-(1+x(2))*getPowerDeriv(y(16),params(12),1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 16, 16);
end
