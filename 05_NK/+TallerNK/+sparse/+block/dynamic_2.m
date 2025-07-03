function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(4, 1);
  residual(1)=(y(15))-(y(29)-1/params(2)*(y(21)-y(22)));
  residual(2)=(y(21))-(y(20)-y(32));
  T(1)=(params(2)+(params(4)+params(3))/(1-params(4)))*(1-params(4))/(1-params(4)+params(4)*params(5))*(1-params(6))*(1-params(6)*params(1))/params(6);
  residual(3)=(y(18))-(params(1)*y(32)+y(15)*T(1));
  residual(4)=(y(20))-(params(12)+y(18)*params(8)+y(15)*params(9)+y(24));
if nargout > 3
    g1_v = NaN(9, 1);
g1_v(1)=1/params(2);
g1_v(2)=1;
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=1;
g1_v(6)=(-T(1));
g1_v(7)=(-params(9));
g1_v(8)=1;
g1_v(9)=(-params(8));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 4, 4);
end
end
