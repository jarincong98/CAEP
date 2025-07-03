function [y, T, residual, g1] = static_5(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(3, 1);
  T(1)=(1-params(4))/(1-params(4)+params(4)*params(5))*(1-params(6))*(1-params(6)*params(1))/params(6)*(params(2)+(params(4)+params(3))/(1-params(4)));
  residual(1)=(y(4))-(y(4)*0.5+y(4)*params(1)*0.5+T(1)*y(1));
  residual(2)=(y(1))-((-(1-params(15)))/(params(2)*(1+params(15)))*(y(6)-y(4)-y(8))+y(1)*1/(1+params(15))+y(1)*params(15)/(1+params(15)));
  residual(3)=(y(6))-(y(6)*params(14)+(1-params(14))*(y(4)*params(8)+y(1)*params(9))+y(10));
if nargout > 3
    g1_v = NaN(8, 1);
g1_v(1)=(-T(1));
g1_v(2)=1-(1/(1+params(15))+params(15)/(1+params(15)));
g1_v(3)=(-((1-params(14))*params(9)));
g1_v(4)=1-(0.5+params(1)*0.5);
g1_v(5)=(-(1-params(15)))/(params(2)*(1+params(15)));
g1_v(6)=(-((1-params(14))*params(8)));
g1_v(7)=(-((-(1-params(15)))/(params(2)*(1+params(15)))));
g1_v(8)=1-params(14);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 3, 3);
end
end
