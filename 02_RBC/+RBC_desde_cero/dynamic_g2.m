function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
% function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
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
%   g2
%

if T_flag
    T = RBC_desde_cero.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
g2_i = zeros(40,1);
g2_j = zeros(40,1);
g2_v = zeros(40,1);

g2_i(1)=1;
g2_i(2)=1;
g2_i(3)=1;
g2_i(4)=1;
g2_i(5)=1;
g2_i(6)=1;
g2_i(7)=1;
g2_i(8)=1;
g2_i(9)=1;
g2_i(10)=1;
g2_i(11)=1;
g2_i(12)=2;
g2_i(13)=2;
g2_i(14)=2;
g2_i(15)=2;
g2_i(16)=2;
g2_i(17)=2;
g2_i(18)=2;
g2_i(19)=2;
g2_i(20)=2;
g2_i(21)=2;
g2_i(22)=2;
g2_i(23)=2;
g2_i(24)=2;
g2_i(25)=2;
g2_i(26)=2;
g2_i(27)=2;
g2_i(28)=2;
g2_i(29)=5;
g2_i(30)=5;
g2_i(31)=5;
g2_i(32)=5;
g2_i(33)=5;
g2_i(34)=5;
g2_i(35)=5;
g2_i(36)=5;
g2_i(37)=5;
g2_i(38)=8;
g2_i(39)=8;
g2_i(40)=8;
g2_j(1)=30;
g2_j(2)=42;
g2_j(3)=43;
g2_j(4)=40;
g2_j(5)=4;
g2_j(6)=41;
g2_j(7)=17;
g2_j(8)=1;
g2_j(9)=2;
g2_j(10)=14;
g2_j(11)=15;
g2_j(12)=29;
g2_j(13)=141;
g2_j(14)=142;
g2_j(15)=154;
g2_j(16)=135;
g2_j(17)=63;
g2_j(18)=136;
g2_j(19)=76;
g2_j(20)=155;
g2_j(21)=148;
g2_j(22)=64;
g2_j(23)=149;
g2_j(24)=77;
g2_j(25)=57;
g2_j(26)=58;
g2_j(27)=70;
g2_j(28)=71;
g2_j(29)=43;
g2_j(30)=40;
g2_j(31)=4;
g2_j(32)=41;
g2_j(33)=17;
g2_j(34)=1;
g2_j(35)=2;
g2_j(36)=14;
g2_j(37)=15;
g2_j(38)=43;
g2_j(39)=47;
g2_j(40)=95;
g2_v(1)=T(1)*1/((1-y(4))*(1-y(4)));
g2_v(2)=g2_v(1);
g2_v(3)=T(1)*(-(y(3)*((-(1-y(4)))-(1-y(4)))))/((1-y(4))*(1-y(4))*(1-y(4))*(1-y(4)))-(1-params(2))*exp(y(1))*T(2)*getPowerDeriv(y(4),(-params(2)),2);
g2_v(4)=(-T(14));
g2_v(5)=g2_v(4);
g2_v(6)=(-(T(13)*(1-params(2))*exp(y(1))*T(19)));
g2_v(7)=g2_v(6);
g2_v(8)=(-T(4));
g2_v(9)=(-(T(3)*(1-params(2))*exp(y(1))*T(19)));
g2_v(10)=g2_v(9);
g2_v(11)=(-(T(3)*(1-params(2))*exp(y(1))*T(22)));
g2_v(12)=(y(3)+y(3))/(y(3)*y(3)*y(3)*y(3));
g2_v(13)=(-(T(9)*params(3)/(1+params(4))*(y(11)+y(11))/(y(11)*y(11)*y(11)*y(11))));
g2_v(14)=(-(T(12)*T(18)));
g2_v(15)=g2_v(14);
g2_v(16)=(-(T(8)*T(12)));
g2_v(17)=g2_v(16);
g2_v(18)=(-(T(12)*T(21)));
g2_v(19)=g2_v(18);
g2_v(20)=(-(T(5)*T(6)*getPowerDeriv(y(12),1-params(2),2)));
g2_v(21)=(-(T(5)*T(18)));
g2_v(22)=g2_v(21);
g2_v(23)=(-(T(5)*T(17)*T(20)));
g2_v(24)=g2_v(23);
g2_v(25)=(-(T(5)*T(8)));
g2_v(26)=(-(T(5)*T(21)));
g2_v(27)=g2_v(26);
g2_v(28)=(-(T(5)*T(7)*params(2)*exp(y(5))*getPowerDeriv(y(6),params(2)-1,2)));
g2_v(29)=(-(exp(y(1))*T(2)*getPowerDeriv(y(4),1-params(2),2)));
g2_v(30)=T(16);
g2_v(31)=g2_v(30);
g2_v(32)=(-(T(15)*exp(y(1))*T(19)));
g2_v(33)=g2_v(32);
g2_v(34)=(-T(11));
g2_v(35)=(-(T(10)*exp(y(1))*T(19)));
g2_v(36)=g2_v(35);
g2_v(37)=(-(T(10)*exp(y(1))*T(22)));
g2_v(38)=(-((-((-y(8))*(y(4)+y(4))))/(y(4)*y(4)*y(4)*y(4))));
g2_v(39)=(-((-1)/(y(4)*y(4))));
g2_v(40)=g2_v(39);
g2 = sparse(g2_i,g2_j,g2_v,8,169);
end
