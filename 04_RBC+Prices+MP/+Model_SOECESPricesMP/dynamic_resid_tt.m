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

assert(length(T) >= 38);

T(1) = params(6)/2;
T(2) = y(14)^(-params(1));
T(3) = 1-params(2)+params(6)*(y(58)-y(13))+y(66)/y(65);
T(4) = exp(params(29)*(y(18)*y(48)*y(35)/y(37)-params(13)));
T(5) = (y(24)/params(7))^params(7);
T(6) = 1/y(49)*T(5);
T(7) = (y(15)/(1-params(7)))^(1-params(7));
T(8) = params(3)*(y(59)/y(14))^(-params(1));
T(9) = y(60)/y(16)-1;
T(10) = params(19)*T(8)*T(9);
T(11) = (y(60)/y(16))^2;
T(12) = params(19)/2;
T(13) = (y(18)*y(48)/y(16))^params(12);
T(14) = params(10)*(y(20)/y(16))^params(8);
T(15) = y(51)^(params(8)-1);
T(16) = (1-params(10))*(y(20)/y(17))^params(8);
T(17) = (1/y(51))^(1-params(8));
T(18) = params(10)*y(16)^(1-params(8))+(1-params(10))*y(17)^(1-params(8));
T(19) = params(11)*(y(23)/y(16))^params(9);
T(20) = y(52)^(params(8)-1);
T(21) = (1-params(11))*(y(23)/y(17))^params(9);
T(22) = 1/y(52);
T(23) = params(11)*y(16)^(1-params(9))+(1-params(11))*y(17)^(1-params(9));
T(24) = T(23)^(1/(1-params(9)));
T(25) = y(61)/y(17)-1;
T(26) = T(8)*params(20)*T(25);
T(27) = (y(61)/y(17))^2;
T(28) = params(20)/2;
T(29) = params(16)^(1-params(30));
T(30) = y(6)^params(30)*T(29);
T(31) = params(22)^(1-params(27));
T(32) = y(8)^params(27)*T(31);
T(33) = params(14)^(1-params(28));
T(34) = y(11)^params(28)*T(33);
T(35) = params(15)^(1-params(26));
T(36) = y(7)^params(26)*T(35);
T(37) = y(9)^params(17);
T(38) = y(10)^params(18);

end
