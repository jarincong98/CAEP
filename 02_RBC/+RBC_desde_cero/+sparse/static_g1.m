function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(9, 1);
end
[T_order, T] = RBC_desde_cero.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(23, 1);
g1_v(1)=params(1)/(1-params(1))*1/(1-y(2));
g1_v(2)=(-1)/(y(1)*y(1))-T(7)*params(3)/(1+params(4))*(-1)/(y(1)*y(1));
g1_v(3)=(-1);
g1_v(4)=params(1)/(1-params(1))*y(1)/((1-y(2))*(1-y(2)))-(1-params(2))*exp(y(3))*T(1)*getPowerDeriv(y(2),(-params(2)),1);
g1_v(5)=(-(T(4)*T(5)*T(8)));
g1_v(6)=(-(exp(y(3))*T(1)*T(8)));
g1_v(7)=(-((-y(6))/(y(2)*y(2))));
g1_v(8)=(-T(3));
g1_v(9)=(-(T(4)*T(5)*T(6)));
g1_v(10)=(-(T(6)*exp(y(3))*T(1)));
g1_v(11)=1-params(7);
g1_v(12)=(-(T(2)*(1-params(2))*exp(y(3))*T(9)));
g1_v(13)=(-(T(4)*T(6)*params(2)*exp(y(3))*getPowerDeriv(y(4),params(2)-1,1)));
g1_v(14)=(1+params(4))*(1+params(6))-(1-params(5));
g1_v(15)=(-(T(6)*exp(y(3))*T(9)));
g1_v(16)=(-1);
g1_v(17)=(-1);
g1_v(18)=1;
g1_v(19)=1;
g1_v(20)=(-(1/y(2)));
g1_v(21)=1;
g1_v(22)=(-(1-params(2)));
g1_v(23)=1;
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 8, 8);
end
