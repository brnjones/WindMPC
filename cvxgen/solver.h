/* Produced by CVXGEN, 2014-05-26 18:08:11 -0400.  */
/* CVXGEN is Copyright (C) 2006-2012 Jacob Mattingley, jem@cvxgen.com. */
/* The code in this file is Copyright (C) 2006-2012 Jacob Mattingley. */
/* CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial */
/* applications without prior written permission from Jacob Mattingley. */

/* Filename: solver.h. */
/* Description: Header file with relevant definitions. */
#ifndef SOLVER_H
#define SOLVER_H
/* Uncomment the next line to remove all library dependencies. */
/*#define ZERO_LIBRARY_MODE */
#ifdef MATLAB_MEX_FILE
/* Matlab functions. MATLAB_MEX_FILE will be defined by the mex compiler. */
/* If you are not using the mex compiler, this functionality will not intrude, */
/* as it will be completely disabled at compile-time. */
#include "mex.h"
#else
#ifndef ZERO_LIBRARY_MODE
#include <stdio.h>
#endif
#endif
/* Space must be allocated somewhere (testsolver.c, csolve.c or your own */
/* program) for the global variables vars, params, work and settings. */
/* At the bottom of this file, they are externed. */
#ifndef ZERO_LIBRARY_MODE
#include <math.h>
#define pm(A, m, n) printmatrix(#A, A, m, n, 1)
#endif
typedef struct Params_t {
  double a_1[1];
  double b_1[1];
  double a_2[1];
  double b_2[1];
  double a_3[1];
  double b_3[1];
  double a_4[1];
  double b_4[1];
  double a_5[1];
  double b_5[1];
  double a_6[1];
  double b_6[1];
  double a_7[1];
  double b_7[1];
  double a_8[1];
  double b_8[1];
  double a_9[1];
  double b_9[1];
  double a_10[1];
  double b_10[1];
  double a_11[1];
  double b_11[1];
  double a_12[1];
  double b_12[1];
  double a_13[1];
  double b_13[1];
  double a_14[1];
  double b_14[1];
  double a_15[1];
  double b_15[1];
  double a_16[1];
  double b_16[1];
  double a_17[1];
  double b_17[1];
  double a_18[1];
  double b_18[1];
  double a_19[1];
  double b_19[1];
  double a_20[1];
  double b_20[1];
  double a_21[1];
  double b_21[1];
  double a_22[1];
  double b_22[1];
  double a_23[1];
  double b_23[1];
  double a_24[1];
  double b_24[1];
  double a_25[1];
  double b_25[1];
  double a_26[1];
  double b_26[1];
  double a_27[1];
  double b_27[1];
  double a_28[1];
  double b_28[1];
  double a_29[1];
  double b_29[1];
  double a_30[1];
  double b_30[1];
  double a_31[1];
  double b_31[1];
  double a_32[1];
  double b_32[1];
  double a_33[1];
  double b_33[1];
  double a_34[1];
  double b_34[1];
  double a_35[1];
  double b_35[1];
  double a_36[1];
  double b_36[1];
  double a_37[1];
  double b_37[1];
  double a_38[1];
  double b_38[1];
  double a_39[1];
  double b_39[1];
  double c_1[1];
  double d_1[1];
  double c_2[1];
  double d_2[1];
  double c_3[1];
  double d_3[1];
  double c_4[1];
  double d_4[1];
  double c_5[1];
  double d_5[1];
  double c_6[1];
  double d_6[1];
  double c_7[1];
  double d_7[1];
  double c_8[1];
  double d_8[1];
  double c_9[1];
  double d_9[1];
  double c_10[1];
  double d_10[1];
  double c_11[1];
  double d_11[1];
  double c_12[1];
  double d_12[1];
  double c_13[1];
  double d_13[1];
  double c_14[1];
  double d_14[1];
  double c_15[1];
  double d_15[1];
  double c_16[1];
  double d_16[1];
  double c_17[1];
  double d_17[1];
  double c_18[1];
  double d_18[1];
  double c_19[1];
  double d_19[1];
  double c_20[1];
  double d_20[1];
  double c_21[1];
  double d_21[1];
  double c_22[1];
  double d_22[1];
  double c_23[1];
  double d_23[1];
  double c_24[1];
  double d_24[1];
  double c_25[1];
  double d_25[1];
  double c_26[1];
  double d_26[1];
  double c_27[1];
  double d_27[1];
  double c_28[1];
  double d_28[1];
  double c_29[1];
  double d_29[1];
  double c_30[1];
  double d_30[1];
  double c_31[1];
  double d_31[1];
  double c_32[1];
  double d_32[1];
  double c_33[1];
  double d_33[1];
  double c_34[1];
  double d_34[1];
  double c_35[1];
  double d_35[1];
  double c_36[1];
  double d_36[1];
  double c_37[1];
  double d_37[1];
  double c_38[1];
  double d_38[1];
  double c_39[1];
  double d_39[1];
  double e_1[1];
  double e_2[1];
  double e_3[1];
  double e_4[1];
  double e_5[1];
  double e_6[1];
  double e_7[1];
  double e_8[1];
  double e_9[1];
  double e_10[1];
  double e_11[1];
  double e_12[1];
  double e_13[1];
  double e_14[1];
  double e_15[1];
  double e_16[1];
  double e_17[1];
  double e_18[1];
  double e_19[1];
  double e_20[1];
  double e_21[1];
  double e_22[1];
  double e_23[1];
  double e_24[1];
  double e_25[1];
  double e_26[1];
  double e_27[1];
  double e_28[1];
  double e_29[1];
  double e_30[1];
  double e_31[1];
  double e_32[1];
  double e_33[1];
  double e_34[1];
  double e_35[1];
  double e_36[1];
  double e_37[1];
  double e_38[1];
  double e_39[1];
  double h[1];
  double x0[3];
  double xf[3];
  double phi0[1];
  double phif[1];
  double u0[1];
  double uf[1];
  double u_max[1];
  double phi_max[1];
  double psi_hat_1[1];
  double rho_1[1];
  double psi_hat_2[1];
  double rho_2[1];
  double psi_hat_3[1];
  double rho_3[1];
  double psi_hat_4[1];
  double rho_4[1];
  double psi_hat_5[1];
  double rho_5[1];
  double psi_hat_6[1];
  double rho_6[1];
  double psi_hat_7[1];
  double rho_7[1];
  double psi_hat_8[1];
  double rho_8[1];
  double psi_hat_9[1];
  double rho_9[1];
  double psi_hat_10[1];
  double rho_10[1];
  double psi_hat_11[1];
  double rho_11[1];
  double psi_hat_12[1];
  double rho_12[1];
  double psi_hat_13[1];
  double rho_13[1];
  double psi_hat_14[1];
  double rho_14[1];
  double psi_hat_15[1];
  double rho_15[1];
  double psi_hat_16[1];
  double rho_16[1];
  double psi_hat_17[1];
  double rho_17[1];
  double psi_hat_18[1];
  double rho_18[1];
  double psi_hat_19[1];
  double rho_19[1];
  double psi_hat_20[1];
  double rho_20[1];
  double psi_hat_21[1];
  double rho_21[1];
  double psi_hat_22[1];
  double rho_22[1];
  double psi_hat_23[1];
  double rho_23[1];
  double psi_hat_24[1];
  double rho_24[1];
  double psi_hat_25[1];
  double rho_25[1];
  double psi_hat_26[1];
  double rho_26[1];
  double psi_hat_27[1];
  double rho_27[1];
  double psi_hat_28[1];
  double rho_28[1];
  double psi_hat_29[1];
  double rho_29[1];
  double psi_hat_30[1];
  double rho_30[1];
  double psi_hat_31[1];
  double rho_31[1];
  double psi_hat_32[1];
  double rho_32[1];
  double psi_hat_33[1];
  double rho_33[1];
  double psi_hat_34[1];
  double rho_34[1];
  double psi_hat_35[1];
  double rho_35[1];
  double psi_hat_36[1];
  double rho_36[1];
  double psi_hat_37[1];
  double rho_37[1];
  double psi_hat_38[1];
  double rho_38[1];
  double psi_hat_39[1];
  double rho_39[1];
  double psi_hat_40[1];
  double rho_40[1];
  double *a[40];
  double *b[40];
  double *c[40];
  double *d[40];
  double *e[40];
  double *psi_hat[41];
  double *rho[41];
} Params;
typedef struct Vars_t {
  double *t_01; /* 40 rows. */
  double *phi; /* 40 rows. */
  double *t_02; /* 40 rows. */
  double *u; /* 40 rows. */
  double *t_03; /* 40 rows. */
  double *t_04; /* 1 rows. */
  double *x_1; /* 3 rows. */
  double *t_05; /* 1 rows. */
  double *x_2; /* 3 rows. */
  double *t_06; /* 1 rows. */
  double *x_3; /* 3 rows. */
  double *t_07; /* 1 rows. */
  double *x_4; /* 3 rows. */
  double *t_08; /* 1 rows. */
  double *x_5; /* 3 rows. */
  double *t_09; /* 1 rows. */
  double *x_6; /* 3 rows. */
  double *t_10; /* 1 rows. */
  double *x_7; /* 3 rows. */
  double *t_11; /* 1 rows. */
  double *x_8; /* 3 rows. */
  double *t_12; /* 1 rows. */
  double *x_9; /* 3 rows. */
  double *t_13; /* 1 rows. */
  double *x_10; /* 3 rows. */
  double *t_14; /* 1 rows. */
  double *x_11; /* 3 rows. */
  double *t_15; /* 1 rows. */
  double *x_12; /* 3 rows. */
  double *t_16; /* 1 rows. */
  double *x_13; /* 3 rows. */
  double *t_17; /* 1 rows. */
  double *x_14; /* 3 rows. */
  double *t_18; /* 1 rows. */
  double *x_15; /* 3 rows. */
  double *t_19; /* 1 rows. */
  double *x_16; /* 3 rows. */
  double *t_20; /* 1 rows. */
  double *x_17; /* 3 rows. */
  double *t_21; /* 1 rows. */
  double *x_18; /* 3 rows. */
  double *t_22; /* 1 rows. */
  double *x_19; /* 3 rows. */
  double *t_23; /* 1 rows. */
  double *x_20; /* 3 rows. */
  double *t_24; /* 1 rows. */
  double *x_21; /* 3 rows. */
  double *t_25; /* 1 rows. */
  double *x_22; /* 3 rows. */
  double *t_26; /* 1 rows. */
  double *x_23; /* 3 rows. */
  double *t_27; /* 1 rows. */
  double *x_24; /* 3 rows. */
  double *t_28; /* 1 rows. */
  double *x_25; /* 3 rows. */
  double *t_29; /* 1 rows. */
  double *x_26; /* 3 rows. */
  double *t_30; /* 1 rows. */
  double *x_27; /* 3 rows. */
  double *t_31; /* 1 rows. */
  double *x_28; /* 3 rows. */
  double *t_32; /* 1 rows. */
  double *x_29; /* 3 rows. */
  double *t_33; /* 1 rows. */
  double *x_30; /* 3 rows. */
  double *t_34; /* 1 rows. */
  double *x_31; /* 3 rows. */
  double *t_35; /* 1 rows. */
  double *x_32; /* 3 rows. */
  double *t_36; /* 1 rows. */
  double *x_33; /* 3 rows. */
  double *t_37; /* 1 rows. */
  double *x_34; /* 3 rows. */
  double *t_38; /* 1 rows. */
  double *x_35; /* 3 rows. */
  double *t_39; /* 1 rows. */
  double *x_36; /* 3 rows. */
  double *t_40; /* 1 rows. */
  double *x_37; /* 3 rows. */
  double *t_41; /* 1 rows. */
  double *x_38; /* 3 rows. */
  double *t_42; /* 1 rows. */
  double *x_39; /* 3 rows. */
  double *t_43; /* 1 rows. */
  double *x_40; /* 3 rows. */
  double *x[41];
} Vars;
typedef struct Workspace_t {
  double h[440];
  double s_inv[440];
  double s_inv_z[440];
  double b[166];
  double q[360];
  double rhs[1406];
  double x[1406];
  double *s;
  double *z;
  double *y;
  double lhs_aff[1406];
  double lhs_cc[1406];
  double buffer[1406];
  double buffer2[1406];
  double KKT[2558];
  double L[2325];
  double d[1406];
  double v[1406];
  double d_inv[1406];
  double gap;
  double optval;
  double ineq_resid_squared;
  double eq_resid_squared;
  double block_33[1];
  /* Pre-op symbols. */
  int converged;
} Workspace;
typedef struct Settings_t {
  double resid_tol;
  double eps;
  int max_iters;
  int refine_steps;
  int better_start;
  /* Better start obviates the need for s_init and z_init. */
  double s_init;
  double z_init;
  int verbose;
  /* Show extra details of the iterative refinement steps. */
  int verbose_refinement;
  int debug;
  /* For regularization. Minimum value of abs(D_ii) in the kkt D factor. */
  double kkt_reg;
} Settings;
extern Vars vars;
extern Params params;
extern Workspace work;
extern Settings settings;
/* Function definitions in ldl.c: */
void ldl_solve(double *target, double *var);
void ldl_factor(void);
double check_factorization(void);
void matrix_multiply(double *result, double *source);
double check_residual(double *target, double *multiplicand);
void fill_KKT(void);

/* Function definitions in matrix_support.c: */
void multbymA(double *lhs, double *rhs);
void multbymAT(double *lhs, double *rhs);
void multbymG(double *lhs, double *rhs);
void multbymGT(double *lhs, double *rhs);
void multbyP(double *lhs, double *rhs);
void fillq(void);
void fillh(void);
void fillb(void);
void pre_ops(void);

/* Function definitions in solver.c: */
double eval_gap(void);
void set_defaults(void);
void setup_pointers(void);
void setup_indexed_params(void);
void setup_indexed_optvars(void);
void setup_indexing(void);
void set_start(void);
double eval_objv(void);
void fillrhs_aff(void);
void fillrhs_cc(void);
void refine(double *target, double *var);
double calc_ineq_resid_squared(void);
double calc_eq_resid_squared(void);
void better_start(void);
void fillrhs_start(void);
long solve(void);

/* Function definitions in testsolver.c: */
int main(int argc, char **argv);
void load_default_data(void);

/* Function definitions in util.c: */
void tic(void);
float toc(void);
float tocq(void);
void printmatrix(char *name, double *A, int m, int n, int sparse);
double unif(double lower, double upper);
float ran1(long*idum, int reset);
float randn_internal(long *idum, int reset);
double randn(void);
void reset_rand(void);

#endif
