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
    T = TallerNK.static_g1_tt(T, y, x, params);
end
g1 = zeros(14, 14);
g1(1,1)=(-T(1));
g1(1,4)=1-(0.5+params(1)*0.5);
g1(2,1)=1-(1/(1+params(15))+params(15)/(1+params(15)));
g1(2,4)=T(2);
g1(2,6)=(-T(2));
g1(2,8)=T(2);
g1(3,8)=1;
g1(4,1)=(-((1-params(14))*params(9)));
g1(4,4)=(-((1-params(14))*params(8)));
g1(4,6)=1-params(14);
g1(4,10)=(-1);
g1(5,10)=1-params(10);
g1(6,9)=1-params(11);
g1(7,1)=1;
g1(7,2)=(-1);
g1(7,3)=1;
g1(8,3)=1;
g1(8,9)=(-((1+params(3))/(params(4)+params(3)+(1-params(4))*params(2))));
g1(9,2)=1;
g1(9,5)=(-(1-params(4)));
g1(9,9)=(-1);
g1(10,4)=1;
g1(10,6)=(-1);
g1(10,7)=1;
g1(11,6)=(-4);
g1(11,11)=1;
g1(12,7)=(-4);
g1(12,13)=1;
g1(13,8)=(-4);
g1(13,14)=1;
g1(14,4)=(-4);
g1(14,12)=1;

end
