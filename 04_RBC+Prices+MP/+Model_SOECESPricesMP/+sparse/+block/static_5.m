function [y, T, residual, g1] = static_5(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(1, 1);
  T(4)=params(15)^(1-params(26));
  residual(1)=(y(37))-(y(37)^params(26)*T(4)*(1+x(1)));
if nargout > 3
    g1_v = NaN(1, 1);
g1_v(1)=1-(1+x(1))*T(4)*getPowerDeriv(y(37),params(26),1);
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 1, 1);
end
end
