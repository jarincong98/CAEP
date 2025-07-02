function [y, T, residual, g1] = static_5(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(10, 1);
  T(2)=(1/(1-params(4)))^(1-params(4));
  residual(1)=(y(9))-(1/y(14)*(y(8)/params(4))^params(4)*T(2));
  residual(2)=(y(5))-(y(1)-y(1)*(1-params(3)));
  residual(3)=(y(11))-(y(10)+y(5)+y(2));
  residual(4)=(y(12))-(y(9));
  residual(5)=(y(4)*y(6)/y(16))-(y(6)*y(4)*params(2)/y(16)*(1-params(3)+y(8)));
  residual(6)=(y(9)*params(10)/y(4))-(params(10)-1);
  residual(7)=(y(8))-(y(11)*params(4)*y(12)/y(1));
  residual(8)=(1)-(y(11)*(1-params(4))*y(12)/y(3));
  residual(9)=(y(4)*y(6)/y(16))-(y(2)^(-params(1)));
  T(3)=params(5)*y(3)^params(6);
  residual(10)=(1)-(T(3)/y(6));
if nargout > 3
    g1_v = NaN(26, 1);
g1_v(1)=1;
g1_v(2)=(-1);
g1_v(3)=params(10)/y(4);
g1_v(4)=1;
g1_v(5)=(-1);
g1_v(6)=(-1);
g1_v(7)=(-(getPowerDeriv(y(2),(-params(1)),1)));
g1_v(8)=1;
g1_v(9)=(-(params(4)*y(11)/y(1)));
g1_v(10)=(-((1-params(4))*y(11)/y(3)));
g1_v(11)=(-(T(2)*1/y(14)*1/params(4)*getPowerDeriv(y(8)/params(4),params(4),1)));
g1_v(12)=(-(y(6)*y(4)*params(2)/y(16)));
g1_v(13)=1;
g1_v(14)=y(6)/y(16)-(1-params(3)+y(8))*y(6)*params(2)/y(16);
g1_v(15)=(-(y(9)*params(10)))/(y(4)*y(4));
g1_v(16)=y(6)/y(16);
g1_v(17)=(-(1-(1-params(3))));
g1_v(18)=(-((-(y(11)*params(4)*y(12)))/(y(1)*y(1))));
g1_v(19)=1;
g1_v(20)=(-(params(4)*y(12)/y(1)));
g1_v(21)=(-((1-params(4))*y(12)/y(3)));
g1_v(22)=y(4)/y(16)-(1-params(3)+y(8))*y(4)*params(2)/y(16);
g1_v(23)=y(4)/y(16);
g1_v(24)=(-((-T(3))/(y(6)*y(6))));
g1_v(25)=(-((-(y(11)*(1-params(4))*y(12)))/(y(3)*y(3))));
g1_v(26)=(-(params(5)*getPowerDeriv(y(3),params(6),1)/y(6)));
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 10, 10);
end
end
