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
    T = ModelRBCPrice.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(16, 29);
g1(1,11)=1;
g1(2,1)=(-(T(1)*(-(2*(y(5)-y(1))))-(1-params(3))));
g1(2,5)=(-(1+T(1)*2*(y(5)-y(1))));
g1(2,9)=1;
g1(3,6)=(-(getPowerDeriv(y(6),(-params(1)),1)));
g1(3,8)=T(21);
g1(3,10)=T(29);
g1(3,20)=T(34);
g1(4,7)=(-(T(19)/y(10)));
g1(4,10)=(-((-T(3))/(y(10)*y(10))));
g1(5,1)=T(2)*(-params(11));
g1(5,5)=params(11)*T(2)-T(4)*(-params(11));
g1(5,21)=(-(params(11)*T(4)));
g1(5,8)=(1+params(11)*(y(5)-y(1)))*T(21);
g1(5,23)=(-((1-params(3)+y(25)+params(11)*(y(21)-y(5)))*T(26)));
g1(5,10)=(1+params(11)*(y(5)-y(1)))*T(29);
g1(5,24)=(-((1-params(3)+y(25)+params(11)*(y(21)-y(5)))*T(30)));
g1(5,25)=(-T(4));
g1(5,20)=(1+params(11)*(y(5)-y(1)))*T(34);
g1(5,27)=(-((1-params(3)+y(25)+params(11)*(y(21)-y(5)))*T(35)));
g1(6,12)=(-(T(14)*1/y(18)*T(31)));
g1(6,13)=1;
g1(6,18)=(-(T(14)*T(5)*(-1)/(y(18)*y(18))));
g1(7,2)=(-(T(6)*T(20)*2*T(7)));
g1(7,8)=(-(T(6)*2*T(7)*T(22)));
g1(7,14)=1;
g1(8,6)=(-1);
g1(8,9)=(-1);
g1(8,14)=(-1);
g1(8,15)=1;
g1(9,13)=(-1);
g1(9,16)=1;
g1(10,5)=y(12);
g1(10,7)=1;
g1(10,8)=(-y(15));
g1(10,12)=y(5);
g1(10,14)=1;
g1(10,15)=(-y(8));
g1(10,17)=1;
g1(11,6)=y(26)*T(10)*T(9)*params(2)*params(9)*T(15)*T(16)/y(15);
g1(11,22)=y(26)*T(10)*T(18)/y(15);
g1(11,2)=(-((y(2)*y(8)*params(9)*T(20)-y(8)*params(9)*T(7))/(y(2)*y(2))));
g1(11,8)=(-(y(13)*params(10)))/(y(8)*y(8))-((params(9)*T(7)+y(8)*params(9)*T(22))/y(2)-y(26)*(T(10)*T(8)*T(23)+T(8)*T(9)*T(25))/y(15));
g1(11,23)=y(26)*(T(10)*T(8)*T(27)+T(8)*T(9)*T(28))/y(15);
g1(11,13)=params(10)/y(8);
g1(11,15)=(-(T(8)*T(9)*T(10)*y(26)))/(y(15)*y(15));
g1(11,26)=T(8)*T(9)*T(10)/y(15);
g1(12,1)=(-((-(y(15)*params(4)*y(16)))/(y(1)*y(1))));
g1(12,12)=1;
g1(12,15)=(-(params(4)*y(16)/y(1)));
g1(12,16)=(-(params(4)*y(15)/y(1)));
g1(13,7)=(-((-(y(15)*(1-params(4))*y(16)))/(y(7)*y(7))));
g1(13,15)=(-((1-params(4))*y(16)/y(7)));
g1(13,16)=(-((1-params(4))*y(15)/y(7)));
g1(14,3)=(-((1+x(it_, 1))*T(32)));
g1(14,18)=1;
g1(14,28)=(-T(12));
g1(15,2)=(-T(20));
g1(15,8)=(-T(22));
g1(15,19)=1;
g1(16,4)=(-((1+x(it_, 2))*T(33)));
g1(16,20)=1;
g1(16,29)=(-T(13));

end
