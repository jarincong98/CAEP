function [SS0, K, C, L, P, I, lambda, W, R_K, MC, Upsilon, q, mu, Pi_q] = Steady_StateRBCPrice(x)

global sigma beta delta alpha psi_l eta rho Ass phi_q theta

K = x(1);
C = x(2);
P = x(3);

W = 1;
I = delta*K;
lambda = C^(-sigma)/P;
%W = psi_l*L^eta/lambda;
L = (W/psi_l*lambda)^(1/eta);
R_K = 1/beta -(1-delta);
MC = 1/Ass*(R_K/alpha)^alpha*(W/(1-alpha))^(1-alpha);
Upsilon = 0;
q = C + I + Upsilon;
mu = MC;
Pi_q = P*q - W*L - R_K*K;

%SS0(1) = P*(C + I) - W*L - R_K*K - Pi_q;
SS0(1) =  P - theta/(theta-1)*MC;
SS0(2) = R_K - mu*alpha*q/K;
SS0(3) = W   - mu*(1-alpha)*q/L;

end