%%%  RBC Code
%----------------------------------------------------------------
% define variables 
%----------------------------------------------------------------

var K C L P I lambda W R_K MC Upsilon q mu Pi_q A pi Z_D
;

varexo eps_A eps_D

;

%----------------------------------------------------------------
% define parameters
%----------------------------------------------------------------

parameters sigma beta delta alpha psi_l eta rho Ass phi_q theta phi_k rho_D
                    
      
;


%----------------------------------------------------------------
% set parameter values 
%----------------------------------------------------------------

load params.mat;
load SSvar.mat;

sigma = params(1);
beta = params(2);
delta = params(3);
alpha = params(4);
psi_l = params(5);
eta = params(6);
rho = params(7);
Ass = params(8);
phi_q = params(9);
theta = params(10);
phi_k = params(11);
rho_D = 0.75;

%----------------------------------------------------------------
% enter model equations
%----------------------------------------------------------------
model;

[name='BC']
%P*(C + I) = W*L + R_K*K(-1) + Pi_q;
W = 1;

[name='Investment']
I = K - (1-delta)*K(-1) + phi_k/2*(K-K(-1))^2;

[name='Lambda']
P*lambda/Z_D = C^(-sigma);

[name='Labor Supply']
W = psi_l*L^eta/lambda;

[name='Euler Equation K']
P*lambda/Z_D*(1+phi_k*(K-K(-1))) = beta*P(+1)*lambda(+1)/Z_D(+1)*((1-delta)+R_K(+1)+phi_k*(K(+1)-K));

[name='MC']
MC = 1/A*(R_K/alpha)^alpha*(W/(1-alpha))^(1-alpha);

[name='Price adjustment cost']
Upsilon = phi_q/2*(P/P(-1)-1)^2;

[name='Market clearing for final goods']
q = C + I + Upsilon;

[name='mu']
mu = MC;

[name='Profits']
Pi_q = P*q - W*L - R_K*K - Upsilon;

[name='Optimal prices: Phillips Curve']
MC*theta/P = (theta-1) + phi_q*(P/P(-1)-1)*P/P(-1) - phi_q*beta*(C(+1)/C)^(-sigma)*(P(+1)/P-1)*(P(+1)/P)^2*q(+1)/q;

[name='Capital Demand']
R_K = mu*alpha*q/K(-1);

[name='Labor Demand']
W   = mu*(1-alpha)*q/L;

[name='TFP shock']
A = A(-1)^rho*Ass^(1-rho)*(1+eps_A);

[name='inflation']
pi =  P/P(-1) - 1;

[name='Demand shock']
Z_D = Z_D(-1)^rho_D*(1+eps_D);

end;

%----------------------------------------------------------------
%  Initial values
%---------------------------------------------------------------

initval;

K = SSvar(1);
C = SSvar(2);
L = SSvar(3);
P = SSvar(4);
I = SSvar(5);
lambda = SSvar(6);
W = SSvar(7);
R_K = SSvar(8);
MC = SSvar(9);
Upsilon = SSvar(10);
q = SSvar(11);
mu = SSvar(12);
Pi_q = SSvar(13);
A = SSvar(14);
Z_D = 1;

end;
model_diagnostics;
resid(non_zero);
check;
steady;

shocks;
var eps_A = 0.01;
var eps_D = 0.10;
end;

%----------------------------------------------------------------
%  Simul-IRF
%---------------------------------------------------------------
stoch_simul(periods = 1000, irf=40) A q C I K L MC P pi;