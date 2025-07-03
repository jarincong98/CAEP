function [y, T] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(21)=y(20)-y(32);
  y(26)=y(18)*4;
end
