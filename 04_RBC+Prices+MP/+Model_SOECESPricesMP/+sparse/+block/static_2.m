function [y, T, residual, g1] = static_2(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(1)=params(16)^(1-params(30));
  residual(1)=(y(36))-(y(36)^params(30)*T(1)*(1+x(2)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-(1+x(2))*T(1)*getPowerDeriv(y(36),params(30),1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
