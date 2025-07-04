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

assert(length(T) >= 102);

T = Model_SOECESPricesMP.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(39) = getPowerDeriv(y(14),(-params(1)),1);
T(40) = (-y(58))/(y(14)*y(14));
T(41) = getPowerDeriv(y(58)/y(14),(-params(1)),1);
T(42) = params(19)*params(3)*T(41)*1/y(14);
T(43) = T(9)*T(42);
T(44) = params(20)*params(3)*T(41)*1/y(14);
T(45) = T(25)*T(44);
T(46) = y(21)/params(4);
T(47) = getPowerDeriv(y(21)*y(15)/params(4),1/params(5),1);
T(48) = 1/(1-params(7))*getPowerDeriv(y(15)/(1-params(7)),1-params(7),1);
T(49) = (-y(16))/(y(2)*y(2));
T(50) = y(2)*y(16)*params(19)*T(49)-y(16)*params(19)*(y(16)/y(2)-1);
T(51) = 2*(y(16)/y(2)-1);
T(52) = 1/y(2);
T(53) = params(19)*(y(16)/y(2)-1)+y(16)*params(19)*T(52);
T(54) = (-y(59))/(y(16)*y(16));
T(55) = 2*y(59)/y(16);
T(56) = T(54)*T(55);
T(57) = (-(y(18)*y(48)))/(y(16)*y(16));
T(58) = getPowerDeriv(y(18)*y(48)/y(16),params(12),1);
T(59) = (-y(20))/(y(16)*y(16));
T(60) = getPowerDeriv(y(20)/y(16),params(8),1);
T(61) = params(10)*getPowerDeriv(y(16),1-params(8),1);
T(62) = (-y(23))/(y(16)*y(16));
T(63) = getPowerDeriv(y(23)/y(16),params(9),1);
T(64) = params(11)*getPowerDeriv(y(16),1-params(9),1);
T(65) = getPowerDeriv(T(23),1/(1-params(9)),1);
T(66) = 1/y(16);
T(67) = T(55)*T(66);
T(68) = (-y(17))/(y(3)*y(3));
T(69) = y(3)*y(17)*params(20)*T(68)-y(17)*params(20)*(y(17)/y(3)-1);
T(70) = 2*(y(17)/y(3)-1);
T(71) = (-y(20))/(y(17)*y(17));
T(72) = getPowerDeriv(y(20)/y(17),params(8),1);
T(73) = (1-params(10))*getPowerDeriv(y(17),1-params(8),1);
T(74) = (-y(23))/(y(17)*y(17));
T(75) = getPowerDeriv(y(23)/y(17),params(9),1);
T(76) = (1-params(11))*getPowerDeriv(y(17),1-params(9),1);
T(77) = 1/y(3);
T(78) = params(20)*(y(17)/y(3)-1)+y(17)*params(20)*T(77);
T(79) = (-y(60))/(y(17)*y(17));
T(80) = 2*y(60)/y(17);
T(81) = T(79)*T(80);
T(82) = 1/y(17);
T(83) = T(80)*T(82);
T(84) = params(29)*y(48)*y(35)/y(37);
T(85) = y(48)/y(16);
T(86) = 1/params(7)*getPowerDeriv(y(24)/params(7),params(7),1);
T(87) = 1/y(49)*T(86);
T(88) = params(29)*y(18)*y(48)/y(37);
T(89) = T(4)*T(88);
T(90) = params(29)*(-(y(18)*y(48)*y(35)))/(y(37)*y(37));
T(91) = T(4)*T(90);
T(92) = T(29)*getPowerDeriv(y(6),params(30),1);
T(93) = T(4)*params(29)*y(18)*y(35)/y(37);
T(94) = T(35)*getPowerDeriv(y(7),params(26),1);
T(95) = T(31)*getPowerDeriv(y(8),params(27),1);
T(96) = getPowerDeriv(y(9),params(17),1);
T(97) = getPowerDeriv(y(51),params(8)-1,1);
T(98) = getPowerDeriv(1/y(51),1-params(8),1);
T(99) = (-1)/(y(51)*y(51))*T(98);
T(100) = getPowerDeriv(y(10),params(18),1);
T(101) = getPowerDeriv(y(52),params(8)-1,1);
T(102) = T(33)*getPowerDeriv(y(11),params(28),1);

end
