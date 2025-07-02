% ==================================================== %
%       Modelo RBC CAEP 2025
%           Juan Andrés Rincón
% ==================================================== %

% ==================================================== %
% 0. Limbiar Ambiente
% ==================================================== %
    close all; 

% ==================================================== %
% 1. Declaración de Variables
% ==================================================== %

var
    c   $\tilde{c}$     (long_name = 'Consumo')
    n   $n$             (long_name = 'Trabajo')
    z   $z$             (long_name = 'PTF')
    k   $\tilde{k}$     (long_name = 'Capital')
    i   $\tilde{i}$     (long_name = 'Inversion')
    y   $\tilde{y}$     (long_name = 'Producto')
    w   $w$             (long_name = 'Salario Real')
    y_n $\frac{y}{n}$   (long_name = 'Producto sobre Trabajo')
;

% ==================================================== %
% 2. Declaración de Variables Exógenas (Choques)
% ==================================================== %

varexo
    epsilon     $\varepsilon$       (long_name = 'Choque PTF')
;

% ==================================================== %
% 3. Declaración de Parámetros
% ==================================================== %

parameters
    alpha   $\alpha$    (long_name = 'Sesgo por Ocio en Utilidad')
    theta   $\theta$    (long_name = 'Elasticidad del Capital en Producto')
    beta    $\beta$     (long_name = 'Factor de Descuento Hogar')
    gamma   $\gamma$    (long_name = 'Crecimiento de la Tecnología')
    delta   $\delta$    (long_name = 'Depreciacion del Capital')
    eta     $\eta$      (long_name = 'Crecimiento Poblacional')
    rho     $\rho$      (long_name = 'Persistencia de PTF')
;

% ==================================================== %
% 4. Calibración de Parámetros
% ==================================================== %

    alpha   =   0.640   ;
    theta   =   0.400   ;
    beta    =   0.987   ;
    gamma   =   0.0156  ;
    delta   =   0.012   ;
    eta     =   0.012   ;
    rho     =   0.95    ;

% ==================================================== %
% 5. Desviación Estándar de Choques
% ==================================================== %    

    shocks;
        var     epsilon ;   stderr  0.0007  ;
    end;

% ==================================================== %
% 6. Valores Iniciales Variables
% ==================================================== %   

    initval;
        z   =   0       ;
        k   =   24.7    ;
        c   =   1.33    ;
        n   =   0.31    ;
        i   =   0.46    ;
        y_n =   5.7     ;
        y   =   1.8     ;
        w   =   3.4     ;
    end;

% ==================================================== %
% 7. Modelo (Sistema de Ecuaciones Dinámico)
% ==================================================== %     

    model;
        [name = 'TMS Consumo Ocio']
            alpha/(1-alpha)*(c/(1-n)) = (1-theta)*exp(z(-1))*k(-1)^theta*n^(-theta) ;

        [name = 'Euler Capital']
            1/c = beta/(1+gamma)*(1/c(+1))*(theta*exp(z)*k^(theta-1)*n(+1)^(1-theta)+1-delta) ;

        [name = 'Eq. Movimiento Capital']
            (1+gamma)*(1+eta)*k = (1-delta)*k(-1) + i   ;

        [name = 'Eq. Agregada Macro']
            y = c + i   ;

        [name = 'Funcion de Produccion']
            y = exp(z(-1))*k(-1)^theta*n^(1-theta)  ;

        [name = 'AR-1 de PTF']
            z = rho*z(-1) + epsilon ;

        [name = 'Salario Real']
            w   = (1-theta)*y_n ;

        [name = 'PIB sobre Trabajo']
            y_n = y/n   ;
    end;


% ==================================================== %
% 8. Estado Estacionario y Estabilidad
% ==================================================== %      

    steady;
    check;
    resid;

% ==================================================== %
% 9. Simulación Estocástica
% ==================================================== %       

    stoch_simul(irf = 50,relative_irf);