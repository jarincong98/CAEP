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
    T = ModelRBCPrice.static_resid_tt(T, y, x, params);
end
residual = zeros(16, 1);
    residual(1) = (y(7)) - (1);
    residual(2) = (y(5)) - (y(1)-y(1)*(1-params(3)));
    residual(3) = (y(4)*y(6)/y(16)) - (y(2)^(-params(1)));
    residual(4) = (1) - (T(1)/y(6));
    residual(5) = (y(4)*y(6)/y(16)) - (y(6)*y(4)*params(2)/y(16)*(1-params(3)+y(8)));
    residual(6) = (y(9)) - (1/y(14)*T(2)*T(3));
residual(7) = y(10);
    residual(8) = (y(11)) - (y(10)+y(5)+y(2));
    residual(9) = (y(12)) - (y(9));
    residual(10) = (y(13)) - (y(4)*y(11)-y(3)-y(1)*y(8)-y(10));
    residual(11) = (y(9)*params(10)/y(4)) - (params(10)-1);
    residual(12) = (y(8)) - (y(11)*params(4)*y(12)/y(1));
    residual(13) = (1) - (y(11)*(1-params(4))*y(12)/y(3));
    residual(14) = (y(14)) - (y(14)^params(7)*T(4)*(1+x(1)));
residual(15) = y(15);
    residual(16) = (y(16)) - (y(16)^params(12)*(1+x(2)));

end
