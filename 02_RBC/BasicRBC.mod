// Basic RBC Model as described in Chapter 1 of Cooley, 
// Frontiers of Business Cycle Research
// 
// Details:
//   1) Computation in levels, 1st order approximation.
//   2) Calculates also by perturbation investment (i) and labor 
//   productivity (y_l).
//   3) Calibration from Cooley and Prescott.
//
// Jesus Fernandez-Villaverde
// Philadelphia, March 3, 2005
// Modified by Hui He (ICD@IMF) on June 10, 2016 to incorporate GHH preference
// Modified by Felipe Zanna (ICD@IMF) on March 22, 2018 to make it consistent with Lecture
// 3 of the course "DSGE Models for Central Banks"


//----------------------------------------------------------------
// 1. Defining variables
//----------------------------------------------------------------

//var z c k n y_n y i w;  // endogenous variables
var z k c n i y_n y w;  // endogenous variables


varexo e;            // exogenous shock

parameters theta delta rho sigmae gamma beta alpha eta;

//----------------------------------------------------------------
// 2. Calibration
//----------------------------------------------------------------

// Technology
theta  = 0.4;
delta  = 0.012;
rho    = 0.95;
sigmae  = 0.007; 
gamma  = (1.0156^0.25)-1;


// Preferences
beta   = 0.987;
alpha  = 0.64;
eta    = (1.012^0.25)-1;

//----------------------------------------------------------------
// 3. Model
//----------------------------------------------------------------

model;
  (1+gamma)/c = beta*(1/c(+1))*(1+theta*exp(z(+1))*(k^(theta-1))*(n(+1)^(1-theta))-delta);
  alpha*c/((1-alpha)*(1-n)) = (1-theta)*exp(z)*(k(-1)^theta)*(n^(-theta));      
  c+i = y;
  y = exp(z)*(k(-1)^theta)*(n^(1-theta));
  i = (1+gamma)*(1+eta)*k-(1-delta)*k(-1);
  y_n = y/n;
  w   = (1-theta)*y_n; 
  z = rho*z(-1)+e;
  //z = rho*z(-1)+e(-8);
end;

//----------------------------------------------------------------
// 4. Computation
//----------------------------------------------------------------

initval;
  k = 24;
  c = 1.33;
  n = 0.31;
  z = 0; 
  e = 0;
end;

shocks;
var e = sigmae^2;
end;

check;
steady;

stoch_simul(hp_filter = 1600, order = 1, irf=40);

