function [y, T, residual, g1] = static_2(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  T(1)=exp(y(3));
  T(2)=params(2)*T(1)*y(4)^(params(2)-1);
  T(3)=y(2)^(1-params(2));
  residual(1)=(1/y(1))-(1/y(1)*params(3)/(1+params(4))*(1+T(2)*T(3)-params(5)));
  residual(2)=(y(4)*(1+params(4))*(1+params(6)))-(y(4)*(1-params(5))+y(5));
  residual(3)=(y(6))-(y(1)+y(5));
  T(4)=y(4)^params(2);
  residual(4)=(y(6))-(T(3)*T(1)*T(4));
  T(5)=y(2)^(-params(2));
  residual(5)=(params(1)/(1-params(1))*y(1)/(1-y(2)))-((1-params(2))*T(1)*T(4)*T(5));
  T(6)=getPowerDeriv(y(2),1-params(2),1);
  T(7)=getPowerDeriv(y(4),params(2),1);
if nargout > 3
    g1_v = NaN(14, 1);
g1_v(1)=(-(1/y(1)*params(3)/(1+params(4))*T(2)*T(6)));
g1_v(2)=(-(T(1)*T(4)*T(6)));
g1_v(3)=params(1)/(1-params(1))*y(1)/((1-y(2))*(1-y(2)))-(1-params(2))*T(1)*T(4)*getPowerDeriv(y(2),(-params(2)),1);
g1_v(4)=(-(1/y(1)*params(3)/(1+params(4))*T(3)*params(2)*T(1)*getPowerDeriv(y(4),params(2)-1,1)));
g1_v(5)=(1+params(4))*(1+params(6))-(1-params(5));
g1_v(6)=(-(T(3)*T(1)*T(7)));
g1_v(7)=(-(T(5)*(1-params(2))*T(1)*T(7)));
g1_v(8)=(-1);
g1_v(9)=(-1);
g1_v(10)=1;
g1_v(11)=1;
g1_v(12)=(-1)/(y(1)*y(1))-(1+T(2)*T(3)-params(5))*params(3)/(1+params(4))*(-1)/(y(1)*y(1));
g1_v(13)=(-1);
g1_v(14)=params(1)/(1-params(1))*1/(1-y(2));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 5);
end
end
