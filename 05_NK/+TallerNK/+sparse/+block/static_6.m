function [y, T] = static_6(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(7)=y(6)-y(4);
  y(12)=y(4)*4;
end
