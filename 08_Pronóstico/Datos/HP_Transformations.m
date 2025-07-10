%% Hodrick Prescott Stuff

% Load data from the Excel file
data = readtable('DataCOL.xlsx');

% Hodrick Prescott for Real values
    % Y_star
    [~,y_star_hat] = hpfilter(data.y_star);
    [~,log_y_star_hat] = hpfilter(log(data.y_star));
    % Y
    [~,Y_hat] = hpfilter(data.Y);
    [~,log_Y_hat] = hpfilter(log(data.Y));
    % C
    [~,C_hat] = hpfilter(data.C);
    [~,log_C_hat] = hpfilter(log(data.C));
    % I
    [~,I_hat] = hpfilter(data.I);
    [~,log_I_hat] = hpfilter(log(data.I));