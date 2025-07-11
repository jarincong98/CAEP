function [lhs, rhs] = static_resid(y, x, params)
T = NaN(20, 1);
lhs = NaN(45, 1);
rhs = NaN(45, 1);
T(1) = y(2)^(-params(1));
T(2) = exp(params(29)*(y(6)*y(36)*y(23)/y(25)-params(13)));
T(3) = (y(12)/params(7))^params(7);
T(4) = 1/y(37)*T(3);
T(5) = (y(3)/(1-params(7)))^(1-params(7));
T(6) = (y(6)*y(36)/y(4))^params(12);
T(7) = params(10)*(y(8)/y(4))^params(8);
T(8) = y(39)^(params(8)-1);
T(9) = (1-params(10))*(y(8)/y(5))^params(8);
T(10) = (1/y(39))^(1-params(8));
T(11) = params(10)*y(4)^(1-params(8))+(1-params(10))*y(5)^(1-params(8));
T(12) = params(11)*(y(11)/y(4))^params(9);
T(13) = y(40)^(params(8)-1);
T(14) = (1-params(11))*(y(11)/y(5))^params(9);
T(15) = params(11)*y(4)^(1-params(9))+(1-params(11))*y(5)^(1-params(9));
T(16) = T(15)^(1/(1-params(9)));
T(17) = params(16)^(1-params(30));
T(18) = params(22)^(1-params(27));
T(19) = params(14)^(1-params(28));
T(20) = params(15)^(1-params(26));
lhs(1) = y(42);
rhs(1) = y(42)*params(35)+(1-params(35))*params(32)+params(37)*(y(8)/params(34)-1)+params(36)*(y(24)/params(33)-1)+x(7);
lhs(2) = y(8)*y(9);
rhs(2) = y(8)*y(9)*params(3)*(1+y(42));
lhs(3) = y(34);
rhs(3) = y(6)*y(38)/y(8);
lhs(4) = y(7);
rhs(4) = y(1)-y(1)*(1-params(2));
lhs(5) = y(9);
rhs(5) = T(1)/y(8);
lhs(6) = y(10);
rhs(6) = (y(9)*y(3)/params(4))^(1/params(5));
lhs(7) = y(9)*y(11);
rhs(7) = y(9)*params(3)*y(11)*(1-params(2)+y(12)/y(11));
lhs(8) = y(9)*y(6)*y(36);
rhs(8) = y(36)*y(9)*params(3)*y(6)*(1+y(13));
lhs(9) = y(13);
rhs(9) = params(31)+T(2)-1;
lhs(10) = y(33);
rhs(10) = T(4)*T(5);
lhs(11) = y(32);
rhs(11) = y(33);
lhs(12) = y(12);
rhs(12) = params(7)*y(32)*y(14)/y(1);
lhs(13) = y(3);
rhs(13) = y(14)*(1-params(7))*y(32)/y(10);
lhs(14) = y(33)*params(23)/y(4);
rhs(14) = params(23)-1;
lhs(15) = y(28);
rhs(15) = 0;
lhs(16) = y(30);
rhs(16) = y(14)*(y(4)-y(33))-y(14)*y(4)*y(28);
lhs(17) = y(14);
rhs(17) = y(28)+y(15)+y(17)+y(19);
lhs(18) = y(19);
rhs(18) = T(6)*y(41);
lhs(19) = y(24);
rhs(19) = y(14)*y(4);
lhs(20) = y(25);
rhs(20) = y(24)*4;
lhs(21) = y(15);
rhs(21) = y(2)*T(7)*T(8);
lhs(22) = y(16);
rhs(22) = T(8)*y(2)*T(9);
lhs(23) = y(8)^(1-params(8));
rhs(23) = T(10)*T(11);
lhs(24) = y(17);
rhs(24) = y(7)*T(12)*T(13);
lhs(25) = y(18);
rhs(25) = T(13)*y(7)*T(14);
lhs(26) = y(11);
rhs(26) = 1/y(40)*T(16);
lhs(27) = y(6)*y(38)*params(21)/y(5);
rhs(27) = params(21)-1;
lhs(28) = y(29);
rhs(28) = 0;
lhs(29) = y(27);
rhs(29) = y(29)+y(16)+y(18);
lhs(30) = y(31);
rhs(30) = y(27)*(y(5)-y(6)*params(22))-y(27)*y(5)*y(29);
lhs(31) = y(20);
rhs(31) = y(4)*y(19);
lhs(32) = y(21);
rhs(32) = y(5)*y(27);
lhs(33) = y(22);
rhs(33) = y(20)-y(21);
lhs(34) = y(31)+y(22);
rhs(34) = y(6)*y(36)*y(23)+y(23)*y(36)*y(6)*(-(1+y(13)));
lhs(35) = y(26);
rhs(35) = (y(20)+y(21))/y(24);
lhs(36) = y(35);
rhs(36) = y(6)*y(36)*y(23)+y(8)*y(2)+y(7)*y(11)-y(10)*y(3)-y(1)*y(12)-y(23)*y(36)*y(6)*(1+y(13))-y(30)-y(31);
lhs(37) = y(36);
rhs(37) = y(36)^params(30)*T(17)*(1+x(2));
lhs(38) = y(38);
rhs(38) = y(38)^params(27)*T(18)*(1+x(3));
lhs(39) = y(41);
rhs(39) = y(41)^params(28)*T(19)*(1+x(4));
lhs(40) = y(37);
rhs(40) = y(37)^params(26)*T(20)*(1+x(1));
lhs(41) = y(39);
rhs(41) = y(39)^params(17)*(1+x(5));
lhs(42) = y(40);
rhs(42) = y(40)^params(18)*(1+x(6));
lhs(43) = y(43);
rhs(43) = y(24);
lhs(44) = y(44);
rhs(44) = y(2);
lhs(45) = y(45);
rhs(45) = y(7);
end
