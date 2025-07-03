%%% This file finds Steady State for an RBC model with Ridid prices a la
%%% Rotemberg

clc; %Clean space
clear; %Clean workspace
close all; %Close figures

addpath C:\dynare\6.1\matlab;


%% Parameters

global sigma beta delta alpha psi_l eta rho Ass phi_q theta phi_k P_ss

sigma = 1.1; % Inverse of EIS
beta = 0.98; % Discount factor
delta = 0.025; % Depreciation of k
alpha = 1/3; % Capital share in Y
psi_l = 5.0; % Disutility of labor
eta = 2.0; % Labor supply elasticity
rho = 0.75; % AR(1) for TFP
Ass = 1.0; % TFP in the LR
phi_q = 50; % Price adjustment cost (Rotemberg)
theta = 5.0; %Elasticity of substitution (varieties)
phi_k = 1.0; %Capital adjustment cost

P_ss = 1.0; %Defined by CB
%% Steady State

C0 = 1.0;
K0 = 2.0;
W0 = 1/3;

Xss0 = [K0, C0, W0];
Xss1 = fsolve(@Steady_StateRBCPriceMP, Xss0);

[SS0, K, C, L, P, I, lambda, W, R_K, MC, Upsilon, q, mu, Pi_q] = Steady_StateRBCPriceMP(Xss1);
i_nom = 1/beta-1;

%% Dynare

params = [sigma beta delta alpha psi_l eta rho Ass phi_q theta phi_k i_nom P_ss q];
save params params

SSvar = [K, C, L, P, I, lambda, W, R_K, MC, Upsilon, q, mu, Pi_q, Ass];
save SSvar SSvar

dynare ModelRBCPriceMP.mod

