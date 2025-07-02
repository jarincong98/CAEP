% Análisis de Sensibilidad

% Paso 1: Correr el .mod con el valor 1 del parámetro
dynare TallerRBC.mod nograph nolog nointeractive noclearall;

% Paso 2: Guardar resultados en una estructura
Model1 = oo_;

%% Paso 2: Editar el .mod y cambiar al valor 2 del parámetro
dynare TallerRBC.mod nograph nolog nointeractive noclearall;

% Paso 2: Guardar resultados en una estructura
Model2 = oo_;

% PAso 3: Limpiar cosas
save Taller Model1 Model2;
clear

load Taller

%% Paso 4: Graficar

    subplot(2,3,1)
    % IRF consumo a un choque de PTF
    plot(Model1.irfs.z_epsilon,'--k','LineWidth',2)
    hold on
    plot(Model2.irfs.z_epsilon,':r','LineWidth',2)
    hold off
    grid on
    xlabel("Períodos")
    ylabel("Desv. al SS")
    title("PTF ante un choque de PTF")
    legend(["Choque Instantáneo" "Choque Anticipado"], Interpreter="latex")

    subplot(2,3,2)
    % IRF consumo a un choque de PTF
    plot(Model1.irfs.c_epsilon,'--k','LineWidth',2)
    hold on
    plot(Model2.irfs.c_epsilon,':r','LineWidth',2)
    hold off
    grid on
    xlabel("Períodos")
    ylabel("Desv. al SS")
    title("Consumo ante un choque de PTF")
    legend(["Choque Instantáneo" "Choque Anticipado"], Interpreter="latex")
    
    subplot(2,3,3)
    % IRF inversión a un choque de PTF
    plot(Model1.irfs.i_epsilon,'--k','LineWidth',2)
    hold on
    plot(Model2.irfs.i_epsilon,':r','LineWidth',2)
    hold off
    grid on
    xlabel("Períodos")
    ylabel("Desv. al SS")
    title("Inversión ante un choque de PTF")
    legend(["Choque Instantáneo" "Choque Anticipado"], Interpreter="latex")

    subplot(2,3,4)
    % IRF capital a un choque de PTF
    plot(Model1.irfs.k_epsilon,'--k','LineWidth',2)
    hold on
    plot(Model2.irfs.k_epsilon,':r','LineWidth',2)
    hold off
    grid on
    xlabel("Períodos")
    ylabel("Desv. al SS")
    title("Capital ante un choque de PTF")
    legend(["Choque Instantáneo" "Choque Anticipado"], Interpreter="latex")

    subplot(2,3,5)
    % IRF consumo a un choque de PTF
    plot(Model1.irfs.y_epsilon,'--k','LineWidth',2)
    hold on
    plot(Model2.irfs.y_epsilon,':r','LineWidth',2)
    hold off
    grid on
    xlabel("Períodos")
    ylabel("Desv. al SS")
    title("PIB ante un choque de PTF")
    legend(["Choque Instantáneo" "Choque Anticipado"], Interpreter="latex")
