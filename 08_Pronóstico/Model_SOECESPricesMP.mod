%----------------------------------------------------------------
%                       CAEP 2025
%       SOE + CES Different technologies for C and I
%----------------------------------------------------------------
close all;

%----------------------------------------------------------------
% 1. Define variables 
%----------------------------------------------------------------

var  
%----------------------------------------------------------------
%  Model Variables
%---------------------------------------------------------------
    K           $K$         (long_name = 'Aggregate Capital')
    C           $C$         (long_name = 'Aggregate Consumption')
    W           $W$         (long_name = 'Nominal Wage')
    P_d         $P^d$       (long_name = 'Domestic CPI')
    P_im        $P^{im}$    (long_name = 'Imported CPI')
    s           $s$         (long_name = 'Nominal Exchange Rate')
    I           $I$         (long_name = 'Aggregate Investment')
    P_c         $P^c$       (long_name = 'Consumption Price')
    lambda      $\lambda$   (long_name = 'Lagrange Multiplier HH')
    h           $h$         (long_name = 'Aggregate Labor')
    P_i         $P^i$       (long_name = 'Investment Price')
    R_K         $R^k$       (long_name = 'Return on Capital')
    R_star      $R^{\star}$ (long_name = 'Relevant Foreign Interest Rate')
    q_d         $q^d$       (long_name = 'Relative demand price')
    q_cd        $q^{c,d}$   (long_name = 'Relative domestic consumption price')
    q_cim       $q^{c,im}$  (long_name = 'Relative imported consumption price')
    q_id        $q^{i,d}$   (long_name = 'Relative domestic investment price')
    q_iim       $q^{i,im}$  (long_name = 'Relative imported investment price')
    q_ex        $q^{ex}$    (long_name = 'Relative price of exports')
    EX          $EX$        (long_name = 'Aggregate Real Exports')
    IM          $IM$        (long_name = 'Aggregate Real Imports')
    NX          $NX$        (long_name = 'Real Net Exports')
    B_star      $B^{\star}$ (long_name = 'Foreign Debt (bonds)')
    GDP         $GDP$       (long_name = 'GDP')
    GDP_ann     $GDP^{Ann}$ (long_name = 'Annual GDP')
    TO          $TO$        (long_name = 'Terms of Trade')
    q_im        $q^{im}$    (long_name = 'Relative price of imports')
    Upsilon_d   $\Upsilon^d$    (long_name = 'Domestic Rotemberg Adjustment Cost')
    Upsilon_im  $\Upsilon^{im}$ (long_name = 'Investment Rotemberg Adjustment Cost')
    Pi_d        $\pi^d$     (long_name = 'Domestic Inflation')
    Pi_im       $\pi^{im}$  (long_name = 'Imported Inflation')
    mu          $\partial u$ (long_name = 'Marginal Utility')
    MC          $MC$        (long_name = 'Nominal Marginal Cost')
    rer         $rer$       (long_name = 'Real Exchange Rate')
    WL          $WL$        (long_name = 'Aggregate Wage')
    P_star      $P^{\star}$ (long_name = 'Foreign CPI')
    A           $A$         (long_name = 'TFP')
    Pim_star    $P^{im,\star}$ (long_name = 'Imports Price in Forein Currency')
    Z_C         $Z^c$       (long_name = 'Consumption Combination Efficiency')
    Z_I         $Z^i$       (long_name = 'Investment Combination Efficiency')
    y_star      $y^{\star}$ (long_name = 'Foreign Demand') 
    i_nom       $i^{nom}$   (long_name = 'Nominal Interest Rate') 

%----------------------------------------------------------------
%  Observables
%---------------------------------------------------------------    

    % --- Foreign Variables --- %
    y_star_obs      $y^{\star,obs}$     (long_name = 'Observable Foreign Demand') 
    pi_star_obs     $\pi^{\star,obs}$   (long_name = 'Observable Foreign Inflation')
    pi_im_star_obs  $\pi^{im\star,obs}$ (long_name = 'Observable Imports Inflation')

    % --- National Accounts --- %
    Y_obs     $Y^{obs}$ (long_name = 'Observable GDP')
    C_obs     $C^{obs}$ (long_name = 'Observable Consumption')
    I_obs     $I^{obs}$ (long_name = 'Observable Investment')

    % --- Nominal Policy Rate --- %
    i_nom_obs   $i^{nom,obs}$   (long_name = 'Observable nominal rate')

    % --- Headline Inflation --- %
    pi_obs      $\pi$   (long_name = 'Headline Inflation')
    
;

%----------------------------------------------------------------
% 2. Define Exogenous Variables 
%----------------------------------------------------------------
varexo 
    eps_A           $\epsilon^A$                (long_name = 'TFP Shock')
    eps_P_star      $\epsilon^{P^{\star}}$      (long_name = 'Foreign CPI Shock')
    eps_Pim_star    $\epsilon^{P^{im,\star}}$   (long_name = 'Foregin imports CPI Shock')
    eps_y_star      $\epsilon^{y^{\star}}$      (long_name = 'Foregin Demand Shock')
    eps_C           $\epsilon^C$                (long_name = 'Consumption Shock')
    eps_I           $\epsilon^I$                (long_name = 'Investment Shock')
    eps_inom        $\epsilon^{i^{nom}}$        (long_name = 'Nominal Rate Shock')
;

%----------------------------------------------------------------
% 3. Define Parameters
%----------------------------------------------------------------

parameters 
    sigma       $\sigma$            (long_name = 'EIS')
    delta       $\delta$            (long_name = 'Capital Depreciation')
    beta        $\beta$             (long_name = 'Discount Factor')
    psi_h       $\psi^h$            (long_name = 'Labor Disutility')
    eta         $\eta$              (long_name = 'Inv. Frisch')
    phi_K       $\phi^k$            (long_name = 'Capital Adj. Cost')
    alpha       $\alpha$            (long_name = 'Elasticity of capital in output')
    theta_c     $\theta^c$          (long_name = 'Elasticity of Substitution Consumption')
    theta_i     $\theta^i$          (long_name = 'Elasticity of Substitution Investment')
    omega_c     $\omega^c$          (long_name = 'Home bias consumption')
    omega_i     $\omega^i$          (long_name = 'Home bias Investment')
    theta_ex    $\theta^{ex}$       (long_name = 'Elasticity of Substitution Exports')
    B_star_ss   $B^{\star}_{ss}$    (long_name = 'Foreign Bonds SS')
    y_star_ss   $y^{\star}_{ss}$    (long_name = 'Foreign Demand SS')
    A_ss        $A_ss$              (long_name = 'TFP SS')
    P_star_ss   $P^{\star}_{ss}$    (long_name = 'Foreign CPI SS')
    rho_C       $\rho_c$            (long_name = 'Persistence Consumption Shock')
    rho_I       $\rho_i$            (long_name = 'Persistence Investment Shock')
    phi_q       $\phi^q$            (long_name = 'Rotemberg Domestic Price Adjustment Cost')
    phi_im      $\phi^{im}$         (long_name = 'Rotemberg Imports Price Adjustment Cost')
    theta_im    $\theta^{im}$       (long_name = 'Elasticity of substitution Imports')
    Pim_star_ss $P^{im\star}_{ss}$  (long_name = 'Price of imports in FC SS')
    theta_d     $\theta^d$          (long_name = 'Elasticity of Substitution Domestic Goods')
    Z_C_ss      $Z^c_{ss}$          (long_name = 'Consumption shock SS')
    Z_I_ss      $Z^i_{ss}$          (long_name = 'Investment Shock SS')
    rho_A       $\rho_A$            (long_name = 'Persistence TFP')
    rho_Pim_star $\rho_{P^{im\star}}$ (long_name = 'Persistence Imports Price in FC')    
    rho_y_star  $\rho_{y^{\star}}$  (long_name = 'Persistence Foreign Demand')
    phi_b       $\phi^b$            (long_name = 'SGU Parameter')
    rho_P_star  $\rho_{P^{\star}}$  (long_name = 'Persistence Foreign CPI')
    R_star_ss   $R^{\star}_{ss}$    (long_name = 'Foreign interest rate SS')
    i_nom_ss    $i^{nom}_{ss}$      (long_name = 'Nominal rate SS')
    GDP_ss      $DGP_{ss}$          (long_name = 'GDP SS')
    P_c_ss      $P^c_{ss}$          (long_name = 'Consumption Price SS')
    rho_inom    $\rho_{i^{nom}}$    (long_name = 'Persistence Nominal Rate')
    phi_y       $\phi^y$            (long_name = 'Taylor Rule GDP Gap')
    phi_P       $\phi^p$            (long_name = 'Taylor Rule Inflation Gap') 

    % --- Observables Discrepancy --- %
    B_Y_obs
    B_C_obs
    B_I_obs
    B_pi_star_obs
    B_pi_im_star_obs
    B_i_nom_obs
    B_pi_obs
;


%----------------------------------------------------------------
% set parameter values 
%----------------------------------------------------------------

load params.mat;
load SSvar.mat;

sigma = params(1);
delta = params(2);
beta = params(3);
psi_h = params(4);
eta = params(5);
phi_K = params(6);
alpha = params(7);
theta_c = params(8);
theta_i = params(9);
omega_c = params(10);
omega_i = params(11);
theta_ex = params(12);
B_star_ss = params(13);
y_star_ss = params(14);
A_ss = params(15);
P_star_ss = params(16);
rho_C = params(17);
rho_I = params(18);
phi_q = params(19);
phi_im = params(20);
theta_im = params(21);
Pim_star_ss = params(22);
theta_d = params(23);
Z_C_ss = params(24);
Z_I_ss = params(25);
rho_A = params(26);
rho_Pim_star = params(27);
rho_y_star = params(28);
phi_b = params(29);
rho_P_star = params(30);
R_star_ss  = params(31);

i_nom_ss   = params(32);
GDP_ss   = params(33);
P_c_ss   = params(34);
rho_inom   = params(35);
phi_y   = params(36);
phi_P  = params(37);

    % --- Observables Discrepancy --- %
    B_Y_obs             = 1.98925   ;
    B_C_obs             = 1.74412   ;
    B_I_obs             = 0.291099  ;
    B_pi_star_obs       = 0.0063    ;
    B_pi_im_star_obs    = -0.0052   ;
    B_i_nom_obs         = 0.0188    ;
    B_pi_obs            = 0.0128    ;

%----------------------------------------------------------------
% enter model equations
%----------------------------------------------------------------
model;

%[name='P_c']
%P_c = 1.0; %Normalization

[name='Taylor rule']
i_nom = rho_inom*(i_nom(-1)) + (1-rho_inom)*i_nom_ss + phi_P*(P_c/P_c_ss-1) + phi_y*(GDP/GDP_ss-1) + eps_inom;

[name='Euler equation bonds']
lambda*P_c = beta*lambda(+1)*P_c(+1)*(1+i_nom);

[name='RER']
rer = s*Pim_star/P_c;
%rer = s*Pim_star/P_d;

%%%% Household's Optimization
[name='Capital Law of Motion']
I = K-(1-delta)*K(-1)+phi_K/2*(K-K(-1))^2;

[name='lambda']
lambda = C^(-sigma)/P_c;

[name='Labor supply']
h = (lambda*W/psi_h)^(1/eta);

[name='Euler Equation for K']
%R_K = P_i*(1/beta - (1-delta));
lambda*P_i*(1+phi_K*(K-K(-1))) = lambda(+1)*beta*P_i(+1)*(1-delta+phi_K*(K(+1)-K)+R_K(+1)/P_i(+1));

[name='Euler Equation for B_star']
%R_star = 1/beta-1;
lambda*s*P_star = lambda(+1)*beta*s(+1)*P_star(+1)*(1+R_star);

[name='R_star']
R_star = R_star_ss + exp(phi_b*(s*P_star*B_star/GDP_ann-B_star_ss))-1;

%%%%%% Production of domestic intermediates (heterogenous)
[name='Marginal cost']
MC = 1/A*(R_K/alpha)^alpha*(W/(1-alpha))^(1-alpha);

[name='mu']
mu = MC;

[name='MPK']
R_K = mu*alpha*q_d/K(-1);

[name='MPL']
W = mu*(1-alpha)*q_d/h;

[name = 'Optimal price']
%P_d = theta_d/(theta_d-1)*MC;
MC*theta_d/P_d = (theta_d-1) + phi_q*(P_d/P_d(-1)-1)*P_d/P_d(-1) 
     - beta*(C(+1)/C)^(-sigma)*phi_q*(P_d(+1)/P_d-1)*(P_d(+1)/P_d)^2*q_d(+1)/q_d;

[name = 'Price adjustment P_d']     
Upsilon_d = phi_q/2*(P_d/P_d(-1)-1)^2;

[name = 'Domestic profits']
Pi_d = q_d*(P_d-MC) - P_d*Upsilon_d*q_d;


%%%%%% Production of domestic intermediates (Homogeneous)
[name = 'Market clearing']
q_d = q_cd + q_id + q_ex + Upsilon_d;

[name = 'Export Demand']
q_ex = (s*P_star/P_d)^theta_ex*y_star;

[name='GDP']
GDP = q_d*P_d;

[name='GDP']
GDP_ann = 4*GDP;

%%%%%% Production of Consumption goods
[name='Demand for dom interm in C']
q_cd = omega_c*(P_c/P_d)^theta_c*C*Z_C^(theta_c-1);

[name='Demand for imports in C']
q_cim = (1-omega_c)*(P_c/P_im)^theta_c*C*Z_C^(theta_c-1);

[name='P_c']
P_c^(1-theta_c) = (1/Z_C)^(1-theta_c)*(omega_c*P_d^(1-theta_c)+(1-omega_c)*P_im^(1-theta_c));

%%%%%% Production of Investment goods

[name='Demand for dom interm in I']
q_id = omega_i*(P_i/P_d)^theta_i*I*Z_I^(theta_c-1);

[name='Demand for imports in I']
q_iim = (1-omega_i)*(P_i/P_im)^theta_i*I*Z_I^(theta_c-1);

[name='P_i']
P_i = 1/Z_I*(omega_i*P_d^(1-theta_i)+(1-omega_i)*P_im^(1-theta_i))^(1/(1-theta_i));


%%%%%% Production of imported intermediates (heterogenous)
[name = 'Optimal price P_im']
%P_im = theta_im/(theta_im-1)*s*Pim_star_ss;
s*Pim_star*theta_im/P_im = (theta_im-1) + phi_im*(P_im/P_im(-1)-1)*P_im/P_im(-1)
    - beta*(C(+1)/C)^(-sigma)*phi_im*(P_im(+1)/P_im-1)*(P_im(+1)/P_im)^2*q_im(+1)/q_im; 

[name = 'Price adjustment cost P_im']
Upsilon_im = phi_im/2*(P_im/P_im(-1)-1)^2;

[name = 'Market clearing for imports']
q_im = q_cim+q_iim+Upsilon_im;

[name = 'Profits of importers']
Pi_im = q_im*(P_im - s*Pim_star_ss) - P_im*Upsilon_im*q_im;

%%Trade Balance
[name = 'Exports']
EX = P_d*q_ex;

[name = 'Imports']
IM = P_im*q_im;

[name = 'Trade Balance']
NX = EX - IM;

[name = 'Trade Balance Equilibrium']
%NX + Pi_im + R_star*s*P_star_ss*B_star
NX + Pi_im = -(1+R_star(-1))*s*P_star*B_star(-1) + s*P_star*B_star;

[name = 'TO']
TO = (EX + IM)/GDP;

[name = 'WL']
WL = P_c*C+P_i*I+ s*P_star*B_star - W*h - R_K*K -(1+R_star(-1))*s*P_star*B_star(-1) - Pi_d - Pi_im;


%%%% Shocks
P_star = P_star(-1)^rho_P_star*P_star_ss^(1-rho_P_star)*exp(eps_P_star);
Pim_star = Pim_star(-1)^rho_Pim_star*Pim_star_ss^(1-rho_Pim_star)*exp(eps_Pim_star);
y_star = y_star(-1)^rho_y_star*y_star_ss^(1-rho_y_star)*exp(eps_y_star);

A = A(-1)^rho_A*A_ss^(1-rho_A)*exp(eps_A);
Z_C = Z_C(-1)^rho_C*exp(eps_C);
Z_I = Z_I(-1)^rho_I*exp(eps_I);

%----------------------------------------------------------------
%  Measurement Equations
%---------------------------------------------------------------

% --- Foreign Variables --- %
[name = 'Measurement Eq: Foreign Demand']
    y_star_obs = y_star - 1 ;

[name = 'Measurement Eq: Foreign Inflation']    
    pi_star_obs = (P_star/P_star(-1) - 1) + B_pi_star_obs ;

[name = 'Measurement Eq: Foreign Inflation']    
    pi_im_star_obs = (Pim_star/Pim_star(-1) - 1) + B_pi_im_star_obs ;

% --- National Accounts --- %    
[name = 'Measurement Eq: GDP Obs']
    Y_obs = GDP - B_Y_obs ;

[name = 'Measurement Eq: Consumption Obs']
    C_obs = C - B_C_obs ;

[name = 'Measurement Eq: Investment Obs']
    I_obs = I - B_I_obs ;

% --- Nominal Interest Rate --- %
[name = 'Measurement Eq: Nominal Rate Obs']
    i_nom_obs = (1 + i_nom)^4 - 1 - B_i_nom_obs ;

% --- Headline Inflation --- %
[name = 'Measurement Eq: Headline Inflation Obs']
    pi_obs = (P_d/P_d(-1) - 1) + B_pi_obs ;
    
end;

%----------------------------------------------------------------
%  Initial values
%---------------------------------------------------------------

initval;

K = SSvar(1);
C = SSvar(2);
W = SSvar(3);
P_d = SSvar(4);
P_im = SSvar(5);
s = SSvar(6);
I = SSvar(7);
P_c = SSvar(8);
lambda = SSvar(9);
h = SSvar(10);
P_i = SSvar(11);
R_K = SSvar(12);
R_star = SSvar(13);
q_d = SSvar(14);
q_cd = SSvar(15);
q_cim = SSvar(16);
q_id = SSvar(17);
q_iim = SSvar(18);
q_ex = SSvar(19);
EX = SSvar(20);
IM = SSvar(21);
NX = SSvar(22);
B_star = SSvar(23);
GDP = SSvar(24);
GDP_ann = SSvar(25);
TO = SSvar(26);
q_im = SSvar(27);
Upsilon_d = SSvar(28);
Upsilon_im = SSvar(29);
Pi_d = SSvar(30);
Pi_im = SSvar(31);
mu = SSvar(32);
MC = SSvar(33);
rer = SSvar(34);
WL = SSvar(35);
P_star = SSvar(36);
A = SSvar(37);
Pim_star = SSvar(38);
Z_C = SSvar(39);
Z_I = SSvar(40);
y_star = SSvar(41);
i_nom = SSvar(42);

end;

%----------------------------------------------------------------
%  Model Diagnostics and Steady State
%---------------------------------------------------------------

model_diagnostics;
resid(non_zero);
check;
steady;

% return;

%----------------------------------------------------------------
%  Shocks Standar Deviations
%---------------------------------------------------------------
shocks;
    % --- Exogenous Shocks (Calibrated using MLE) --- %
    var eps_Pim_star    ;   stderr  0.0091  ;
    var eps_y_star      ;   stderr  0.0235  ;
    var eps_P_star      ;   stderr  0.0052  ;
    
    % --- Structural Shocks --- %
    % var eps_A   ;   stderr  0.01    ;
    % var eps_C   ;   stderr  0.01    ;
    % var eps_I   ;   stderr  0.01    ;
    % var eps_inom;   stderr  0.01    ;

end;

%----------------------------------------------------------------
%  Observable Variables
%---------------------------------------------------------------

varobs
% --- Foreign Variables --- %
    y_star_obs
    pi_star_obs
    pi_im_star_obs
% --- National Accounts --- %
    % Y_obs
    C_obs
    I_obs
% --- Nominal Interest Rate --- %    
    i_nom_obs
% --- Headline inflation --- %
    pi_obs
;

%----------------------------------------------------------------
%  Maximum Likelihood Estimation
%---------------------------------------------------------------

% ----------------------------------- %
%   Estimated Parameters
% ----------------------------------- %

% Syntax:
% stderr VARIABLE_NAME | corr VARIABLE_NAME_1, VARIABLE_NAME_2 | PARAMETER_NAME
% , INITIAL_VALUE [, LOWER_BOUND, UPPER_BOUND ];

estimated_params;
    % --- Persistences --- %
    % rho_P_star  ,   0.5     ,   0   ,   1   ;
    % rho_Pim_star,   0.5     ,   0   ,   1   ;
    % rho_y_star  ,   0.5     ,   0   ,   1   ;
    rho_A   ,   0.8     ,   0   ,   1   ;
    rho_C   ,   0.8     ,   0   ,   1   ;
    % rho_I   ,   0.8     ,   0   ,   1   ;

    % --- Std. Dev. --- %
    % stderr  eps_P_star      ,   0.01    ,   0.00001 ,   10      ;
    % stderr  eps_Pim_star    ,   0.01    ,   0.00001 ,   10      ;
    % stderr  eps_y_star      ,   0.01    ,   0.00001 ,   10      ;
    stderr  eps_A       ,   0.01    ,   0.00001 ,   10      ;
    stderr  eps_C       ,   0.01    ,   0.00001 ,   10      ;
    stderr  eps_I       ,   0.01    ,   0.00001 ,   10      ;
    stderr  eps_inom    ,   0.01    ,   0.00001 ,   10      ;

    % --- Marginal Costs --- %
    phi_K   ,   0.01    ,   0       ,   20  ;

end;

% ----------------------------------- %
%   Estimation
% ----------------------------------- %

% estimation( datafile        =   'Datos/DataCOL.xlsx'
%         ,   nobs            =   80
%         ,   mode_compute    =   5
%         ,   mode_check
%         ,   smoother
%         ,   nograph
%             );

% --------------------------------------- %
%   Filtering (loading estimated mode) 
% --------------------------------------- %            

estimation( datafile        =   'Datos/DataCOL.xlsx'
        ,   mode_file       =   'Model_SOECESPricesMP/Output/Model_SOECESPricesMP_mode.mat'
        % ,   nobs            =   80
        ,   mode_compute    =   0
        % ,   mode_check
        ,   smoother
        ,   nograph
            );

%----------------------------------------------------------------
%  Conditional Forecast
%---------------------------------------------------------------          

% conditional_forecast_paths;
%     var         pi_obs      ;
%     periods     1:10        ;
%     values      10          ;   
% end;
% 
% conditional_forecast(controlled_varexo = eps_A
%                     );

%----------------------------------------------------------------
%  Shock Decomposition
%---------------------------------------------------------------
options_.initial_date = dates('2000Q1');

shock_decomposition(nograph
                % ,   datafile        =   'Datos/DataCOL.xlsx'
                % ,   parameter_set   =   mle_mode
                % ,   first_obs       =   1
                % ,   nobs            =   80
                    );

plot_shock_decomposition(   plot_init_date = dates('2015Q1')
                    ,       plot_end_date  = dates('2024Q2')

                        )
    y_star_obs
    % pi_star_obs
    % pi_im_star_obs
    Y_obs
    % C_obs
    % I_obs
    pi_obs
    i_nom_obs

;             


%----------------------------------------------------------------
%  Simul-IRF
%---------------------------------------------------------------
% stoch_simul(periods = 100000
%         ,   irf=40
%         ,   nograph
%             )
%             GDP
%             C
%             I
%             EX
%             IM
%             NX
%             s
%             P_c
%             i_nom
%             ;
