function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = TallerNK.static_resid_tt(T, y, x, params);
end
residual = zeros(14, 1);
    residual(1) = (y(4)) - (params(1)*y(4)+T(1)*y(1));
    residual(2) = (y(1)) - (y(1)-1/params(2)*(y(7)-y(8)));
    residual(3) = (y(8)) - (params(12));
    residual(4) = (y(6)) - (params(12)+y(4)*params(8)+y(1)*params(9)+y(10));
    residual(5) = (y(10)) - (y(10)*params(10)+x(2));
    residual(6) = (y(9)) - (y(9)*params(11)+x(1));
    residual(7) = (y(1)) - (y(2)-y(3));
    residual(8) = (y(3)) - ((-((1-params(4))*(params(13)-log(1-params(4)))))/(params(4)+params(3)+(1-params(4))*params(2))+(1+params(3))/(params(4)+params(3)+(1-params(4))*params(2))*y(9));
    residual(9) = (y(2)) - (y(9)+(1-params(4))*y(5));
    residual(10) = (y(7)) - (y(6)-y(4));
    residual(11) = (y(11)) - (y(6)*4);
    residual(12) = (y(13)) - (y(7)*4);
    residual(13) = (y(14)) - (y(8)*4);
    residual(14) = (y(12)) - (y(4)*4);

end
