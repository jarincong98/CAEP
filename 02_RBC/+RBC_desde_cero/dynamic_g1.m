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
    T = RBC_desde_cero.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(8, 13);
g1(1,3)=T(1)*1/(1-y(4));
g1(1,4)=T(1)*y(3)/((1-y(4))*(1-y(4)))-T(14);
g1(1,1)=(-T(4));
g1(1,2)=(-(T(3)*(1-params(2))*exp(y(1))*T(19)));
g1(2,3)=(-1)/(y(3)*y(3));
g1(2,11)=(-(T(9)*T(12)));
g1(2,12)=(-(T(5)*T(18)));
g1(2,5)=(-(T(5)*T(8)));
g1(2,6)=(-(T(5)*T(21)));
g1(3,2)=(-(1-params(5)));
g1(3,6)=(1+params(4))*(1+params(6));
g1(3,7)=(-1);
g1(4,3)=(-1);
g1(4,7)=(-1);
g1(4,8)=1;
g1(5,4)=T(16);
g1(5,1)=(-T(11));
g1(5,2)=(-(T(10)*exp(y(1))*T(19)));
g1(5,8)=1;
g1(6,1)=(-params(7));
g1(6,5)=1;
g1(6,13)=(-1);
g1(7,9)=1;
g1(7,10)=(-(1-params(2)));
g1(8,4)=(-((-y(8))/(y(4)*y(4))));
g1(8,8)=(-(1/y(4)));
g1(8,10)=1;

end
