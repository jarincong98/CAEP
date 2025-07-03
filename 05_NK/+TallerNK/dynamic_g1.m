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
    T = TallerNK.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(14, 23);
g1(1,6)=(-T(2));
g1(1,2)=(-0.5);
g1(1,9)=1;
g1(1,21)=(-(params(1)*0.5));
g1(2,1)=(-(params(15)/(1+params(15))));
g1(2,6)=1;
g1(2,20)=(-(1/(1+params(15))));
g1(2,21)=T(1);
g1(2,11)=(-T(1));
g1(2,13)=T(1);
g1(3,13)=1;
g1(3,4)=params(2);
g1(3,14)=(-params(2));
g1(4,6)=(-((1-params(14))*params(9)));
g1(4,9)=(-((1-params(14))*params(8)));
g1(4,3)=(-params(14));
g1(4,11)=1;
g1(4,15)=(-1);
g1(5,5)=(-params(10));
g1(5,15)=1;
g1(5,23)=(-1);
g1(6,4)=(-params(11));
g1(6,14)=1;
g1(6,22)=(-1);
g1(7,6)=1;
g1(7,7)=(-1);
g1(7,8)=1;
g1(8,8)=1;
g1(8,4)=(-((1+params(3))/(params(4)+params(3)+(1-params(4))*params(2))));
g1(9,7)=1;
g1(9,10)=(-(1-params(4)));
g1(9,4)=(-1);
g1(10,21)=1;
g1(10,11)=(-1);
g1(10,12)=1;
g1(11,11)=(-4);
g1(11,16)=1;
g1(12,12)=(-4);
g1(12,18)=1;
g1(13,13)=(-4);
g1(13,19)=1;
g1(14,9)=(-4);
g1(14,17)=1;

end
