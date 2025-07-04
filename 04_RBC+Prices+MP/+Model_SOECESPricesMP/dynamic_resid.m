function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = Model_SOECESPricesMP.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(42, 1);
    residual(1) = (y(54)) - (params(35)*y(12)+(1-params(35))*params(32)+params(37)*(y(20)/params(34)-1)+params(36)*(y(36)/params(33)-1)+x(it_, 7));
    residual(2) = (y(20)*y(21)) - (params(3)*y(61)*y(60)*(1+y(54)));
    residual(3) = (y(46)) - (y(18)*y(50)/y(20));
    residual(4) = (y(19)) - (y(13)-(1-params(2))*y(1)+T(1)*(y(13)-y(1))^2);
    residual(5) = (y(21)) - (T(2)/y(20));
    residual(6) = (y(22)) - ((y(21)*y(15)/params(4))^(1/params(5)));
    residual(7) = (y(21)*y(23)*(1+params(6)*(y(13)-y(1)))) - (params(3)*y(61)*y(62)*T(3));
    residual(8) = (y(21)*y(18)*y(48)) - (params(3)*y(61)*y(59)*y(66)*(1+y(25)));
    residual(9) = (y(25)) - (params(31)+T(4)-1);
    residual(10) = (y(45)) - (T(6)*T(7));
    residual(11) = (y(44)) - (y(45));
    residual(12) = (y(24)) - (params(7)*y(44)*y(26)/y(1));
    residual(13) = (y(15)) - (y(26)*(1-params(7))*y(44)/y(22));
    residual(14) = (y(45)*params(23)/y(16)) - (params(23)-1+y(16)*params(19)*(y(16)/y(2)-1)/y(2)-T(10)*T(11)*y(64)/y(26));
    residual(15) = (y(40)) - (T(12)*(y(16)/y(2)-1)^2);
    residual(16) = (y(42)) - (y(26)*(y(16)-y(45))-y(26)*y(16)*y(40));
    residual(17) = (y(26)) - (y(40)+y(27)+y(29)+y(31));
    residual(18) = (y(31)) - (T(13)*y(53));
    residual(19) = (y(36)) - (y(26)*y(16));
    residual(20) = (y(37)) - (y(36)*4);
    residual(21) = (y(27)) - (y(14)*T(14)*T(15));
    residual(22) = (y(28)) - (T(15)*y(14)*T(16));
    residual(23) = (y(20)^(1-params(8))) - (T(17)*T(18));
    residual(24) = (y(29)) - (y(19)*T(19)*T(20));
    residual(25) = (y(30)) - (T(20)*y(19)*T(21));
    residual(26) = (y(23)) - (T(22)*T(24));
    residual(27) = (y(18)*y(50)*params(21)/y(17)) - (params(21)-1+y(17)*params(20)*(y(17)/y(3)-1)/y(3)-T(26)*T(27)*y(65)/y(39));
    residual(28) = (y(41)) - (T(28)*(y(17)/y(3)-1)^2);
    residual(29) = (y(39)) - (y(41)+y(28)+y(30));
    residual(30) = (y(43)) - (y(39)*(y(17)-y(18)*params(22))-y(39)*y(17)*y(41));
    residual(31) = (y(32)) - (y(16)*y(31));
    residual(32) = (y(33)) - (y(17)*y(39));
    residual(33) = (y(34)) - (y(32)-y(33));
    residual(34) = (y(43)+y(34)) - (y(18)*y(48)*y(35)+y(48)*y(18)*(-(1+y(4)))*y(5));
    residual(35) = (y(38)) - ((y(32)+y(33))/y(36));
    residual(36) = (y(47)) - (y(18)*y(48)*y(35)+y(20)*y(14)+y(19)*y(23)-y(22)*y(15)-y(13)*y(24)-y(5)*y(48)*y(18)*(1+y(4))-y(42)-y(43));
    residual(37) = (y(48)) - (T(30)*(1+x(it_, 2)));
    residual(38) = (y(50)) - (T(32)*(1+x(it_, 3)));
    residual(39) = (y(53)) - (T(34)*(1+x(it_, 4)));
    residual(40) = (y(49)) - (T(36)*(1+x(it_, 1)));
    residual(41) = (y(51)) - (T(37)*(1+x(it_, 5)));
    residual(42) = (y(52)) - (T(38)*(1+x(it_, 6)));

end
