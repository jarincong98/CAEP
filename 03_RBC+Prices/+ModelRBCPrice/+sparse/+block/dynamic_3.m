function [y, T] = dynamic_3(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(31)=y(20)/y(4)-1;
  y(29)=y(20)*y(27)-y(19)-y(17)*y(24)-y(26);
end
