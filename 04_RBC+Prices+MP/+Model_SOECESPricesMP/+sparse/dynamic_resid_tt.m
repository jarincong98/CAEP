function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 38
    T = [T; NaN(38 - size(T, 1), 1)];
end
T(1) = params(6)/2;
T(2) = y(46)^(-params(1));
T(3) = 1-params(2)+params(6)*(y(89)-y(45))+y(100)/y(99);
T(4) = exp(params(29)*(y(50)*y(80)*y(67)/y(69)-params(13)));
T(5) = (y(56)/params(7))^params(7);
T(6) = 1/y(81)*T(5);
T(7) = (y(47)/(1-params(7)))^(1-params(7));
T(8) = params(3)*(y(90)/y(46))^(-params(1));
T(9) = y(92)/y(48)-1;
T(10) = params(19)*T(8)*T(9);
T(11) = (y(92)/y(48))^2;
T(12) = params(19)/2;
T(13) = (y(50)*y(80)/y(48))^params(12);
T(14) = params(10)*(y(52)/y(48))^params(8);
T(15) = y(83)^(params(8)-1);
T(16) = (1-params(10))*(y(52)/y(49))^params(8);
T(17) = (1/y(83))^(1-params(8));
T(18) = params(10)*y(48)^(1-params(8))+(1-params(10))*y(49)^(1-params(8));
T(19) = params(11)*(y(55)/y(48))^params(9);
T(20) = y(84)^(params(8)-1);
T(21) = (1-params(11))*(y(55)/y(49))^params(9);
T(22) = 1/y(84);
T(23) = params(11)*y(48)^(1-params(9))+(1-params(11))*y(49)^(1-params(9));
T(24) = T(23)^(1/(1-params(9)));
T(25) = y(93)/y(49)-1;
T(26) = T(8)*params(20)*T(25);
T(27) = (y(93)/y(49))^2;
T(28) = params(20)/2;
T(29) = params(16)^(1-params(30));
T(30) = y(36)^params(30)*T(29);
T(31) = params(22)^(1-params(27));
T(32) = y(38)^params(27)*T(31);
T(33) = params(14)^(1-params(28));
T(34) = y(41)^params(28)*T(33);
T(35) = params(15)^(1-params(26));
T(36) = y(37)^params(26)*T(35);
T(37) = y(39)^params(17);
T(38) = y(40)^params(18);
end
