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
    T = ModelRBCPrice.static_g1_tt(T, y, x, params);
end
g1 = zeros(16, 16);
g1(1,7)=1;
g1(2,1)=(-(1-(1-params(3))));
g1(2,5)=1;
g1(3,2)=(-(getPowerDeriv(y(2),(-params(1)),1)));
g1(3,4)=y(6)/y(16);
g1(3,6)=y(4)/y(16);
g1(3,16)=(-(y(4)*y(6)))/(y(16)*y(16));
g1(4,3)=(-(params(5)*getPowerDeriv(y(3),params(6),1)/y(6)));
g1(4,6)=(-((-T(1))/(y(6)*y(6))));
g1(5,4)=y(6)/y(16)-(1-params(3)+y(8))*y(6)*params(2)/y(16);
g1(5,6)=y(4)/y(16)-(1-params(3)+y(8))*y(4)*params(2)/y(16);
g1(5,8)=(-(y(6)*y(4)*params(2)/y(16)));
g1(5,16)=(-(y(4)*y(6)))/(y(16)*y(16))-(1-params(3)+y(8))*(-(y(6)*y(4)*params(2)))/(y(16)*y(16));
g1(6,8)=(-(T(3)*1/y(14)*1/params(4)*getPowerDeriv(y(8)/params(4),params(4),1)));
g1(6,9)=1;
g1(6,14)=(-(T(3)*T(2)*(-1)/(y(14)*y(14))));
g1(7,10)=1;
g1(8,2)=(-1);
g1(8,5)=(-1);
g1(8,10)=(-1);
g1(8,11)=1;
g1(9,9)=(-1);
g1(9,12)=1;
g1(10,1)=y(8);
g1(10,3)=1;
g1(10,4)=(-y(11));
g1(10,8)=y(1);
g1(10,10)=1;
g1(10,11)=(-y(4));
g1(10,13)=1;
g1(11,4)=(-(y(9)*params(10)))/(y(4)*y(4));
g1(11,9)=params(10)/y(4);
g1(12,1)=(-((-(y(11)*params(4)*y(12)))/(y(1)*y(1))));
g1(12,8)=1;
g1(12,11)=(-(params(4)*y(12)/y(1)));
g1(12,12)=(-(params(4)*y(11)/y(1)));
g1(13,3)=(-((-(y(11)*(1-params(4))*y(12)))/(y(3)*y(3))));
g1(13,11)=(-((1-params(4))*y(12)/y(3)));
g1(13,12)=(-((1-params(4))*y(11)/y(3)));
g1(14,14)=1-(1+x(1))*T(4)*getPowerDeriv(y(14),params(7),1);
g1(15,15)=1;
g1(16,16)=1-(1+x(2))*getPowerDeriv(y(16),params(12),1);

end
