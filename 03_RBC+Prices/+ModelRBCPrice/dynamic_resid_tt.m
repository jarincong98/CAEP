function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 14);

T(1) = params(11)/2;
T(2) = y(8)*y(10)/y(20);
T(3) = params(5)*y(7)^params(6);
T(4) = params(2)*y(23)*y(24)/y(27);
T(5) = (y(12)/params(4))^params(4);
T(6) = params(9)/2;
T(7) = y(8)/y(2)-1;
T(8) = params(2)*params(9)*(y(22)/y(6))^(-params(1));
T(9) = y(23)/y(8)-1;
T(10) = (y(23)/y(8))^2;
T(11) = params(8)^(1-params(7));
T(12) = y(3)^params(7)*T(11);
T(13) = y(4)^params(12);
T(14) = (1/(1-params(4)))^(1-params(4));

end
