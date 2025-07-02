%%% This file finds Steady State for an RBC model with Ridid prices a la
%%% Rotemberg

clc; %Clean space
clear; %Clean workspace
close all; %Close figures

addpath C:\dynare\6.1\matlab;


%% Parameters

global sigma beta delta alpha psi_l eta rho Ass phi_q theta phi_k

sigma = 2.0; % Inverse of EIS
beta = 0.95; % Discount factor
delta = 0.1; % Depreciation of k
alpha = 1/3; % Capital share in Y
psi_l = 1.0; % Disutility of labor
eta = 2.0; % Labor supply elasticity
rho = 0.75; % AR(1) for TFP
Ass = 1.0; % TFP in the LR
phi_q = 50; % Price adjustment cost (Rotemberg)
theta = 5.0; %Elasticity of substitution (varieties)
phi_k = 0.1; %Capital adjustment cost

%% Steady State

L0 = 1/3;
C0 = 1.0;
K0 = 2.0;

Xss0 = [K0, C0, L0];
Xss1 = fsolve(@Steady_StateRBCPrice, Xss0);

[SS0, K, C, L, P, I, lambda, W, R_K, MC, Upsilon, q, mu, Pi_q] = Steady_StateRBCPrice(Xss1);

%% Dynare

params = [sigma beta delta alpha psi_l eta rho Ass phi_q theta phi_k];
save params params

SSvar = [K, C, L, P, I, lambda, W, R_K, MC, Upsilon, q, mu, Pi_q, Ass];
save SSvar SSvar

dynare ModelRBCPrice.mod

