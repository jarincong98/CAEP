function [y, T] = static_4(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(3)=(-((1-params(4))*(params(13)-log(1-params(4)))))/(params(4)+params(3)+(1-params(4))*params(2))+(1+params(3))/(params(4)+params(3)+(1-params(4))*params(2))*y(9);
  y(14)=y(8)*4;
end
