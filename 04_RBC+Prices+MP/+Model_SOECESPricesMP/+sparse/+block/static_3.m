function [y, T, residual, g1] = static_3(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(2)=params(22)^(1-params(27));
  residual(1)=(y(38))-(y(38)^params(27)*T(2)*(1+x(3)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-(1+x(3))*T(2)*getPowerDeriv(y(38),params(27),1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
