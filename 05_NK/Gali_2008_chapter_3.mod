% Codigo para Modelo NK
% Curso Banco de la Rep�blica-CAEP PROFESORES UNIVERSITARIOS 2023
% Profesor: JUAN ANDR�S RINC�N GALVIS
/*
 * This file implements the baseline New Keynesian model of Jordi Gal�� (2008): Monetary Policy, Inflation,
 * and the Business Cycle, Princeton University Press, Chapter 3
 *
 * Note that all model variables are expressed in deviations from steady state, i.e. in contrast to
 * to the chapter, both the nominal interest rate and natural output are not in log-levels, but rather mean 0
 */

close all;

%define whether to use interest rate or money growth rate rule 
@#define money_growth_rule = 0

var pi ${\pi}$ (long_name='inflation')
    y_gap ${\tilde y}$ (long_name='output gap')
    y_nat ${y^{nat}}$ (long_name='natural output')      //(in contrast to the textbook defined in deviation from steady state)
    y ${y}$ (long_name='output')
    r_nat ${r^{nat}}$ (long_name='natural interest rate')
    r_real ${r^r}$ (long_name='//real interest rate')     
    i ${i}$ (long_name='nominal interrst rate')
    n ${n}$ (long_name='hours worked')
    m_real ${m-p}$ (long_name='real money stock')
    m_growth_ann ${\Delta m}$ (long_name='money growth annualized')
    @#if money_growth_rule==0
        nu ${\nu}$ (long_name='AR(1) monetary policy shock process')    
    @#else
        money_growth  ${\Delta m_q}$ (long_name='money growth')
    @#endif
    a  ${a}$ (long_name='AR(1) technology shock process')
    r_real_ann ${r^{r,ann}}$ (long_name='annualized real interest rate')
    i_ann ${i^{ann}}$ (long_name='annualized nominal interest rate')
    r_nat_ann ${r^{nat,ann}}$ (long_name='annualized natural interest rate')
    pi_ann ${\pi^{ann}}$ (long_name='annualized inflation rate')
    ;     

varexo eps_a ${\varepsilon_a}$   (long_name='technology shock')
            @#if money_growth_rule==0
                eps_nu ${\varepsilon_\nu}$   (long_name='monetary policy shock')
            @#else   
                eps_m ${\varepsilon_\m}$   (long_name='money growth rate shock')
            @#endif
       ;

parameters alppha ${\alppha}$ (long_name='capital share')
    betta ${\beta}$ (long_name='discount factor')
    rho_a ${\rho_a}$ (long_name='autocorrelation technology shock')
    @#if money_growth_rule==0
        rho_nu ${\rho_{\nu}}$ (long_name='autocorrelation monetary policy shock')
    @#else   
        rho_m ${\rho_{m}}$ (long_name='autocorrelation monetary growth rate shock')
    @#endif
    siggma ${\sigma}$ (long_name='log utility')
    phi ${\phi}$ (long_name='unitary Frisch elasticity')
    phi_pi ${\phi_{\pi}}$ (long_name='inflation feedback Taylor Rule')
    phi_y ${\phi_{y}}$ (long_name='output feedback Taylor Rule')
    eta ${\eta}$ (long_name='semi-elasticity of money demand')
    epsilon ${\epsilon}$ (long_name='demand elasticity')
    theta ${\theta}$ (long_name='Calvo parameter')
    rho
    miu
    h   ${\h}$ (long_name='habit formation parameter')
    ;
%----------------------------------------------------------------
% Parametrization, p. 52
%----------------------------------------------------------------
siggma = 1;
phi= 1;
phi_pi = 1.5; // 0.8 1.5
phi_y  =  0.5/4;
theta= 2/3; //0.01
@#if money_growth_rule==0
    rho_nu =0.5;
@#else   
    rho_m=0.5;

@#endif
rho_a  = 0.9;
betta = 0.99;
eta  = 4;
alppha = 1/3;
epsilon = 6; // 1.01  6
rho = -log(betta);   // see page 43
miu = log(epsilon/(epsilon-1)); // desired mark-up, see page 45
h = 0.8;//0.8;

%----------------------------------------------------------------
% First Order Conditions
%----------------------------------------------------------------

model(linear); 
//Composite parameters
#Omega=(1-alppha)/(1-alppha+alppha*epsilon);  //defined on page 47
#psi_n_ya=(1+phi)/(siggma*(1-alppha)+phi+alppha); //defined on page 48
#lambda=(1-theta)*(1-betta*theta)/theta*Omega; //defined on page 47
#kappa=lambda*(siggma+(phi+alppha)/(1-alppha));  //defined on page 49
#psi_n_y=-(1-alppha)*(miu-log(1-alppha))/(siggma*(1-alppha)+phi+alppha); // defined on page 48

//1. New Keynesian Phillips Curve eq. (21)
// pi=betta*pi(+1)+kappa*y_gap;
pi=0.5*pi(-1)+0.5*betta*pi(+1)+kappa*y_gap; // inertia in PC curve
//2. Dynamic IS Curve eq. (22)
// y_gap=-1/siggma*(i-pi(+1)-r_nat)+y_gap(+1);
y_gap=-(1-h)/((1+h)*siggma)*(i-pi(+1)-r_nat)+1/(1+h)*y_gap(+1)+h/(1+h)*y_gap(-1);  // IS curve for habit formation
//3. Interest Rate Rule eq. (25)
@#if money_growth_rule==0
// i=phi_pi*pi+phi_y*y_gap+nu;
 i=0.5*i(-1)+0.5*(phi_pi*pi+phi_y*y_gap)+nu; // interest rate smoothing
@#endif
//4. Definition natural rate of interest eq. (23)
r_nat=siggma*psi_n_ya*(a(+1)-a);
//5. Definition real interest rate
r_real=i-pi(+1);
//6. Definition natural output, eq. (19)
y_nat=psi_n_ya*a;
//7. Definition output gap
y_gap=y-y_nat;
//8. Monetary policy shock
@#if money_growth_rule==0
    nu=rho_nu*nu(-1)+eps_nu;
@#endif
//9. TFP shock
a=rho_a*a(-1)+eps_a;
//10. Production function (eq. 13)
y=a+(1-alppha)*n;
//11. Money growth (derived from eq. (4))
m_growth_ann=4*(y-y(-1)-eta*(i-i(-1))+pi);
//12. Real money demand (eq. 4)
m_real=y-eta*i;
@#if money_growth_rule==1
//definition nominal money growth
money_growth=m_real-m_real(-1)+pi;
//exogenous process for money growth
money_growth=rho_m*(money_growth(-1))+eps_m;
@#endif

//12. Annualized nominal interest rate
i_ann=4*i;
//13. Annualized real interest rate
r_real_ann=4*r_real;
//14. Annualized natural interest rate
r_nat_ann=4*r_nat;
//15. Annualized inflation
pi_ann=4*pi;
//m_growth_ann=4*money_growth;
end;

%----------------------------------------------------------------
%  define shock variances
%---------------------------------------------------------------


shocks;
    @#if money_growth_rule==0
        var eps_nu = 0.25^2; //1 standard deviation shock of 25 basis points, i.e. 1 percentage point annualized
    @#else   
        var eps_m = 0.25^2; //1 standard deviation shock of 25 basis points, i.e. 1 percentage point annualized
    @#endif
end;

%----------------------------------------------------------------
%  steady states: all 0 due to linear model
%---------------------------------------------------------------
resid(1);
steady;
check;

%----------------------------------------------------------------
% generate IRFs, replicates Figures 3.1, p. 53 (interest rate rule)
% 3.3, p. 57 (money growth rule)
%----------------------------------------------------------------
@#if money_growth_rule==0
stoch_simul(order = 1,irf=15) y_gap pi_ann i_ann r_real_ann m_growth_ann nu;
@#else
stoch_simul(order = 1,irf=15) y_gap pi_ann i_ann r_real_ann m_real m_growth_ann;
@#endif


shocks;
    @#if money_growth_rule==0
        var eps_nu = 0;   //shut off monetary policy shock
    @#else   
        var eps_m = 0;   //shut off monetary policy shock
    @#endif
var eps_a  = 1^2; //unit shock to technology
end;

%----------------------------------------------------------------
% generate IRFs, replicates Figures 3.2, p. 55 (interest rate rule)
% 3.4, p. 59 (money growth rule)
%----------------------------------------------------------------
stoch_simul(order = 1,irf=15,irf_plot_threshold=0) y_gap pi_ann y n i_ann r_real_ann m_growth_ann m_real a;