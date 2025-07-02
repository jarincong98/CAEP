function [g1, T_order, T] = dynamic_g1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 9
    T_order = -1;
    T = NaN(21, 1);
end
[T_order, T] = RBC_desde_cero.sparse.dynamic_g1_tt(y, x, params, steady_state, T_order, T);
g1_v = NaN(27, 1);
g1_v(1)=(-T(4));
g1_v(2)=(-T(11));
g1_v(3)=(-params(7));
g1_v(4)=(-(T(3)*(1-params(2))*exp(y(3))*T(19)));
g1_v(5)=(-(1-params(5)));
g1_v(6)=(-(T(10)*exp(y(3))*T(19)));
g1_v(7)=T(1)*1/(1-y(10));
g1_v(8)=(-1)/(y(9)*y(9));
g1_v(9)=(-1);
g1_v(10)=T(1)*y(9)/((1-y(10))*(1-y(10)))-T(14);
g1_v(11)=T(16);
g1_v(12)=(-((-y(14))/(y(10)*y(10))));
g1_v(13)=(-(T(5)*T(8)));
g1_v(14)=1;
g1_v(15)=(-(T(5)*T(21)));
g1_v(16)=(1+params(4))*(1+params(6));
g1_v(17)=(-1);
g1_v(18)=(-1);
g1_v(19)=1;
g1_v(20)=1;
g1_v(21)=(-(1/y(10)));
g1_v(22)=1;
g1_v(23)=(-(1-params(2)));
g1_v(24)=1;
g1_v(25)=(-(T(9)*T(12)));
g1_v(26)=(-(T(5)*T(18)));
g1_v(27)=(-1);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 8, 25);
end
