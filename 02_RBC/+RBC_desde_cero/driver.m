%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

clearvars -global
clear_persistent_variables(fileparts(which('dynare')), false)
tic0 = tic;
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info
options_ = [];
M_.fname = 'RBC_desde_cero';
M_.dynare_version = '6.3';
oo_.dynare_version = '6.3';
options_.dynare_version = '6.3';
%
% Some global variables initialization
%
global_initialization;
M_.exo_names = cell(1,1);
M_.exo_names_tex = cell(1,1);
M_.exo_names_long = cell(1,1);
M_.exo_names(1) = {'epsilon'};
M_.exo_names_tex(1) = {'\varepsilon'};
M_.exo_names_long(1) = {'Choque PTF'};
M_.endo_names = cell(8,1);
M_.endo_names_tex = cell(8,1);
M_.endo_names_long = cell(8,1);
M_.endo_names(1) = {'c'};
M_.endo_names_tex(1) = {'\tilde{c}'};
M_.endo_names_long(1) = {'Consumo'};
M_.endo_names(2) = {'n'};
M_.endo_names_tex(2) = {'n'};
M_.endo_names_long(2) = {'Trabajo'};
M_.endo_names(3) = {'z'};
M_.endo_names_tex(3) = {'z'};
M_.endo_names_long(3) = {'PTF'};
M_.endo_names(4) = {'k'};
M_.endo_names_tex(4) = {'\tilde{k}'};
M_.endo_names_long(4) = {'Capital'};
M_.endo_names(5) = {'i'};
M_.endo_names_tex(5) = {'\tilde{i}'};
M_.endo_names_long(5) = {'Inversion'};
M_.endo_names(6) = {'y'};
M_.endo_names_tex(6) = {'\tilde{y}'};
M_.endo_names_long(6) = {'Producto'};
M_.endo_names(7) = {'w'};
M_.endo_names_tex(7) = {'w'};
M_.endo_names_long(7) = {'Salario Real'};
M_.endo_names(8) = {'y_n'};
M_.endo_names_tex(8) = {'\frac{y}{n}'};
M_.endo_names_long(8) = {'Producto sobre Trabajo'};
M_.endo_partitions = struct();
M_.param_names = cell(7,1);
M_.param_names_tex = cell(7,1);
M_.param_names_long = cell(7,1);
M_.param_names(1) = {'alpha'};
M_.param_names_tex(1) = {'\alpha'};
M_.param_names_long(1) = {'Sesgo por Ocio en Utilidad'};
M_.param_names(2) = {'theta'};
M_.param_names_tex(2) = {'\theta'};
M_.param_names_long(2) = {'Elasticidad del Capital en Producto'};
M_.param_names(3) = {'beta'};
M_.param_names_tex(3) = {'\beta'};
M_.param_names_long(3) = {'Factor de Descuento Hogar'};
M_.param_names(4) = {'gamma'};
M_.param_names_tex(4) = {'\gamma'};
M_.param_names_long(4) = {'Crecimiento de la Tecnología'};
M_.param_names(5) = {'delta'};
M_.param_names_tex(5) = {'\delta'};
M_.param_names_long(5) = {'Depreciacion del Capital'};
M_.param_names(6) = {'eta'};
M_.param_names_tex(6) = {'\eta'};
M_.param_names_long(6) = {'Crecimiento Poblacional'};
M_.param_names(7) = {'rho'};
M_.param_names_tex(7) = {'\rho'};
M_.param_names_long(7) = {'Persistencia de PTF'};
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 1;
M_.endo_nbr = 8;
M_.param_nbr = 7;
M_.orig_endo_nbr = 8;
M_.aux_vars = [];
M_.Sigma_e = zeros(1, 1);
M_.Correlation_matrix = eye(1, 1);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = true;
M_.det_shocks = [];
M_.surprise_shocks = [];
M_.learnt_shocks = [];
M_.learnt_endval = [];
M_.heteroskedastic_shocks.Qvalue_orig = [];
M_.heteroskedastic_shocks.Qscale_orig = [];
M_.matched_irfs = {};
M_.matched_irfs_weights = {};
options_.linear = false;
options_.block = false;
options_.bytecode = false;
options_.use_dll = false;
options_.ramsey_policy = false;
options_.discretionary_policy = false;
M_.nonzero_hessian_eqs = [1 2 5 8];
M_.hessian_eq_zero = isempty(M_.nonzero_hessian_eqs);
M_.eq_nbr = 8;
M_.ramsey_orig_eq_nbr = 0;
M_.ramsey_orig_endo_nbr = 0;
M_.set_auxiliary_variables = exist(['./+' M_.fname '/set_auxiliary_variables.m'], 'file') == 2;
M_.epilogue_names = {};
M_.epilogue_var_list_ = {};
M_.orig_maximum_endo_lag = 1;
M_.orig_maximum_endo_lead = 1;
M_.orig_maximum_exo_lag = 0;
M_.orig_maximum_exo_lead = 0;
M_.orig_maximum_exo_det_lag = 0;
M_.orig_maximum_exo_det_lead = 0;
M_.orig_maximum_lag = 1;
M_.orig_maximum_lead = 1;
M_.orig_maximum_lag_with_diffs_expanded = 1;
M_.lead_lag_incidence = [
 0 3 11;
 0 4 12;
 1 5 0;
 2 6 0;
 0 7 0;
 0 8 0;
 0 9 0;
 0 10 0;]';
M_.nstatic = 4;
M_.nfwrd   = 2;
M_.npred   = 2;
M_.nboth   = 0;
M_.nsfwrd   = 2;
M_.nspred   = 2;
M_.ndynamic   = 4;
M_.dynamic_tmp_nbr = [11; 10; 1; 0; ];
M_.equations_tags = {
  1 , 'name' , 'TMS Consumo Ocio' ;
  2 , 'name' , 'Euler Capital' ;
  3 , 'name' , 'Eq. Movimiento Capital' ;
  4 , 'name' , 'Eq. Agregada Macro' ;
  5 , 'name' , 'Funcion de Produccion' ;
  6 , 'name' , 'AR-1 de PTF' ;
  7 , 'name' , 'Salario Real' ;
  8 , 'name' , 'PIB sobre Trabajo' ;
};
M_.mapping.c.eqidx = [1 2 4 ];
M_.mapping.n.eqidx = [1 2 5 8 ];
M_.mapping.z.eqidx = [1 2 5 6 ];
M_.mapping.k.eqidx = [1 2 3 5 ];
M_.mapping.i.eqidx = [3 4 ];
M_.mapping.y.eqidx = [4 5 8 ];
M_.mapping.w.eqidx = [7 ];
M_.mapping.y_n.eqidx = [7 8 ];
M_.mapping.epsilon.eqidx = [6 ];
M_.static_and_dynamic_models_differ = false;
M_.has_external_function = false;
M_.block_structure.time_recursive = false;
M_.block_structure.block(1).Simulation_Type = 1;
M_.block_structure.block(1).endo_nbr = 1;
M_.block_structure.block(1).mfs = 1;
M_.block_structure.block(1).equation = [ 6];
M_.block_structure.block(1).variable = [ 3];
M_.block_structure.block(1).is_linear = true;
M_.block_structure.block(1).NNZDerivatives = 2;
M_.block_structure.block(1).bytecode_jacob_cols_to_sparse = [1 2 ];
M_.block_structure.block(2).Simulation_Type = 8;
M_.block_structure.block(2).endo_nbr = 5;
M_.block_structure.block(2).mfs = 5;
M_.block_structure.block(2).equation = [ 4 5 3 2 1];
M_.block_structure.block(2).variable = [ 5 6 4 1 2];
M_.block_structure.block(2).is_linear = false;
M_.block_structure.block(2).NNZDerivatives = 16;
M_.block_structure.block(2).bytecode_jacob_cols_to_sparse = [3 6 7 8 9 10 14 15 ];
M_.block_structure.block(3).Simulation_Type = 1;
M_.block_structure.block(3).endo_nbr = 2;
M_.block_structure.block(3).mfs = 2;
M_.block_structure.block(3).equation = [ 8 7];
M_.block_structure.block(3).variable = [ 8 7];
M_.block_structure.block(3).is_linear = true;
M_.block_structure.block(3).NNZDerivatives = 3;
M_.block_structure.block(3).bytecode_jacob_cols_to_sparse = [3 4 ];
M_.block_structure.block(1).g1_sparse_rowval = int32([]);
M_.block_structure.block(1).g1_sparse_colval = int32([]);
M_.block_structure.block(1).g1_sparse_colptr = int32([]);
M_.block_structure.block(2).g1_sparse_rowval = int32([2 3 5 1 3 1 2 3 4 1 4 5 2 5 4 4 ]);
M_.block_structure.block(2).g1_sparse_colval = int32([3 3 3 6 6 7 7 8 8 9 9 9 10 10 14 15 ]);
M_.block_structure.block(2).g1_sparse_colptr = int32([1 1 1 4 4 4 6 8 10 13 15 15 15 15 16 17 ]);
M_.block_structure.block(3).g1_sparse_rowval = int32([]);
M_.block_structure.block(3).g1_sparse_colval = int32([]);
M_.block_structure.block(3).g1_sparse_colptr = int32([]);
M_.block_structure.variable_reordered = [ 3 5 6 4 1 2 8 7];
M_.block_structure.equation_reordered = [ 6 4 5 3 2 1 8 7];
M_.block_structure.incidence(1).lead_lag = -1;
M_.block_structure.incidence(1).sparse_IM = [
 1 3;
 1 4;
 3 4;
 5 3;
 5 4;
 6 3;
];
M_.block_structure.incidence(2).lead_lag = 0;
M_.block_structure.incidence(2).sparse_IM = [
 1 1;
 1 2;
 2 1;
 2 3;
 2 4;
 3 4;
 3 5;
 4 1;
 4 5;
 4 6;
 5 2;
 5 6;
 6 3;
 7 7;
 7 8;
 8 2;
 8 6;
 8 8;
];
M_.block_structure.incidence(3).lead_lag = 1;
M_.block_structure.incidence(3).sparse_IM = [
 2 1;
 2 2;
];
M_.block_structure.dyn_tmp_nbr = 9;
M_.state_var = [3 4 ];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(8, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(1, 1);
M_.params = NaN(7, 1);
M_.endo_trends = struct('deflator', cell(8, 1), 'log_deflator', cell(8, 1), 'growth_factor', cell(8, 1), 'log_growth_factor', cell(8, 1));
M_.NNZDerivatives = [27; 40; -1; ];
M_.dynamic_g1_sparse_rowval = int32([1 5 6 1 3 5 1 2 4 1 5 8 2 6 2 3 3 4 4 5 8 7 7 8 2 2 6 ]);
M_.dynamic_g1_sparse_colval = int32([3 3 3 4 4 4 9 9 9 10 10 10 11 11 12 12 13 13 14 14 14 15 16 16 17 18 25 ]);
M_.dynamic_g1_sparse_colptr = int32([1 1 1 4 7 7 7 7 7 10 13 15 17 19 22 23 25 26 27 27 27 27 27 27 27 28 ]);
M_.dynamic_g2_sparse_indices = int32([1 9 10 ;
1 10 10 ;
1 10 3 ;
1 10 4 ;
1 3 3 ;
1 3 4 ;
1 4 4 ;
2 9 9 ;
2 17 17 ;
2 17 18 ;
2 17 11 ;
2 17 12 ;
2 18 18 ;
2 18 11 ;
2 18 12 ;
2 11 11 ;
2 11 12 ;
2 12 12 ;
5 10 10 ;
5 10 3 ;
5 10 4 ;
5 3 3 ;
5 3 4 ;
5 4 4 ;
8 10 10 ;
8 10 14 ;
]);
M_.lhs = {
'alpha/(1-alpha)*c/(1-n)'; 
'1/c'; 
'k*(1+gamma)*(1+eta)'; 
'y'; 
'y'; 
'z'; 
'w'; 
'y_n'; 
};
M_.static_tmp_nbr = [7; 2; 0; 0; ];
M_.block_structure_stat.block(1).Simulation_Type = 3;
M_.block_structure_stat.block(1).endo_nbr = 1;
M_.block_structure_stat.block(1).mfs = 1;
M_.block_structure_stat.block(1).equation = [ 6];
M_.block_structure_stat.block(1).variable = [ 3];
M_.block_structure_stat.block(2).Simulation_Type = 6;
M_.block_structure_stat.block(2).endo_nbr = 5;
M_.block_structure_stat.block(2).mfs = 5;
M_.block_structure_stat.block(2).equation = [ 2 3 4 5 1];
M_.block_structure_stat.block(2).variable = [ 2 4 5 6 1];
M_.block_structure_stat.block(3).Simulation_Type = 1;
M_.block_structure_stat.block(3).endo_nbr = 2;
M_.block_structure_stat.block(3).mfs = 2;
M_.block_structure_stat.block(3).equation = [ 8 7];
M_.block_structure_stat.block(3).variable = [ 8 7];
M_.block_structure_stat.variable_reordered = [ 3 2 4 5 6 1 8 7];
M_.block_structure_stat.equation_reordered = [ 6 2 3 4 5 1 8 7];
M_.block_structure_stat.incidence.sparse_IM = [
 1 1;
 1 2;
 1 3;
 1 4;
 2 1;
 2 2;
 2 3;
 2 4;
 3 4;
 3 5;
 4 1;
 4 5;
 4 6;
 5 2;
 5 3;
 5 4;
 5 6;
 6 3;
 7 7;
 7 8;
 8 2;
 8 6;
 8 8;
];
M_.block_structure_stat.tmp_nbr = 7;
M_.block_structure_stat.block(1).g1_sparse_rowval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colval = int32([1 ]);
M_.block_structure_stat.block(1).g1_sparse_colptr = int32([1 2 ]);
M_.block_structure_stat.block(2).g1_sparse_rowval = int32([1 4 5 1 2 4 5 2 3 3 4 1 3 5 ]);
M_.block_structure_stat.block(2).g1_sparse_colval = int32([1 1 1 2 2 2 2 3 3 4 4 5 5 5 ]);
M_.block_structure_stat.block(2).g1_sparse_colptr = int32([1 4 8 10 12 15 ]);
M_.block_structure_stat.block(3).g1_sparse_rowval = int32([]);
M_.block_structure_stat.block(3).g1_sparse_colval = int32([]);
M_.block_structure_stat.block(3).g1_sparse_colptr = int32([]);
M_.static_g1_sparse_rowval = int32([1 2 4 1 2 5 8 1 2 5 6 1 2 3 5 3 4 4 5 8 7 7 8 ]);
M_.static_g1_sparse_colval = int32([1 1 1 2 2 2 2 3 3 3 3 4 4 4 4 5 5 6 6 6 7 8 8 ]);
M_.static_g1_sparse_colptr = int32([1 4 8 12 16 18 21 22 24 ]);
close all; 
M_.params(1) = 0.640;
alpha = M_.params(1);
M_.params(2) = 0.400;
theta = M_.params(2);
M_.params(3) = 0.987;
beta = M_.params(3);
M_.params(4) = 0.0156;
gamma = M_.params(4);
M_.params(5) = 0.012;
delta = M_.params(5);
M_.params(6) = 0.012;
eta = M_.params(6);
M_.params(7) = 0.95;
rho = M_.params(7);
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.0007)^2;
%
% INITVAL instructions
%
options_.initval_file = false;
oo_.steady_state(3) = 0;
oo_.steady_state(4) = 24.7;
oo_.steady_state(1) = 1.33;
oo_.steady_state(2) = 0.31;
oo_.steady_state(5) = 0.46;
oo_.steady_state(8) = 5.7;
oo_.steady_state(6) = 1.8;
oo_.steady_state(7) = 3.4;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
steady;
oo_.dr.eigval = check(M_,options_,oo_);
options_resid_ = struct();
display_static_residuals(M_, options_, oo_, options_resid_);
options_.irf = 50;
options_.order = 2;
options_.relative_irf = true;
var_list_ = {};
[info, oo_, options_, M_] = stoch_simul(M_, options_, oo_, var_list_);


oo_.time = toc(tic0);
disp(['Total computing time : ' dynsec2hms(oo_.time) ]);
if ~exist([M_.dname filesep 'Output'],'dir')
    mkdir(M_.dname,'Output');
end
save([M_.dname filesep 'Output' filesep 'RBC_desde_cero_results.mat'], 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'RBC_desde_cero_results.mat'], 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'RBC_desde_cero_results.mat'], 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'RBC_desde_cero_results.mat'], 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'RBC_desde_cero_results.mat'], 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'RBC_desde_cero_results.mat'], 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'RBC_desde_cero_results.mat'], 'oo_recursive_', '-append');
end
if exist('options_mom_', 'var') == 1
  save([M_.dname filesep 'Output' filesep 'RBC_desde_cero_results.mat'], 'options_mom_', '-append');
end
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
