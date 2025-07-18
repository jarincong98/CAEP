function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = Model_SOECESPricesMP.static_g1_tt(T, y, x, params);
end
g1 = zeros(45, 45);
g1(1,8)=(-(params(37)*1/params(34)));
g1(1,24)=(-(params(36)*1/params(33)));
g1(1,42)=1-params(35);
g1(2,8)=y(9)-y(9)*params(3)*(1+y(42));
g1(2,9)=y(8)-(1+y(42))*y(8)*params(3);
g1(2,42)=(-(y(8)*y(9)*params(3)));
g1(3,6)=(-(y(38)/y(8)));
g1(3,8)=(-((-(y(6)*y(38)))/(y(8)*y(8))));
g1(3,34)=1;
g1(3,38)=(-(y(6)/y(8)));
g1(4,1)=(-(1-(1-params(2))));
g1(4,7)=1;
g1(5,2)=(-(getPowerDeriv(y(2),(-params(1)),1)/y(8)));
g1(5,8)=(-((-T(1))/(y(8)*y(8))));
g1(5,9)=1;
g1(6,3)=(-(y(9)/params(4)*T(21)));
g1(6,9)=(-(T(21)*y(3)/params(4)));
g1(6,10)=1;
g1(7,9)=y(11)-(1-params(2)+y(12)/y(11))*params(3)*y(11);
g1(7,11)=y(9)-(y(9)*params(3)*(1-params(2)+y(12)/y(11))+y(9)*params(3)*y(11)*(-y(12))/(y(11)*y(11)));
g1(7,12)=(-(y(9)*params(3)*y(11)*1/y(11)));
g1(8,6)=y(9)*y(36)-(1+y(13))*y(9)*params(3)*y(36);
g1(8,9)=y(6)*y(36)-(1+y(13))*y(36)*params(3)*y(6);
g1(8,13)=(-(y(36)*y(9)*params(3)*y(6)));
g1(8,36)=y(9)*y(6)-y(9)*params(3)*y(6)*(1+y(13));
g1(9,6)=(-(T(2)*params(29)*y(36)*y(23)/y(25)));
g1(9,13)=1;
g1(9,23)=(-(T(2)*params(29)*y(6)*y(36)/y(25)));
g1(9,25)=(-(T(2)*params(29)*(-(y(6)*y(36)*y(23)))/(y(25)*y(25))));
g1(9,36)=(-(T(2)*params(29)*y(6)*y(23)/y(25)));
g1(10,3)=(-(T(4)*1/(1-params(7))*getPowerDeriv(y(3)/(1-params(7)),1-params(7),1)));
g1(10,12)=(-(T(5)*1/y(37)*1/params(7)*getPowerDeriv(y(12)/params(7),params(7),1)));
g1(10,33)=1;
g1(10,37)=(-(T(5)*T(3)*(-1)/(y(37)*y(37))));
g1(11,32)=1;
g1(11,33)=(-1);
g1(12,1)=(-((-(params(7)*y(32)*y(14)))/(y(1)*y(1))));
g1(12,12)=1;
g1(12,14)=(-(params(7)*y(32)/y(1)));
g1(12,32)=(-(params(7)*y(14)/y(1)));
g1(13,3)=1;
g1(13,10)=(-((-(y(14)*(1-params(7))*y(32)))/(y(10)*y(10))));
g1(13,14)=(-((1-params(7))*y(32)/y(10)));
g1(13,32)=(-((1-params(7))*y(14)/y(10)));
g1(14,4)=(-(y(33)*params(23)))/(y(4)*y(4));
g1(14,33)=params(23)/y(4);
g1(15,28)=1;
g1(16,4)=(-(y(14)-y(14)*y(28)));
g1(16,14)=(-(y(4)-y(33)-y(4)*y(28)));
g1(16,28)=y(14)*y(4);
g1(16,30)=1;
g1(16,33)=y(14);
g1(17,14)=1;
g1(17,15)=(-1);
g1(17,17)=(-1);
g1(17,19)=(-1);
g1(17,28)=(-1);
g1(18,4)=(-(y(41)*(-(y(6)*y(36)))/(y(4)*y(4))*T(22)));
g1(18,6)=(-(y(41)*T(22)*y(36)/y(4)));
g1(18,19)=1;
g1(18,36)=(-(y(41)*T(22)*y(6)/y(4)));
g1(18,41)=(-T(6));
g1(19,4)=(-y(14));
g1(19,14)=(-y(4));
g1(19,24)=1;
g1(20,24)=(-4);
g1(20,25)=1;
g1(21,2)=(-(T(7)*T(8)));
g1(21,4)=(-(T(8)*y(2)*params(10)*(-y(8))/(y(4)*y(4))*T(23)));
g1(21,8)=(-(T(8)*y(2)*params(10)*T(23)*1/y(4)));
g1(21,15)=1;
g1(21,39)=(-(y(2)*T(7)*T(28)));
g1(22,2)=(-(T(8)*T(9)));
g1(22,5)=(-(T(8)*y(2)*(1-params(10))*(-y(8))/(y(5)*y(5))*T(26)));
g1(22,8)=(-(T(8)*y(2)*(1-params(10))*T(26)*1/y(5)));
g1(22,16)=1;
g1(22,39)=(-(y(2)*T(9)*T(28)));
g1(23,4)=(-(T(10)*params(10)*getPowerDeriv(y(4),1-params(8),1)));
g1(23,5)=(-(T(10)*(1-params(10))*getPowerDeriv(y(5),1-params(8),1)));
g1(23,8)=getPowerDeriv(y(8),1-params(8),1);
g1(23,39)=(-(T(11)*(-1)/(y(39)*y(39))*getPowerDeriv(1/y(39),1-params(8),1)));
g1(24,4)=(-(T(13)*y(7)*params(11)*(-y(11))/(y(4)*y(4))*T(24)));
g1(24,7)=(-(T(12)*T(13)));
g1(24,11)=(-(T(13)*y(7)*params(11)*T(24)*1/y(4)));
g1(24,17)=1;
g1(24,40)=(-(y(7)*T(12)*T(29)));
g1(25,5)=(-(T(13)*y(7)*(1-params(11))*(-y(11))/(y(5)*y(5))*T(27)));
g1(25,7)=(-(T(13)*T(14)));
g1(25,11)=(-(T(13)*y(7)*(1-params(11))*T(27)*1/y(5)));
g1(25,18)=1;
g1(25,40)=(-(y(7)*T(14)*T(29)));
g1(26,4)=(-(1/y(40)*params(11)*getPowerDeriv(y(4),1-params(9),1)*T(25)));
g1(26,5)=(-(1/y(40)*T(25)*(1-params(11))*getPowerDeriv(y(5),1-params(9),1)));
g1(26,11)=1;
g1(26,40)=(-(T(16)*(-1)/(y(40)*y(40))));
g1(27,5)=(-(y(6)*y(38)*params(21)))/(y(5)*y(5));
g1(27,6)=y(38)*params(21)/y(5);
g1(27,38)=y(6)*params(21)/y(5);
g1(28,29)=1;
g1(29,16)=(-1);
g1(29,18)=(-1);
g1(29,27)=1;
g1(29,29)=(-1);
g1(30,5)=(-(y(27)-y(27)*y(29)));
g1(30,6)=(-(y(27)*(-params(22))));
g1(30,27)=(-(y(5)-y(6)*params(22)-y(5)*y(29)));
g1(30,29)=y(5)*y(27);
g1(30,31)=1;
g1(31,4)=(-y(19));
g1(31,19)=(-y(4));
g1(31,20)=1;
g1(32,5)=(-y(27));
g1(32,21)=1;
g1(32,27)=(-y(5));
g1(33,20)=(-1);
g1(33,21)=1;
g1(33,22)=1;
g1(34,6)=(-(y(36)*y(23)+y(23)*y(36)*(-(1+y(13)))));
g1(34,13)=(-(y(23)*y(36)*(-y(6))));
g1(34,22)=1;
g1(34,23)=(-(y(6)*y(36)+y(36)*y(6)*(-(1+y(13)))));
g1(34,31)=1;
g1(34,36)=(-(y(6)*y(23)+y(23)*y(6)*(-(1+y(13)))));
g1(35,20)=(-(1/y(24)));
g1(35,21)=(-(1/y(24)));
g1(35,24)=(-((-(y(20)+y(21)))/(y(24)*y(24))));
g1(35,26)=1;
g1(36,1)=y(12);
g1(36,2)=(-y(8));
g1(36,3)=y(10);
g1(36,6)=(-(y(36)*y(23)-y(23)*y(36)*(1+y(13))));
g1(36,7)=(-y(11));
g1(36,8)=(-y(2));
g1(36,10)=y(3);
g1(36,11)=(-y(7));
g1(36,12)=y(1);
g1(36,13)=y(6)*y(36)*y(23);
g1(36,23)=(-(y(6)*y(36)-y(36)*y(6)*(1+y(13))));
g1(36,30)=1;
g1(36,31)=1;
g1(36,35)=1;
g1(36,36)=(-(y(6)*y(23)-y(23)*y(6)*(1+y(13))));
g1(37,36)=1-(1+x(2))*T(17)*getPowerDeriv(y(36),params(30),1);
g1(38,38)=1-(1+x(3))*T(18)*getPowerDeriv(y(38),params(27),1);
g1(39,41)=1-(1+x(4))*T(19)*getPowerDeriv(y(41),params(28),1);
g1(40,37)=1-(1+x(1))*T(20)*getPowerDeriv(y(37),params(26),1);
g1(41,39)=1-(1+x(5))*getPowerDeriv(y(39),params(17),1);
g1(42,40)=1-(1+x(6))*getPowerDeriv(y(40),params(18),1);
g1(43,24)=(-1);
g1(43,43)=1;
g1(44,2)=(-1);
g1(44,44)=1;
g1(45,7)=(-1);
g1(45,45)=1;

end
