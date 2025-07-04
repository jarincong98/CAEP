function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
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

assert(length(T) >= 29);

T = Model_SOECESPricesMP.static_resid_tt(T, y, x, params);

T(21) = getPowerDeriv(y(9)*y(3)/params(4),1/params(5),1);
T(22) = getPowerDeriv(y(6)*y(36)/y(4),params(12),1);
T(23) = getPowerDeriv(y(8)/y(4),params(8),1);
T(24) = getPowerDeriv(y(11)/y(4),params(9),1);
T(25) = getPowerDeriv(T(15),1/(1-params(9)),1);
T(26) = getPowerDeriv(y(8)/y(5),params(8),1);
T(27) = getPowerDeriv(y(11)/y(5),params(9),1);
T(28) = getPowerDeriv(y(39),params(8)-1,1);
T(29) = getPowerDeriv(y(40),params(8)-1,1);

end
