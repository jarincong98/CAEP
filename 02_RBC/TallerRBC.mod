%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%               CAEP
%               Taller RBC Dynare
%               Profesor: Juan Andrés Rincón
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------------------------------------------------%
% 0. Limpieza del Ambiente
%------------------------------------------------%

close all;

%------------------------------------------------%
% 1. Definir Variables
%------------------------------------------------%

% Variables Endógenas
    var     c       $c$     (long_name = 'Consumo') % Consumo
            n       $n$     (long_name = 'Trabajo') % Trabajo
            z       $z$     (long_name = 'PTF')     % Productividad Total de Factores
            k       $k$     (long_name = 'Capital') % Capital
            i       $i$     (long_name = 'Inversión')   % Inversión (Formación Bruta de Capital)
            y       $y$     (long_name = 'Producto')    % Producto
            w       $w$     (long_name = 'Salario Real')% Salario real
            y_n     $y_n$   (long_name = 'Pib a trabajo')% Ratio Pib a Trabajo
            ;

% Variables Exógenas
    varexo  epsilon              % Choque de productividad
            ;

%------------------------------------------------%
% 2. Parámetros y Calibración
%------------------------------------------------%

% Definición de parámetros
    parameters      alpha       % Participación del ocio en utilidad
                    theta       % Elasticidad del capital en producto
                    beta        % Factor de retorno del hogar
                    gamma       % Crecimiento de la productividad
                    delta       % Depreciación del capital
                    eta         % Crecimiento poblacional
                    rho         % Persistencia del proceso de PTF
                    sigma       % Desv. Est. del choque de PTF
                    ;

% Calibración   
    theta   =   0.4;
    delta   =   0.012;
    rho     =   0.95;
    sigma   =   0.0007;
    gamma   =   (1.0156^0.025)-1;
    beta    =   0.987;
    alpha   =   0.64;
    eta     =   (1.012^0.25)-1;

%------------------------------------------------%
% 3. Modelo
%------------------------------------------------%

model;
    % 1. TMS consumo y ocio
    alpha/(1-alpha)*(c/(1-n)) = (1-theta)*exp(z(-1))*k(-1)^theta*n^(-theta);
    
    % 2. Ecuación de Euler en Equilibrio
    1/c = beta/(1+gamma)*((1/c(+1))*(theta*exp(z)*k^(theta-1)*n(+1)^(1-theta)+1-delta));

    % 3. Ecuación de Movimiento del Capital
    (1+gamma)*(1+eta)*k = (1-delta)*k(-1) + i;

    % 4. Ecuación Macrofundamental
    y = c + i;

    % 5. Función de Producción
    y = exp(z(-1))*k(-1)^theta*n^(1-theta);

    % 6. Proceso de la PTF
    z = rho*z(-1) + epsilon;
    % z = rho*z(-1) + epsilon(-7);

    % 7. Salario real
    w = (1-theta)*y_n;

    % 8. PIB a trabajo
    y_n = y/n;
    
end;

%------------------------------------------------%
% 4. Estado Estacionario y Choques
%------------------------------------------------%

% Estado Inicial / Final de la economía
    initval;
        k       = 24;
        c       = 1.33;
        n       = 0.31;
        z       = 0; 
        epsilon = 0;
    end;

% Choques Estocásticos
    shocks;
        var epsilon; stderr sigma;
    end;

%------------------------------------------------%
% 5. Computación
%------------------------------------------------%

    % Residuales del modelo
    resid;

    % Estado Estacionario Numérico
    steady;

    % Estabilidad de Solución
    check;

    % Simulación del modelo
    stoch_simul(irf = 50,relative_irf);


