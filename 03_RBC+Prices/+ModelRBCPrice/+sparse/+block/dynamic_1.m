function [y, T] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(23)=1;
  T(1)=params(8)^(1-params(7));
  y(30)=y(14)^params(7)*T(1)*(1+x(1));
  y(32)=y(16)^params(12)*(1+x(2));
end
