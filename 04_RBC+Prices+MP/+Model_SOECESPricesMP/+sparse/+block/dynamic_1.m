function [y, T] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  T(1)=params(16)^(1-params(30));
  y(81)=y(36)^params(30)*T(1)*(1+x(2));
  T(2)=params(22)^(1-params(27));
  y(83)=y(38)^params(27)*T(2)*(1+x(3));
  T(3)=params(14)^(1-params(28));
  y(86)=y(41)^params(28)*T(3)*(1+x(4));
  T(4)=params(15)^(1-params(26));
  y(82)=y(37)^params(26)*T(4)*(1+x(1));
  y(84)=y(39)^params(17)*(1+x(5));
  y(85)=y(40)^params(18)*(1+x(6));
end
