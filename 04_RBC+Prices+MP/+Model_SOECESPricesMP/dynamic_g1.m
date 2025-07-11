function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = Model_SOECESPricesMP.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(45, 76);
g1(1,20)=(-(params(37)*1/params(34)));
g1(1,36)=(-(params(36)*1/params(33)));
g1(1,12)=(-params(35));
g1(1,54)=1;
g1(1,76)=(-1);
g1(2,20)=y(21);
g1(2,63)=(-(params(3)*y(64)*(1+y(54))));
g1(2,21)=y(20);
g1(2,64)=(-((1+y(54))*params(3)*y(63)));
g1(2,54)=(-(params(3)*y(64)*y(63)));
g1(3,18)=(-(y(50)/y(20)));
g1(3,20)=(-((-(y(18)*y(50)))/(y(20)*y(20))));
g1(3,46)=1;
g1(3,50)=(-(y(18)/y(20)));
g1(4,1)=(-(T(1)*(-(2*(y(13)-y(1))))-(1-params(2))));
g1(4,13)=(-(1+T(1)*2*(y(13)-y(1))));
g1(4,19)=1;
g1(5,14)=(-(T(39)/y(20)));
g1(5,20)=(-((-T(2))/(y(20)*y(20))));
g1(5,21)=1;
g1(6,15)=(-(T(46)*T(47)));
g1(6,21)=(-(T(47)*y(15)/params(4)));
g1(6,22)=1;
g1(7,1)=y(21)*y(23)*(-params(6));
g1(7,13)=params(6)*y(21)*y(23)-params(3)*y(64)*y(65)*(-params(6));
g1(7,58)=(-(params(6)*params(3)*y(64)*y(65)));
g1(7,21)=y(23)*(1+params(6)*(y(13)-y(1)));
g1(7,64)=(-(T(3)*params(3)*y(65)));
g1(7,23)=y(21)*(1+params(6)*(y(13)-y(1)));
g1(7,65)=(-(params(3)*y(64)*T(3)+params(3)*y(64)*y(65)*(-y(66))/(y(65)*y(65))));
g1(7,66)=(-(params(3)*y(64)*y(65)*1/y(65)));
g1(8,18)=y(21)*y(48);
g1(8,62)=(-((1+y(25))*params(3)*y(64)*y(69)));
g1(8,21)=y(18)*y(48);
g1(8,64)=(-((1+y(25))*y(69)*params(3)*y(62)));
g1(8,25)=(-(params(3)*y(64)*y(62)*y(69)));
g1(8,48)=y(21)*y(18);
g1(8,69)=(-(params(3)*y(64)*y(62)*(1+y(25))));
g1(9,18)=(-(T(4)*T(84)));
g1(9,25)=1;
g1(9,35)=(-T(89));
g1(9,37)=(-T(91));
g1(9,48)=(-T(93));
g1(10,15)=(-(T(6)*T(48)));
g1(10,24)=(-(T(7)*T(87)));
g1(10,45)=1;
g1(10,49)=(-(T(7)*T(5)*(-1)/(y(49)*y(49))));
g1(11,44)=1;
g1(11,45)=(-1);
g1(12,1)=(-((-(params(7)*y(44)*y(26)))/(y(1)*y(1))));
g1(12,24)=1;
g1(12,26)=(-(params(7)*y(44)/y(1)));
g1(12,44)=(-(params(7)*y(26)/y(1)));
g1(13,15)=1;
g1(13,22)=(-((-(y(26)*(1-params(7))*y(44)))/(y(22)*y(22))));
g1(13,26)=(-((1-params(7))*y(44)/y(22)));
g1(13,44)=(-((1-params(7))*y(26)/y(22)));
g1(14,14)=y(67)*T(11)*T(9)*params(19)*params(3)*T(40)*T(41)/y(26);
g1(14,59)=y(67)*T(11)*T(43)/y(26);
g1(14,2)=(-(T(50)/(y(2)*y(2))));
g1(14,16)=(-(y(45)*params(23)))/(y(16)*y(16))-(T(53)/y(2)-y(67)*(T(11)*params(19)*T(8)*T(54)+T(10)*T(56))/y(26));
g1(14,60)=y(67)*(T(11)*params(19)*T(8)*T(66)+T(10)*T(67))/y(26);
g1(14,26)=(-(T(10)*T(11)*y(67)))/(y(26)*y(26));
g1(14,67)=T(10)*T(11)/y(26);
g1(14,45)=params(23)/y(16);
g1(15,2)=(-(T(12)*T(49)*T(51)));
g1(15,16)=(-(T(12)*T(51)*T(52)));
g1(15,40)=1;
g1(16,16)=(-(y(26)-y(26)*y(40)));
g1(16,26)=(-(y(16)-y(45)-y(16)*y(40)));
g1(16,40)=y(26)*y(16);
g1(16,42)=1;
g1(16,45)=y(26);
g1(17,26)=1;
g1(17,27)=(-1);
g1(17,29)=(-1);
g1(17,31)=(-1);
g1(17,40)=(-1);
g1(18,16)=(-(y(53)*T(57)*T(58)));
g1(18,18)=(-(y(53)*T(58)*T(85)));
g1(18,31)=1;
g1(18,48)=(-(y(53)*T(58)*y(18)/y(16)));
g1(18,53)=(-T(13));
g1(19,16)=(-y(26));
g1(19,26)=(-y(16));
g1(19,36)=1;
g1(20,36)=(-4);
g1(20,37)=1;
g1(21,14)=(-(T(14)*T(15)));
g1(21,16)=(-(T(15)*y(14)*params(10)*T(59)*T(60)));
g1(21,20)=(-(T(15)*y(14)*params(10)*T(60)*T(66)));
g1(21,27)=1;
g1(21,51)=(-(y(14)*T(14)*T(97)));
g1(22,14)=(-(T(15)*T(16)));
g1(22,17)=(-(T(15)*y(14)*(1-params(10))*T(71)*T(72)));
g1(22,20)=(-(T(15)*y(14)*(1-params(10))*T(72)*T(82)));
g1(22,28)=1;
g1(22,51)=(-(y(14)*T(16)*T(97)));
g1(23,16)=(-(T(17)*T(61)));
g1(23,17)=(-(T(17)*T(73)));
g1(23,20)=getPowerDeriv(y(20),1-params(8),1);
g1(23,51)=(-(T(18)*T(99)));
g1(24,16)=(-(T(20)*y(19)*params(11)*T(62)*T(63)));
g1(24,19)=(-(T(19)*T(20)));
g1(24,23)=(-(T(20)*y(19)*params(11)*T(63)*T(66)));
g1(24,29)=1;
g1(24,52)=(-(y(19)*T(19)*T(101)));
g1(25,17)=(-(T(20)*y(19)*(1-params(11))*T(74)*T(75)));
g1(25,19)=(-(T(20)*T(21)));
g1(25,23)=(-(T(20)*y(19)*(1-params(11))*T(75)*T(82)));
g1(25,30)=1;
g1(25,52)=(-(y(19)*T(21)*T(101)));
g1(26,16)=(-(T(22)*T(64)*T(65)));
g1(26,17)=(-(T(22)*T(65)*T(76)));
g1(26,23)=1;
g1(26,52)=(-(T(24)*(-1)/(y(52)*y(52))));
g1(27,14)=y(68)*T(27)*T(25)*params(20)*params(3)*T(40)*T(41)/y(39);
g1(27,59)=y(68)*T(27)*T(45)/y(39);
g1(27,3)=(-(T(69)/(y(3)*y(3))));
g1(27,17)=(-(y(18)*y(50)*params(21)))/(y(17)*y(17))-(T(78)/y(3)-y(68)*(T(27)*T(8)*params(20)*T(79)+T(26)*T(81))/y(39));
g1(27,61)=y(68)*(T(27)*T(8)*params(20)*T(82)+T(26)*T(83))/y(39);
g1(27,18)=y(50)*params(21)/y(17);
g1(27,39)=(-(T(26)*T(27)*y(68)))/(y(39)*y(39));
g1(27,68)=T(26)*T(27)/y(39);
g1(27,50)=y(18)*params(21)/y(17);
g1(28,3)=(-(T(28)*T(68)*T(70)));
g1(28,17)=(-(T(28)*T(70)*T(77)));
g1(28,41)=1;
g1(29,28)=(-1);
g1(29,30)=(-1);
g1(29,39)=1;
g1(29,41)=(-1);
g1(30,17)=(-(y(39)-y(39)*y(41)));
g1(30,18)=(-(y(39)*(-params(22))));
g1(30,39)=(-(y(17)-y(18)*params(22)-y(17)*y(41)));
g1(30,41)=y(17)*y(39);
g1(30,43)=1;
g1(31,16)=(-y(31));
g1(31,31)=(-y(16));
g1(31,32)=1;
g1(32,17)=(-y(39));
g1(32,33)=1;
g1(32,39)=(-y(17));
g1(33,32)=(-1);
g1(33,33)=1;
g1(33,34)=1;
g1(34,18)=(-(y(48)*y(35)+y(5)*y(48)*(-(1+y(4)))));
g1(34,4)=(-(y(5)*y(48)*(-y(18))));
g1(34,34)=1;
g1(34,5)=(-(y(48)*y(18)*(-(1+y(4)))));
g1(34,35)=(-(y(18)*y(48)));
g1(34,43)=1;
g1(34,48)=(-(y(18)*y(35)+y(18)*(-(1+y(4)))*y(5)));
g1(35,32)=(-(1/y(36)));
g1(35,33)=(-(1/y(36)));
g1(35,36)=(-((-(y(32)+y(33)))/(y(36)*y(36))));
g1(35,38)=1;
g1(36,13)=y(24);
g1(36,14)=(-y(20));
g1(36,15)=y(22);
g1(36,18)=(-(y(48)*y(35)-y(5)*y(48)*(1+y(4))));
g1(36,19)=(-y(23));
g1(36,20)=(-y(14));
g1(36,22)=y(15);
g1(36,23)=(-y(19));
g1(36,24)=y(13);
g1(36,4)=y(18)*y(48)*y(5);
g1(36,5)=y(48)*y(18)*(1+y(4));
g1(36,35)=(-(y(18)*y(48)));
g1(36,42)=1;
g1(36,43)=1;
g1(36,47)=1;
g1(36,48)=(-(y(18)*y(35)-y(5)*y(18)*(1+y(4))));
g1(37,6)=(-((1+x(it_, 2))*T(92)));
g1(37,48)=1;
g1(37,71)=(-T(30));
g1(38,8)=(-((1+x(it_, 3))*T(95)));
g1(38,50)=1;
g1(38,72)=(-T(32));
g1(39,11)=(-((1+x(it_, 4))*T(102)));
g1(39,53)=1;
g1(39,73)=(-T(34));
g1(40,7)=(-((1+x(it_, 1))*T(94)));
g1(40,49)=1;
g1(40,70)=(-T(36));
g1(41,9)=(-((1+x(it_, 5))*T(96)));
g1(41,51)=1;
g1(41,74)=(-T(37));
g1(42,10)=(-((1+x(it_, 6))*T(100)));
g1(42,52)=1;
g1(42,75)=(-T(38));
g1(43,36)=(-1);
g1(43,55)=1;
g1(44,14)=(-1);
g1(44,56)=1;
g1(45,19)=(-1);
g1(45,57)=1;

end
