function [SS0, K, C, W, P_d, P_im, s, I, P_c, lambda, h, P_i, R_K, ...
    R_star, q_d, q_cd, q_cim, q_id, q_iim, q_ex, EX, IM, NX, B_star,...
    GDP, GDP_ann, TO, q_im, Upsilon_d, Upsilon_im, Pi_d, Pi_im, mu, ...
    MC, rer, WL] = Steady_StateSOECESPrices(x)

global sigma delta beta psi_h eta phi_K alpha theta_c theta_i omega_c omega_i theta_ex B_star_ss ...
    y_star_ss A_ss P_star_ss rho_C rho_I phi_q phi_im theta_im Pim_star_ss theta_d Z_C_ss Z_I_ss P_c_ss

K = x(1);
C = x(2);
W = x(3);
P_d = x(4);
P_im = x(5);
q_d = x(6);
rer = x(7);

P_c = P_c_ss; %Normalization
s = rer*P_c/Pim_star_ss;
%s = rer*P_d/Pim_star_ss;
I = delta*K;

lambda = C^(-sigma)/P_c;
h = (lambda*W/psi_h)^(1/eta);
P_i = 1/Z_I_ss*(omega_i*P_d^(1-theta_i)+(1-omega_i)*P_im^(1-theta_i))^(1/(1-theta_i));
R_K = P_i*(1/beta - (1-delta));
R_star = 1/beta-1;

MC = 1/A_ss*(R_K/alpha)^alpha*(W/(1-alpha))^(1-alpha);
mu = MC;

q_cd = omega_c*(P_c/P_d)^theta_c*C*Z_C_ss^(theta_c-1);
q_cim = (1-omega_c)*(P_c/P_im)^theta_c*C*Z_C_ss^(theta_c-1);
Upsilon_d = 0;

q_id = omega_i*(P_i/P_d)^theta_i*I*Z_I_ss^(theta_c-1);
q_iim = (1-omega_i)*(P_i/P_im)^theta_i*I*Z_I_ss^(theta_c-1);
q_ex = (s*P_star_ss/P_d)^theta_ex*y_star_ss;

Upsilon_im = 0;
EX = P_d*q_ex;
q_im = q_cim+q_iim+Upsilon_im;
IM = P_im*q_im;
NX = EX - IM;
GDP = q_d*P_d;
GDP_ann = 4*GDP;
B_star = B_star_ss*(GDP_ann)/(s*P_star_ss);
TO = (EX + IM)/GDP;

Pi_d = q_d*(P_d-MC);
Pi_im = q_im*(P_im - s*Pim_star_ss); 

WL = P_c*C+P_i*I+ s*P_star_ss*B_star - W*h - R_K*K -(1+R_star)*s*P_star_ss*B_star - Pi_d - Pi_im;

SS0(1) = R_K - mu*alpha*q_d/K;
SS0(2) = W - mu*(1-alpha)*q_d/h;
SS0(3) = P_d - theta_d/(theta_d-1)*MC;
SS0(4) = P_im - theta_im/(theta_im-1)*s*Pim_star_ss;

SS0(5) = q_d - q_cd - q_id - q_ex - Upsilon_d;
SS0(6) = P_c^(1-theta_c) - (1/Z_C_ss)^(1-theta_c)*(omega_c*P_d^(1-theta_c)+(1-omega_c)*P_im^(1-theta_c));
SS0(7) = NX + Pi_im + R_star*s*P_star_ss*B_star;


end