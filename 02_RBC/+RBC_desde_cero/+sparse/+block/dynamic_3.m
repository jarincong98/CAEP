function [y, T] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(16)=y(14)/y(10);
  y(15)=(1-params(2))*y(16);
end
