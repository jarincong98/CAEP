%------------------------------------------------------------------------%
% CAEP
% Taller Modelo NK
% Profesor: Juan Andrés Rincón
%------------------------------------------------------------------------%

%------------------------------------------------------------------------%
% 0. Housekeeping
%------------------------------------------------------------------------%

close all;

%------------------------------------------------------------------------%
% 1. Definir variables
%------------------------------------------------------------------------%

% Variables Endógenas
    var     y_hat   $\tilde{y}$   (long_name='Output Gap')
            y       $y$           (long_name='Real Output')
            y_n     $y^{n}$       (long_name='Natural Output')
            pi      $\pi$         (long_name='Inflation Rate')
            n       $n$           (long_name='Working Hours')
            i       $i$           (long_name='Nominal Interest Rate')
            r       $r$           (long_name='Real Interest Rate')
            r_n     $r^{n}$       (long_name='Real Natural Interest Rate')
            a       $a$           (long_name='Total Factor Productivity')
            nu      $\nu$         (long_name='Monetary Policy Shock')
%             m     $m$           (long_name='Monetary Funds')
%             p     $p$           (long_name='Price Level')

    % Variables anualizadas
            i_ann   $i^{A}$       (long_name='Annual Nom Int Rate')
            pi_ann  $\pi^{A}$     (long_name='Annual Inflation')
            r_ann   $r^{A}$       (long_name='Annual Real Rate')
            r_n_ann ${r^{n}}^{A}$ (long_name='Annual Natural Rate')
            ; 

% Variables Exógenas
    varexo  eps_a   $\varepsilon^{a}$     (long_name='TFP Innovations')
            eps_nu  $\varepsilon^{\nu}$   (long_name='MP Innovations')
            ;

%------------------------------------------------------------------------%
% 2. Definir Parámetros y Calibración
%------------------------------------------------------------------------%            
    
% Parámetros
    parameters  beta    % Factor descuento hogares
                sigma   % Inversa de la ESI
                varphi  % Desutilidad del trabajo
                alpha   % Elasticidad del trabajo en el producto
                epsilon % 
                theta   % Probabilidad de no reoptimizar precios (Calvo)
                eta     % Elasticidad de sustitución
                phi_pi  % Peso de brecha inflacionaria en Taylor
                phi_y   % Peso brecha producto en Taylor
                rho_nu  % Persistencia choque PM
                rho_a   % Persistencia PTF
                rho     % Persistencia varios procesos (r_n, Taylor)
                mu      %
                rho_i  % Persistencia Regla de Taylor
    ;

% Calibración
    beta    = 0.99;
    sigma   = 1;
    varphi  = 1;
    alpha   = 1/3;
    epsilon = 6; % 6;
    theta   = 2/3;  % 0.01;
    phi_pi  = 1.5;
    eta     = 4;
    phi_y   = 0.5/4;
    rho_nu  = 0.5;
    rho_a   = 0.9;
    mu      = log(epsilon/(epsilon-1));
    rho     = -log(beta);
    rho_i   = 0.5;

%------------------------------------------------------------------------%
% 3. Modelo
%------------------------------------------------------------------------%     

model(linear);
    % Parámetros Auxiliares
        #Theta = (1-alpha)/(1-alpha+alpha*epsilon);
        #lambda = (((1-theta)*(1-beta*theta))/theta)*Theta;
        #kappa = lambda*(sigma+(varphi+alpha)/(1-alpha));                
        #psi_ya = (1+varphi)/(sigma*(1-alpha)+varphi+alpha);
        #psi_y = -((1-alpha)*(mu-log(1-alpha)))/(sigma*(1-alpha)+varphi+alpha);

    % Modelo Económico
        % 1. Curva de Phillips NK
        pi = beta*pi(+1) + kappa*y_hat;

        % 2. Curva IS Dinámica
        y_hat = y_hat(+1) - (1/sigma)*(r-r_n);

        % 3. Tasa de interés neutral
        r_n = rho + sigma*(a - a(-1));

        % 4. Regla de Taylor de Política Monetaria
        % i = rho + phi_pi*pi + phi_y*y_hat + nu;
        i = rho_i*i(-1) + (1-rho_i)*(phi_pi*pi + phi_y*y_hat) + nu;

        % 5. Proceso Choque de PM
        nu = rho_nu*nu(-1) + eps_nu;

        % 6. Proceso PTF
        a = rho_a*a(-1) + eps_a;

        % 7. Brecha del Producto
        y_hat = y - y_n;

        % 8. Producto natural
        y_n = psi_ya*a(-1) + psi_y;

        % 9. Producto real
        y = a(-1) + (1-alpha)*n;

        % 10. Tasa de interés real
        r = i - pi(+1);

        % 11. Demanda de dinero
%         m - p = y - eta*i;

    % Definiciones Extra
        % 12. Tasa de interés nominal anualizada
        i_ann = 4*i;
        % 13. Tasa real anualizada
        r_ann = 4*r;
        % 14. Tasa neutral anualizada
        r_n_ann = 4*r_n;
        % 15. Inflación anualizada
        pi_ann = 4*pi;
end;

%------------------------------------------------------------------------%
% 4. Innovaciones / Choques
%------------------------------------------------------------------------%

shocks;
    % Varianza de choque de PM: 1pp anualizado
    var eps_nu = 0.25^2; 
    % Varianza de choque de PTF: 1pp anualizado
    var eps_a = 0.25^2;
end;

% Estado estacionario, estabilidad y residuales
    resid;
    steady;
    check;

%------------------------------------------------------------------------%
% 5. Simulación del Modelo
%------------------------------------------------------------------------%    

stoch_simul(irf = 20, order = 1,relative_irf) i_ann r_ann r_n_ann pi_ann y_hat; 
























