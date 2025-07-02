function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
% function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = RBC_desde_cero.static_g1_tt(T, y, x, params);
    end
    residual = RBC_desde_cero.static_resid(T, y, x, params, false);
    g1       = RBC_desde_cero.static_g1(T, y, x, params, false);

end
