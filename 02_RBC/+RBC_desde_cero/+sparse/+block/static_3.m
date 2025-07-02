function [y, T] = static_3(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(8)=y(6)/y(2);
  y(7)=(1-params(2))*y(8);
end
