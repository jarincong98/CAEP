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
    T = ModelRBCPrice.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(16, 1);
    residual(1) = (y(11)) - (1);
    residual(2) = (y(9)) - (y(5)-(1-params(3))*y(1)+T(1)*(y(5)-y(1))^2);
    residual(3) = (T(2)) - (y(6)^(-params(1)));
    residual(4) = (1) - (T(3)/y(10));
    residual(5) = (T(2)*(1+params(11)*(y(5)-y(1)))) - (T(4)*(1-params(3)+y(25)+params(11)*(y(21)-y(5))));
    residual(6) = (y(13)) - (1/y(18)*T(5)*T(14));
    residual(7) = (y(14)) - (T(6)*T(7)^2);
    residual(8) = (y(15)) - (y(14)+y(9)+y(6));
    residual(9) = (y(16)) - (y(13));
    residual(10) = (y(17)) - (y(8)*y(15)-y(7)-y(5)*y(12)-y(14));
    residual(11) = (y(13)*params(10)/y(8)) - (params(10)-1+y(8)*params(9)*T(7)/y(2)-T(8)*T(9)*T(10)*y(26)/y(15));
    residual(12) = (y(12)) - (y(15)*params(4)*y(16)/y(1));
    residual(13) = (1) - (y(15)*(1-params(4))*y(16)/y(7));
    residual(14) = (y(18)) - (T(12)*(1+x(it_, 1)));
    residual(15) = (y(19)) - (T(7));
    residual(16) = (y(20)) - (T(13)*(1+x(it_, 2)));

end
