function T = static_resid_tt(T, y, x, params)
% function T = static_resid_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 20);

T(1) = y(2)^(-params(1));
T(2) = exp(params(29)*(y(6)*y(36)*y(23)/y(25)-params(13)));
T(3) = (y(12)/params(7))^params(7);
T(4) = 1/y(37)*T(3);
T(5) = (y(3)/(1-params(7)))^(1-params(7));
T(6) = (y(6)*y(36)/y(4))^params(12);
T(7) = params(10)*(y(8)/y(4))^params(8);
T(8) = y(39)^(params(8)-1);
T(9) = (1-params(10))*(y(8)/y(5))^params(8);
T(10) = (1/y(39))^(1-params(8));
T(11) = params(10)*y(4)^(1-params(8))+(1-params(10))*y(5)^(1-params(8));
T(12) = params(11)*(y(11)/y(4))^params(9);
T(13) = y(40)^(params(8)-1);
T(14) = (1-params(11))*(y(11)/y(5))^params(9);
T(15) = params(11)*y(4)^(1-params(9))+(1-params(11))*y(5)^(1-params(9));
T(16) = T(15)^(1/(1-params(9)));
T(17) = params(16)^(1-params(30));
T(18) = params(22)^(1-params(27));
T(19) = params(14)^(1-params(28));
T(20) = params(15)^(1-params(26));

end
