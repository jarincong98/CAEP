function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(3, 1);
  residual(1)=(y(20))-(params(14)*y(6)+(1-params(14))*(y(18)*params(8)+y(15)*params(9))+y(24));
  residual(2)=(y(15))-((-(1-params(15)))/(params(2)*(1+params(15)))*(y(20)-y(32)-y(22))+1/(1+params(15))*y(29)+params(15)/(1+params(15))*y(1));
  T(1)=(params(2)+(params(4)+params(3))/(1-params(4)))*(1-params(4))/(1-params(4)+params(4)*params(5))*(1-params(6))*(1-params(6)*params(1))/params(6);
  residual(3)=(y(18))-(0.5*y(4)+params(1)*0.5*y(32)+y(15)*T(1));
if nargout > 3
    g1_v = NaN(13, 1);
g1_v(1)=(-params(14));
g1_v(2)=(-(params(15)/(1+params(15))));
g1_v(3)=(-0.5);
g1_v(4)=1;
g1_v(5)=(-((-(1-params(15)))/(params(2)*(1+params(15)))));
g1_v(6)=(-((1-params(14))*params(9)));
g1_v(7)=1;
g1_v(8)=(-T(1));
g1_v(9)=(-((1-params(14))*params(8)));
g1_v(10)=1;
g1_v(11)=(-(1/(1+params(15))));
g1_v(12)=(-(1-params(15)))/(params(2)*(1+params(15)));
g1_v(13)=(-(params(1)*0.5));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 3, 9);
end
end
