function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
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
%   residual
%

if T_flag
    T = Model_SOECESPricesMP.static_resid_tt(T, y, x, params);
end
residual = zeros(45, 1);
    residual(1) = (y(42)) - (y(42)*params(35)+(1-params(35))*params(32)+params(37)*(y(8)/params(34)-1)+params(36)*(y(24)/params(33)-1)+x(7));
    residual(2) = (y(8)*y(9)) - (y(8)*y(9)*params(3)*(1+y(42)));
    residual(3) = (y(34)) - (y(6)*y(38)/y(8));
    residual(4) = (y(7)) - (y(1)-y(1)*(1-params(2)));
    residual(5) = (y(9)) - (T(1)/y(8));
    residual(6) = (y(10)) - ((y(9)*y(3)/params(4))^(1/params(5)));
    residual(7) = (y(9)*y(11)) - (y(9)*params(3)*y(11)*(1-params(2)+y(12)/y(11)));
    residual(8) = (y(9)*y(6)*y(36)) - (y(36)*y(9)*params(3)*y(6)*(1+y(13)));
    residual(9) = (y(13)) - (params(31)+T(2)-1);
    residual(10) = (y(33)) - (T(4)*T(5));
    residual(11) = (y(32)) - (y(33));
    residual(12) = (y(12)) - (params(7)*y(32)*y(14)/y(1));
    residual(13) = (y(3)) - (y(14)*(1-params(7))*y(32)/y(10));
    residual(14) = (y(33)*params(23)/y(4)) - (params(23)-1);
residual(15) = y(28);
    residual(16) = (y(30)) - (y(14)*(y(4)-y(33))-y(14)*y(4)*y(28));
    residual(17) = (y(14)) - (y(28)+y(15)+y(17)+y(19));
    residual(18) = (y(19)) - (T(6)*y(41));
    residual(19) = (y(24)) - (y(14)*y(4));
    residual(20) = (y(25)) - (y(24)*4);
    residual(21) = (y(15)) - (y(2)*T(7)*T(8));
    residual(22) = (y(16)) - (T(8)*y(2)*T(9));
    residual(23) = (y(8)^(1-params(8))) - (T(10)*T(11));
    residual(24) = (y(17)) - (y(7)*T(12)*T(13));
    residual(25) = (y(18)) - (T(13)*y(7)*T(14));
    residual(26) = (y(11)) - (1/y(40)*T(16));
    residual(27) = (y(6)*y(38)*params(21)/y(5)) - (params(21)-1);
residual(28) = y(29);
    residual(29) = (y(27)) - (y(29)+y(16)+y(18));
    residual(30) = (y(31)) - (y(27)*(y(5)-y(6)*params(22))-y(27)*y(5)*y(29));
    residual(31) = (y(20)) - (y(4)*y(19));
    residual(32) = (y(21)) - (y(5)*y(27));
    residual(33) = (y(22)) - (y(20)-y(21));
    residual(34) = (y(31)+y(22)) - (y(6)*y(36)*y(23)+y(23)*y(36)*y(6)*(-(1+y(13))));
    residual(35) = (y(26)) - ((y(20)+y(21))/y(24));
    residual(36) = (y(35)) - (y(6)*y(36)*y(23)+y(8)*y(2)+y(7)*y(11)-y(10)*y(3)-y(1)*y(12)-y(23)*y(36)*y(6)*(1+y(13))-y(30)-y(31));
    residual(37) = (y(36)) - (y(36)^params(30)*T(17)*(1+x(2)));
    residual(38) = (y(38)) - (y(38)^params(27)*T(18)*(1+x(3)));
    residual(39) = (y(41)) - (y(41)^params(28)*T(19)*(1+x(4)));
    residual(40) = (y(37)) - (y(37)^params(26)*T(20)*(1+x(1)));
    residual(41) = (y(39)) - (y(39)^params(17)*(1+x(5)));
    residual(42) = (y(40)) - (y(40)^params(18)*(1+x(6)));
    residual(43) = (y(43)) - (y(24));
    residual(44) = (y(44)) - (y(2));
    residual(45) = (y(45)) - (y(7));

end
