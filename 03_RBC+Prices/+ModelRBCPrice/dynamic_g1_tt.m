function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 35);

T = ModelRBCPrice.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(15) = (-y(22))/(y(6)*y(6));
T(16) = getPowerDeriv(y(22)/y(6),(-params(1)),1);
T(17) = params(2)*params(9)*T(16)*1/y(6);
T(18) = T(9)*T(17);
T(19) = params(5)*getPowerDeriv(y(7),params(6),1);
T(20) = (-y(8))/(y(2)*y(2));
T(21) = y(10)/y(20);
T(22) = 1/y(2);
T(23) = (-y(23))/(y(8)*y(8));
T(24) = 2*y(23)/y(8);
T(25) = T(23)*T(24);
T(26) = params(2)*y(24)/y(27);
T(27) = 1/y(8);
T(28) = T(24)*T(27);
T(29) = y(8)/y(20);
T(30) = params(2)*y(23)/y(27);
T(31) = 1/params(4)*getPowerDeriv(y(12)/params(4),params(4),1);
T(32) = T(11)*getPowerDeriv(y(3),params(7),1);
T(33) = getPowerDeriv(y(4),params(12),1);
T(34) = (-(y(8)*y(10)))/(y(20)*y(20));
T(35) = (-(params(2)*y(23)*y(24)))/(y(27)*y(27));

end
