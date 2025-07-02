function [y, T, residual, g1] = dynamic_2(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(5, 1);
  residual(1)=(y(14))-(y(9)+y(13));
  T(1)=exp(y(3));
  T(2)=y(4)^params(2);
  T(3)=y(10)^(1-params(2));
  residual(2)=(y(14))-(T(1)*T(2)*T(3));
  residual(3)=(y(12)*(1+params(4))*(1+params(6)))-(y(4)*(1-params(5))+y(13));
  T(4)=params(2)*exp(y(11));
  T(5)=T(4)*y(12)^(params(2)-1);
  T(6)=y(18)^(1-params(2));
  T(7)=1+T(5)*T(6)-params(5);
  residual(4)=(1/y(9))-(params(3)/(1+params(4))*1/y(17)*T(7));
  T(8)=y(10)^(-params(2));
  residual(5)=(params(1)/(1-params(1))*y(9)/(1-y(10)))-((1-params(2))*T(1)*T(2)*T(8));
  T(9)=getPowerDeriv(y(4),params(2),1);
if nargout > 3
    g1_v = NaN(16, 1);
g1_v(1)=(-(T(3)*T(1)*T(9)));
g1_v(2)=(-(1-params(5)));
g1_v(3)=(-(T(8)*(1-params(2))*T(1)*T(9)));
g1_v(4)=(-1);
g1_v(5)=(-1);
g1_v(6)=1;
g1_v(7)=1;
g1_v(8)=(1+params(4))*(1+params(6));
g1_v(9)=(-(params(3)/(1+params(4))*1/y(17)*T(6)*T(4)*getPowerDeriv(y(12),params(2)-1,1)));
g1_v(10)=(-1);
g1_v(11)=(-1)/(y(9)*y(9));
g1_v(12)=params(1)/(1-params(1))*1/(1-y(10));
g1_v(13)=(-(T(1)*T(2)*getPowerDeriv(y(10),1-params(2),1)));
g1_v(14)=params(1)/(1-params(1))*y(9)/((1-y(10))*(1-y(10)))-(1-params(2))*T(1)*T(2)*getPowerDeriv(y(10),(-params(2)),1);
g1_v(15)=(-(T(7)*params(3)/(1+params(4))*(-1)/(y(17)*y(17))));
g1_v(16)=(-(params(3)/(1+params(4))*1/y(17)*T(5)*getPowerDeriv(y(18),1-params(2),1)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 5, 15);
end
end
