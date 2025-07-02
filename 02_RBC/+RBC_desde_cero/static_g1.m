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
    T = RBC_desde_cero.static_g1_tt(T, y, x, params);
end
g1 = zeros(8, 8);
g1(1,1)=params(1)/(1-params(1))*1/(1-y(2));
g1(1,2)=params(1)/(1-params(1))*y(1)/((1-y(2))*(1-y(2)))-(1-params(2))*exp(y(3))*T(1)*getPowerDeriv(y(2),(-params(2)),1);
g1(1,3)=(-T(3));
g1(1,4)=(-(T(2)*(1-params(2))*exp(y(3))*T(9)));
g1(2,1)=(-1)/(y(1)*y(1))-T(7)*params(3)/(1+params(4))*(-1)/(y(1)*y(1));
g1(2,2)=(-(T(4)*T(5)*T(8)));
g1(2,3)=(-(T(4)*T(5)*T(6)));
g1(2,4)=(-(T(4)*T(6)*params(2)*exp(y(3))*getPowerDeriv(y(4),params(2)-1,1)));
g1(3,4)=(1+params(4))*(1+params(6))-(1-params(5));
g1(3,5)=(-1);
g1(4,1)=(-1);
g1(4,5)=(-1);
g1(4,6)=1;
g1(5,2)=(-(exp(y(3))*T(1)*T(8)));
g1(5,3)=(-(T(6)*exp(y(3))*T(1)));
g1(5,4)=(-(T(6)*exp(y(3))*T(9)));
g1(5,6)=1;
g1(6,3)=1-params(7);
g1(7,7)=1;
g1(7,8)=(-(1-params(2)));
g1(8,2)=(-((-y(6))/(y(2)*y(2))));
g1(8,6)=(-(1/y(2)));
g1(8,8)=1;

end
