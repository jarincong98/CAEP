function [y, T] = dynamic_1(y, x, params, steady_state, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(24)=params(10)*y(10)+x(2);
  y(23)=y(9)*params(11)+x(1);
  y(17)=(-((1-params(4))*(params(13)-log(1-params(4)))))/(params(4)+params(3)+(1-params(4))*params(2))+(1+params(3))/(params(4)+params(3)+(1-params(4))*params(2))*y(9);
  y(22)=params(12)+params(2)*(y(23)-y(9));
  y(28)=y(22)*4;
end
