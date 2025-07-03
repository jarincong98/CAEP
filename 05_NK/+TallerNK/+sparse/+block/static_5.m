function [y, T, residual, g1] = static_5(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(4, 1);
  T(1)=(1-params(4))/(1-params(4)+params(4)*params(5))*(1-params(6))*(1-params(6)*params(1))/params(6)*(params(2)+(params(4)+params(3))/(1-params(4)));
  residual(1)=(y(4))-(params(1)*y(4)+T(1)*y(1));
  residual(2)=(y(1))-(y(1)-1/params(2)*(y(7)-y(8)));
  residual(3)=(y(6))-(params(12)+y(4)*params(8)+y(1)*params(9)+y(10));
  residual(4)=(y(7))-(y(6)-y(4));
if nargout > 3
    g1_v = NaN(9, 1);
g1_v(1)=(-T(1));
g1_v(2)=(-params(9));
g1_v(3)=1/params(2);
g1_v(4)=1;
g1_v(5)=1-params(1);
g1_v(6)=(-params(8));
g1_v(7)=1;
g1_v(8)=1;
g1_v(9)=(-1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 4, 4);
end
end
