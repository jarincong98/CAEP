%Código Auxiliar Taler NK

%% Ejercicio 4

%1. Correr NK básico y guardar resultados
dynare Gali_2008_chapter_3.mod nograph nolog noclearall;

%2. Guardar Info de NK básico
NK_0 = oo_.irfs;

%3. Correr NK con suavizamiento de Regla de Taylor
    % Meterse en el código y cambiar el parámetro
dynare Gali_2008_chapter_3.mod nograph nolog noclearall;

% 4. Guardar Info de NK alterado
NK_1 = oo_.irfs;

% 5. Guardar IRFs
save Ej4_NK NK_0 NK_1;
clear all;

% 6. Abrir ejercicio
load Ej4_NK;

%% Ejercicio 5

%1. Correr NK básico y guardar resultados
dynare Gali_2008_chapter_3.mod nograph nolog noclearall;

%2. Guardar Info de NK básico
NK_0 = oo_.irfs;

%3. Correr NK con Indexación de Inflación
    % Meterse en el código y cambiar el parámetro
dynare Gali_2008_chapter_3.mod nograph nolog noclearall;

% 4. Guardar Info de NK alterado
NK_1 = oo_.irfs;

% 5. Guardar IRFs
save Ej5_NK NK_0 NK_1;
clear all;

% 6. Abrir ejercicio
load Ej5_NK;

%% Ejercicio 6

%1. Correr NK básico y guardar resultados
dynare Gali_2008_chapter_3.mod nograph nolog noclearall;

%2. Guardar Info de NK básico
NK_0 = oo_.irfs;

%3. Correr NK con Indexación de Inflación
    % Meterse en el código y cambiar el parámetro
dynare Gali_2008_chapter_3.mod nograph nolog noclearall;

% 4. Guardar Info de NK alterado
NK_1 = oo_.irfs;

% 5. Guardar IRFs
save Ej6_NK NK_0 NK_1;
clear all;

% 6. Abrir ejercicio
load Ej6_NK;

%% Ejercicio 7

%1. Correr NK básico y guardar resultados
dynare Gali_2008_chapter_3.mod nograph nolog noclearall;

%2. Guardar Info de NK básico
NK_0 = oo_.irfs;

%3. Correr NK con TODO
    % Meterse en el código y cambiar el parámetro
dynare Gali_2008_chapter_3.mod nograph nolog noclearall;

% 4. Guardar Info de NK alterado
NK_1 = oo_.irfs;

% 5. Guardar IRFs
save Ej7_NK NK_0 NK_1;
clear all;

% 6. Abrir ejercicio
load Ej7_NK;

%% Graficar
figure(1)
    % Brecha del producto
    subplot(3,2,1)
    plot(NK_0.y_gap_eps_nu,'k','LineWidth',2)
    hold on
    plot(NK_1.y_gap_eps_nu,'r--','LineWidth',2)
    yline(0,'b:','LineWidth',2)
    hold off
    grid on
    xlabel('Periods')
    ylabel('Pct. Dev. SS')
    xlim([1 15])
    title('Y Gap','Interpreter','latex','FontSize',14)
    % Inflación Anualizada
    subplot(3,2,2)
    plot(NK_0.pi_ann_eps_nu,'k','LineWidth',2)
    hold on
    plot(NK_1.pi_ann_eps_nu,'r--','LineWidth',2)
    yline(0,'b:','LineWidth',2)
    hold off
    grid on
    xlabel('Periods')
    ylabel('Pct. Dev. SS')
    xlim([1 15])
    title('$\pi$ Ann','Interpreter','latex','FontSize',14)
    % Tasa nominal anualizada
    subplot(3,2,3)
    plot(NK_0.i_ann_eps_nu,'k','LineWidth',2)
    hold on
    plot(NK_1.i_ann_eps_nu,'r--','LineWidth',2)
    yline(0,'b:','LineWidth',2)
    hold off
    grid on
    xlabel('Periods')
    ylabel('Pct. Dev. SS')
    xlim([1 15])
    title('$i$ Ann','Interpreter','latex','FontSize',14)
    % Tasa real anualizada
    subplot(3,2,4)
    plot(NK_0.r_real_ann_eps_nu,'k','LineWidth',2)
    hold on
    plot(NK_1.r_real_ann_eps_nu,'r--','LineWidth',2)
    yline(0,'b:','LineWidth',2)
    hold off
    grid on
    xlabel('Periods')
    ylabel('Pct. Dev. SS')
    xlim([1 15])
    title('$r$ Ann','Interpreter','latex','FontSize',14)
    % Choque PM
    subplot(3,2,[5:6])
    plot(NK_0.nu_eps_nu,'k','LineWidth',2)
    hold on
    plot(NK_1.nu_eps_nu,'r--','LineWidth',2)
    yline(0,'b:','LineWidth',2)
    hold off
    grid on
    xlabel('Periods')
    ylabel('Pct. Dev. SS')
    xlim([1 15])
    title('$\nu$ Ann','Interpreter','latex','FontSize',14)
    legend('Basic NK','Smoothed Taylor')