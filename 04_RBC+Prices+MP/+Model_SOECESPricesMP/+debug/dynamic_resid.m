function [lhs, rhs] = dynamic_resid(y, x, params, steady_state)
T = NaN(38, 1);
lhs = NaN(44, 1);
rhs = NaN(44, 1);
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
lhs(1) = y(86);
rhs(1) = params(35)*y(42)+(1-params(35))*params(32)+params(37)*(y(52)/params(34)-1)+params(36)*(y(68)/params(33)-1)+x(7);
lhs(2) = y(52)*y(53);
rhs(2) = params(3)*y(97)*y(96)*(1+y(86));
lhs(3) = y(78);
rhs(3) = y(50)*y(82)/y(52);
lhs(4) = y(51);
rhs(4) = y(45)-(1-params(2))*y(1)+T(1)*(y(45)-y(1))^2;
lhs(5) = y(53);
rhs(5) = T(2)/y(52);
lhs(6) = y(54);
rhs(6) = (y(53)*y(47)/params(4))^(1/params(5));
lhs(7) = y(53)*y(55)*(1+params(6)*(y(45)-y(1)));
rhs(7) = params(3)*y(97)*y(99)*T(3);
lhs(8) = y(53)*y(50)*y(80);
rhs(8) = params(3)*y(97)*y(94)*y(124)*(1+y(57));
lhs(9) = y(57);
rhs(9) = params(31)+T(4)-1;
lhs(10) = y(77);
rhs(10) = T(6)*T(7);
lhs(11) = y(76);
rhs(11) = y(77);
lhs(12) = y(56);
rhs(12) = params(7)*y(76)*y(58)/y(1);
lhs(13) = y(47);
rhs(13) = y(58)*(1-params(7))*y(76)/y(54);
lhs(14) = y(77)*params(23)/y(48);
rhs(14) = params(23)-1+y(48)*params(19)*(y(48)/y(4)-1)/y(4)-T(10)*T(11)*y(102)/y(58);
lhs(15) = y(72);
rhs(15) = T(12)*(y(48)/y(4)-1)^2;
lhs(16) = y(74);
rhs(16) = y(58)*(y(48)-y(77))-y(58)*y(48)*y(72);
lhs(17) = y(58);
rhs(17) = y(72)+y(59)+y(61)+y(63);
lhs(18) = y(63);
rhs(18) = T(13)*y(85);
lhs(19) = y(68);
rhs(19) = y(58)*y(48);
lhs(20) = y(69);
rhs(20) = y(68)*4;
lhs(21) = y(59);
rhs(21) = y(46)*T(14)*T(15);
lhs(22) = y(60);
rhs(22) = T(15)*y(46)*T(16);
lhs(23) = y(52)^(1-params(8));
rhs(23) = T(17)*T(18);
lhs(24) = y(61);
rhs(24) = y(51)*T(19)*T(20);
lhs(25) = y(62);
rhs(25) = T(20)*y(51)*T(21);
lhs(26) = y(55);
rhs(26) = T(22)*T(24);
lhs(27) = y(50)*y(82)*params(21)/y(49);
rhs(27) = params(21)-1+y(49)*params(20)*(y(49)/y(5)-1)/y(5)-T(26)*T(27)*y(115)/y(71);
lhs(28) = y(73);
rhs(28) = T(28)*(y(49)/y(5)-1)^2;
lhs(29) = y(71);
rhs(29) = y(73)+y(60)+y(62);
lhs(30) = y(75);
rhs(30) = y(71)*(y(49)-y(50)*params(22))-y(71)*y(49)*y(73);
lhs(31) = y(64);
rhs(31) = y(48)*y(63);
lhs(32) = y(65);
rhs(32) = y(49)*y(71);
lhs(33) = y(66);
rhs(33) = y(64)-y(65);
lhs(34) = y(75)+y(66);
rhs(34) = y(50)*y(80)*y(67)+y(80)*y(50)*(-(1+y(13)))*y(23);
lhs(35) = y(70);
rhs(35) = (y(64)+y(65))/y(68);
lhs(36) = y(79);
rhs(36) = y(50)*y(80)*y(67)+y(52)*y(46)+y(51)*y(55)-y(54)*y(47)-y(45)*y(56)-y(23)*y(80)*y(50)*(1+y(13))-y(74)-y(75);
lhs(37) = y(80);
rhs(37) = T(30)*(1+x(2));
lhs(38) = y(82);
rhs(38) = T(32)*(1+x(3));
lhs(39) = y(85);
rhs(39) = T(34)*(1+x(4));
lhs(40) = y(81);
rhs(40) = T(36)*(1+x(1));
lhs(41) = y(83);
rhs(41) = T(37)*(1+x(5));
lhs(42) = y(84);
rhs(42) = T(38)*(1+x(6));
lhs(43) = y(87);
rhs(43) = y(68);
lhs(44) = y(88);
rhs(44) = y(46);
end
