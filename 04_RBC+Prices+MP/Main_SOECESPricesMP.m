%%% This file:
%{
Runs SOE code with different technologies for C and I
+ Price rigidities for domestic and imported goods
+ Monetary Policy
%}

%%% This file finds Steady State for simple SOE model

clc; %Clean space
clear; %Clean workspace
close all; %Close figures

addpath c:\dynare\6.1\matlab\;


%% Parameters

global sigma delta beta psi_h eta phi_K alpha theta_c theta_i omega_c omega_i theta_ex B_star_ss ...
    y_star_ss A_ss P_star_ss rho_C rho_I phi_q phi_im theta_im Pim_star_ss theta_d Z_C_ss Z_I_ss ...
    rho_A rho_Pim_star rho_y_star phi_b rho_P_star P_c_ss

sigma = 1.01; % IES
delta = 0.025; %Capital depreciation
beta  = 0.98; %Discount factor
psi_h = 1; %Disutility of labor
eta   = 1+1/1.5; % Labor supply elasticity
phi_K = 0.01; % Capital adjustment cost
alpha = 1/3; % Capital share
theta_c = 5; %H&F elasticity of substitution (C)
theta_i = 5; %H&F elasticity of substitution (I)
omega_c = 0.7; %Home bias for C
omega_i = 0.5; %Home bias for I
theta_ex = 2.5; %Elasticity of substitution exports

B_star_ss = -0.50; %Debt
y_star_ss = 1; %Foreign GDP
A_ss = 1; %TFP
P_star_ss = 1; %Foreign export prices
Pim_star_ss = 1; %Foreign import prices

rho_A = 0.8;
rho_Pim_star = 0.8;
rho_y_star = 0.95;
rho_P_star = 0.8;
rho_C = 0.8;
rho_I = 0.8;

%phi_b = -0.1; % Debt elastic interest rate
phi_b = -0.001; % Debt elastic interest rate

Z_C_ss = 1.0;
Z_I_ss = 1.0;

phi_q = 10; %Price adjustment cost domestic
phi_im = 10; %Price adjustment cost imported 
theta_d = 5.0; %Elasticity of substitution domestic varieties
theta_im = 5.0; %Elasticity of substitution imported varieties

%% MP
P_c_ss = 1.0; %Prices in the LR
phi_P = 1.5; %Taylor rule wrt inflation gap
phi_y = 0.5; %Taylor rule wrt GDP gap
rho_inom = 0.75; %AR(1) Taylor rule

%% Solve Initial Equilibrium

K0 = 1;
C0 = 1;
W0 = 1;
P_d0 = 1;
P_im0 = 1;
q_d0 = 1;
rer0 = 1;

Xss0 = [K0, C0, W0, P_d0, P_im0, q_d0, rer0];
Xss1 = fsolve(@Steady_StateSOECESPricesMP, Xss0);

[SS0, K, C, W, P_d, P_im, s, I, P_c, lambda, h, P_i, R_K, ...
    R_star, q_d, q_cd, q_cim, q_id, q_iim, q_ex, EX, IM, NX, B_star,...
    GDP, GDP_ann, TO, q_im, Upsilon_d, Upsilon_im, Pi_d, Pi_im, mu, ...
    MC, rer, WL] = Steady_StateSOECESPricesMP(Xss1);

i_nom = 1/beta-1;

%% Saving values for Dynare

params = [sigma delta beta psi_h eta phi_K alpha theta_c theta_i omega_c omega_i theta_ex B_star_ss ...
    y_star_ss A_ss P_star_ss rho_C rho_I phi_q phi_im theta_im Pim_star_ss theta_d Z_C_ss Z_I_ss ...
    rho_A rho_Pim_star rho_y_star phi_b rho_P_star R_star i_nom GDP P_c_ss rho_inom phi_y phi_P];
save params params

SSvar = [K, C, W, P_d, P_im, s, I, P_c, lambda, h, P_i, R_K, ...
    R_star, q_d, q_cd, q_cim, q_id, q_iim, q_ex, EX, IM, NX, B_star,...
    GDP, GDP_ann, TO, q_im, Upsilon_d, Upsilon_im, Pi_d, Pi_im, mu, ...
    MC, rer, WL, P_star_ss, A_ss, Pim_star_ss, Z_C_ss, Z_I_ss, y_star_ss, i_nom];
save SSvar SSvar

%% Run Dynare

dynare Model_SOECESPricesMP.mod
