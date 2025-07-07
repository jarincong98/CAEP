function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 117);

T = Model_SOECESPricesMP.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(103) = getPowerDeriv(y(21)*y(15)/params(4),1/params(5),2);
T(104) = getPowerDeriv(y(59)/y(14),(-params(1)),2);
T(105) = params(3)*(T(41)*(-((-y(59))*(y(14)+y(14))))/(y(14)*y(14)*y(14)*y(14))+T(40)*T(40)*T(104));
T(106) = params(3)*(T(41)*(-1)/(y(14)*y(14))+T(40)*1/y(14)*T(104));
T(107) = params(3)*1/y(14)*1/y(14)*T(104);
T(108) = (-1)/(y(16)*y(16));
T(109) = getPowerDeriv(y(18)*y(48)/y(16),params(12),2);
T(110) = getPowerDeriv(y(20)/y(16),params(8),2);
T(111) = getPowerDeriv(y(51),params(8)-1,2);
T(112) = getPowerDeriv(y(20)/y(17),params(8),2);
T(113) = (-1)/(y(17)*y(17));
T(114) = getPowerDeriv(y(23)/y(16),params(9),2);
T(115) = getPowerDeriv(y(52),params(8)-1,2);
T(116) = getPowerDeriv(y(23)/y(17),params(9),2);
T(117) = getPowerDeriv(T(23),1/(1-params(9)),2);

end
