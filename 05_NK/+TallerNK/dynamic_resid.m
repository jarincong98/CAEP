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
    T = TallerNK.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(14, 1);
    residual(1) = (y(9)) - (0.5*y(2)+params(1)*0.5*y(21)+y(6)*T(2));
    residual(2) = (y(6)) - (T(1)*(y(11)-y(21)-y(13))+1/(1+params(15))*y(20)+params(15)/(1+params(15))*y(1));
    residual(3) = (y(13)) - (params(12)+params(2)*(y(14)-y(4)));
    residual(4) = (y(11)) - (params(14)*y(3)+(1-params(14))*(y(9)*params(8)+y(6)*params(9))+y(15));
    residual(5) = (y(15)) - (params(10)*y(5)+x(it_, 2));
    residual(6) = (y(14)) - (y(4)*params(11)+x(it_, 1));
    residual(7) = (y(6)) - (y(7)-y(8));
    residual(8) = (y(8)) - ((-((1-params(4))*(params(13)-log(1-params(4)))))/(params(4)+params(3)+(1-params(4))*params(2))+(1+params(3))/(params(4)+params(3)+(1-params(4))*params(2))*y(4));
    residual(9) = (y(7)) - (y(4)+(1-params(4))*y(10));
    residual(10) = (y(12)) - (y(11)-y(21));
    residual(11) = (y(16)) - (y(11)*4);
    residual(12) = (y(18)) - (y(12)*4);
    residual(13) = (y(19)) - (y(13)*4);
    residual(14) = (y(17)) - (y(9)*4);

end
