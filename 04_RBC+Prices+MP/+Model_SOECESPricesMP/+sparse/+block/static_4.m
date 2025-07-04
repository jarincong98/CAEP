function [y, T, residual, g1] = static_4(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(3)=params(14)^(1-params(28));
  residual(1)=(y(41))-(y(41)^params(28)*T(3)*(1+x(4)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-(1+x(4))*T(3)*getPowerDeriv(y(41),params(28),1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
