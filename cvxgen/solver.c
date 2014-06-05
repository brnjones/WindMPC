/* Produced by CVXGEN, 2014-05-26 18:08:08 -0400.  */
/* CVXGEN is Copyright (C) 2006-2012 Jacob Mattingley, jem@cvxgen.com. */
/* The code in this file is Copyright (C) 2006-2012 Jacob Mattingley. */
/* CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial */
/* applications without prior written permission from Jacob Mattingley. */

/* Filename: solver.c. */
/* Description: Main solver file. */
#include "solver.h"
double eval_gap(void) {
  int i;
  double gap;
  gap = 0;
  for (i = 0; i < 440; i++)
    gap += work.z[i]*work.s[i];
  return gap;
}
void set_defaults(void) {
  settings.resid_tol = 1e-6;
  settings.eps = 1e-4;
  settings.max_iters = 25;
  settings.refine_steps = 1;
  settings.s_init = 1;
  settings.z_init = 1;
  settings.debug = 0;
  settings.verbose = 1;
  settings.verbose_refinement = 0;
  settings.better_start = 1;
  settings.kkt_reg = 1e-7;
}
void setup_pointers(void) {
  work.y = work.x + 360;
  work.s = work.x + 526;
  work.z = work.x + 966;
  vars.phi = work.x + 0;
  vars.u = work.x + 200;
  vars.x_1 = work.x + 240;
  vars.x_2 = work.x + 243;
  vars.x_3 = work.x + 246;
  vars.x_4 = work.x + 249;
  vars.x_5 = work.x + 252;
  vars.x_6 = work.x + 255;
  vars.x_7 = work.x + 258;
  vars.x_8 = work.x + 261;
  vars.x_9 = work.x + 264;
  vars.x_10 = work.x + 267;
  vars.x_11 = work.x + 270;
  vars.x_12 = work.x + 273;
  vars.x_13 = work.x + 276;
  vars.x_14 = work.x + 279;
  vars.x_15 = work.x + 282;
  vars.x_16 = work.x + 285;
  vars.x_17 = work.x + 288;
  vars.x_18 = work.x + 291;
  vars.x_19 = work.x + 294;
  vars.x_20 = work.x + 297;
  vars.x_21 = work.x + 300;
  vars.x_22 = work.x + 303;
  vars.x_23 = work.x + 306;
  vars.x_24 = work.x + 309;
  vars.x_25 = work.x + 312;
  vars.x_26 = work.x + 315;
  vars.x_27 = work.x + 318;
  vars.x_28 = work.x + 321;
  vars.x_29 = work.x + 324;
  vars.x_30 = work.x + 327;
  vars.x_31 = work.x + 330;
  vars.x_32 = work.x + 333;
  vars.x_33 = work.x + 336;
  vars.x_34 = work.x + 339;
  vars.x_35 = work.x + 342;
  vars.x_36 = work.x + 345;
  vars.x_37 = work.x + 348;
  vars.x_38 = work.x + 351;
  vars.x_39 = work.x + 354;
  vars.x_40 = work.x + 357;
}
void setup_indexed_params(void) {
  /* In CVXGEN, you can say */
  /*   parameters */
  /*     A[i] (5,3), i=1..4 */
  /*   end */
  /* This function sets up A[2] to be a pointer to A_2, which is a length-15 */
  /* vector of doubles. */
  /* If you access parameters that you haven't defined in CVXGEN, the result */
  /* is undefined. */
  params.a[1] = params.a_1;
  params.b[1] = params.b_1;
  params.a[2] = params.a_2;
  params.b[2] = params.b_2;
  params.a[3] = params.a_3;
  params.b[3] = params.b_3;
  params.a[4] = params.a_4;
  params.b[4] = params.b_4;
  params.a[5] = params.a_5;
  params.b[5] = params.b_5;
  params.a[6] = params.a_6;
  params.b[6] = params.b_6;
  params.a[7] = params.a_7;
  params.b[7] = params.b_7;
  params.a[8] = params.a_8;
  params.b[8] = params.b_8;
  params.a[9] = params.a_9;
  params.b[9] = params.b_9;
  params.a[10] = params.a_10;
  params.b[10] = params.b_10;
  params.a[11] = params.a_11;
  params.b[11] = params.b_11;
  params.a[12] = params.a_12;
  params.b[12] = params.b_12;
  params.a[13] = params.a_13;
  params.b[13] = params.b_13;
  params.a[14] = params.a_14;
  params.b[14] = params.b_14;
  params.a[15] = params.a_15;
  params.b[15] = params.b_15;
  params.a[16] = params.a_16;
  params.b[16] = params.b_16;
  params.a[17] = params.a_17;
  params.b[17] = params.b_17;
  params.a[18] = params.a_18;
  params.b[18] = params.b_18;
  params.a[19] = params.a_19;
  params.b[19] = params.b_19;
  params.a[20] = params.a_20;
  params.b[20] = params.b_20;
  params.a[21] = params.a_21;
  params.b[21] = params.b_21;
  params.a[22] = params.a_22;
  params.b[22] = params.b_22;
  params.a[23] = params.a_23;
  params.b[23] = params.b_23;
  params.a[24] = params.a_24;
  params.b[24] = params.b_24;
  params.a[25] = params.a_25;
  params.b[25] = params.b_25;
  params.a[26] = params.a_26;
  params.b[26] = params.b_26;
  params.a[27] = params.a_27;
  params.b[27] = params.b_27;
  params.a[28] = params.a_28;
  params.b[28] = params.b_28;
  params.a[29] = params.a_29;
  params.b[29] = params.b_29;
  params.a[30] = params.a_30;
  params.b[30] = params.b_30;
  params.a[31] = params.a_31;
  params.b[31] = params.b_31;
  params.a[32] = params.a_32;
  params.b[32] = params.b_32;
  params.a[33] = params.a_33;
  params.b[33] = params.b_33;
  params.a[34] = params.a_34;
  params.b[34] = params.b_34;
  params.a[35] = params.a_35;
  params.b[35] = params.b_35;
  params.a[36] = params.a_36;
  params.b[36] = params.b_36;
  params.a[37] = params.a_37;
  params.b[37] = params.b_37;
  params.a[38] = params.a_38;
  params.b[38] = params.b_38;
  params.a[39] = params.a_39;
  params.b[39] = params.b_39;
  params.c[1] = params.c_1;
  params.d[1] = params.d_1;
  params.c[2] = params.c_2;
  params.d[2] = params.d_2;
  params.c[3] = params.c_3;
  params.d[3] = params.d_3;
  params.c[4] = params.c_4;
  params.d[4] = params.d_4;
  params.c[5] = params.c_5;
  params.d[5] = params.d_5;
  params.c[6] = params.c_6;
  params.d[6] = params.d_6;
  params.c[7] = params.c_7;
  params.d[7] = params.d_7;
  params.c[8] = params.c_8;
  params.d[8] = params.d_8;
  params.c[9] = params.c_9;
  params.d[9] = params.d_9;
  params.c[10] = params.c_10;
  params.d[10] = params.d_10;
  params.c[11] = params.c_11;
  params.d[11] = params.d_11;
  params.c[12] = params.c_12;
  params.d[12] = params.d_12;
  params.c[13] = params.c_13;
  params.d[13] = params.d_13;
  params.c[14] = params.c_14;
  params.d[14] = params.d_14;
  params.c[15] = params.c_15;
  params.d[15] = params.d_15;
  params.c[16] = params.c_16;
  params.d[16] = params.d_16;
  params.c[17] = params.c_17;
  params.d[17] = params.d_17;
  params.c[18] = params.c_18;
  params.d[18] = params.d_18;
  params.c[19] = params.c_19;
  params.d[19] = params.d_19;
  params.c[20] = params.c_20;
  params.d[20] = params.d_20;
  params.c[21] = params.c_21;
  params.d[21] = params.d_21;
  params.c[22] = params.c_22;
  params.d[22] = params.d_22;
  params.c[23] = params.c_23;
  params.d[23] = params.d_23;
  params.c[24] = params.c_24;
  params.d[24] = params.d_24;
  params.c[25] = params.c_25;
  params.d[25] = params.d_25;
  params.c[26] = params.c_26;
  params.d[26] = params.d_26;
  params.c[27] = params.c_27;
  params.d[27] = params.d_27;
  params.c[28] = params.c_28;
  params.d[28] = params.d_28;
  params.c[29] = params.c_29;
  params.d[29] = params.d_29;
  params.c[30] = params.c_30;
  params.d[30] = params.d_30;
  params.c[31] = params.c_31;
  params.d[31] = params.d_31;
  params.c[32] = params.c_32;
  params.d[32] = params.d_32;
  params.c[33] = params.c_33;
  params.d[33] = params.d_33;
  params.c[34] = params.c_34;
  params.d[34] = params.d_34;
  params.c[35] = params.c_35;
  params.d[35] = params.d_35;
  params.c[36] = params.c_36;
  params.d[36] = params.d_36;
  params.c[37] = params.c_37;
  params.d[37] = params.d_37;
  params.c[38] = params.c_38;
  params.d[38] = params.d_38;
  params.c[39] = params.c_39;
  params.d[39] = params.d_39;
  params.e[1] = params.e_1;
  params.e[2] = params.e_2;
  params.e[3] = params.e_3;
  params.e[4] = params.e_4;
  params.e[5] = params.e_5;
  params.e[6] = params.e_6;
  params.e[7] = params.e_7;
  params.e[8] = params.e_8;
  params.e[9] = params.e_9;
  params.e[10] = params.e_10;
  params.e[11] = params.e_11;
  params.e[12] = params.e_12;
  params.e[13] = params.e_13;
  params.e[14] = params.e_14;
  params.e[15] = params.e_15;
  params.e[16] = params.e_16;
  params.e[17] = params.e_17;
  params.e[18] = params.e_18;
  params.e[19] = params.e_19;
  params.e[20] = params.e_20;
  params.e[21] = params.e_21;
  params.e[22] = params.e_22;
  params.e[23] = params.e_23;
  params.e[24] = params.e_24;
  params.e[25] = params.e_25;
  params.e[26] = params.e_26;
  params.e[27] = params.e_27;
  params.e[28] = params.e_28;
  params.e[29] = params.e_29;
  params.e[30] = params.e_30;
  params.e[31] = params.e_31;
  params.e[32] = params.e_32;
  params.e[33] = params.e_33;
  params.e[34] = params.e_34;
  params.e[35] = params.e_35;
  params.e[36] = params.e_36;
  params.e[37] = params.e_37;
  params.e[38] = params.e_38;
  params.e[39] = params.e_39;
  params.psi_hat[1] = params.psi_hat_1;
  params.rho[1] = params.rho_1;
  params.psi_hat[2] = params.psi_hat_2;
  params.rho[2] = params.rho_2;
  params.psi_hat[3] = params.psi_hat_3;
  params.rho[3] = params.rho_3;
  params.psi_hat[4] = params.psi_hat_4;
  params.rho[4] = params.rho_4;
  params.psi_hat[5] = params.psi_hat_5;
  params.rho[5] = params.rho_5;
  params.psi_hat[6] = params.psi_hat_6;
  params.rho[6] = params.rho_6;
  params.psi_hat[7] = params.psi_hat_7;
  params.rho[7] = params.rho_7;
  params.psi_hat[8] = params.psi_hat_8;
  params.rho[8] = params.rho_8;
  params.psi_hat[9] = params.psi_hat_9;
  params.rho[9] = params.rho_9;
  params.psi_hat[10] = params.psi_hat_10;
  params.rho[10] = params.rho_10;
  params.psi_hat[11] = params.psi_hat_11;
  params.rho[11] = params.rho_11;
  params.psi_hat[12] = params.psi_hat_12;
  params.rho[12] = params.rho_12;
  params.psi_hat[13] = params.psi_hat_13;
  params.rho[13] = params.rho_13;
  params.psi_hat[14] = params.psi_hat_14;
  params.rho[14] = params.rho_14;
  params.psi_hat[15] = params.psi_hat_15;
  params.rho[15] = params.rho_15;
  params.psi_hat[16] = params.psi_hat_16;
  params.rho[16] = params.rho_16;
  params.psi_hat[17] = params.psi_hat_17;
  params.rho[17] = params.rho_17;
  params.psi_hat[18] = params.psi_hat_18;
  params.rho[18] = params.rho_18;
  params.psi_hat[19] = params.psi_hat_19;
  params.rho[19] = params.rho_19;
  params.psi_hat[20] = params.psi_hat_20;
  params.rho[20] = params.rho_20;
  params.psi_hat[21] = params.psi_hat_21;
  params.rho[21] = params.rho_21;
  params.psi_hat[22] = params.psi_hat_22;
  params.rho[22] = params.rho_22;
  params.psi_hat[23] = params.psi_hat_23;
  params.rho[23] = params.rho_23;
  params.psi_hat[24] = params.psi_hat_24;
  params.rho[24] = params.rho_24;
  params.psi_hat[25] = params.psi_hat_25;
  params.rho[25] = params.rho_25;
  params.psi_hat[26] = params.psi_hat_26;
  params.rho[26] = params.rho_26;
  params.psi_hat[27] = params.psi_hat_27;
  params.rho[27] = params.rho_27;
  params.psi_hat[28] = params.psi_hat_28;
  params.rho[28] = params.rho_28;
  params.psi_hat[29] = params.psi_hat_29;
  params.rho[29] = params.rho_29;
  params.psi_hat[30] = params.psi_hat_30;
  params.rho[30] = params.rho_30;
  params.psi_hat[31] = params.psi_hat_31;
  params.rho[31] = params.rho_31;
  params.psi_hat[32] = params.psi_hat_32;
  params.rho[32] = params.rho_32;
  params.psi_hat[33] = params.psi_hat_33;
  params.rho[33] = params.rho_33;
  params.psi_hat[34] = params.psi_hat_34;
  params.rho[34] = params.rho_34;
  params.psi_hat[35] = params.psi_hat_35;
  params.rho[35] = params.rho_35;
  params.psi_hat[36] = params.psi_hat_36;
  params.rho[36] = params.rho_36;
  params.psi_hat[37] = params.psi_hat_37;
  params.rho[37] = params.rho_37;
  params.psi_hat[38] = params.psi_hat_38;
  params.rho[38] = params.rho_38;
  params.psi_hat[39] = params.psi_hat_39;
  params.rho[39] = params.rho_39;
  params.psi_hat[40] = params.psi_hat_40;
  params.rho[40] = params.rho_40;
}
void setup_indexed_optvars(void) {
  /* In CVXGEN, you can say */
  /*   variables */
  /*     x[i] (5), i=2..4 */
  /*   end */
  /* This function sets up x[3] to be a pointer to x_3, which is a length-5 */
  /* vector of doubles. */
  /* If you access variables that you haven't defined in CVXGEN, the result */
  /* is undefined. */
  vars.x[2] = vars.x_2;
  vars.x[1] = vars.x_1;
  vars.x[3] = vars.x_3;
  vars.x[4] = vars.x_4;
  vars.x[5] = vars.x_5;
  vars.x[6] = vars.x_6;
  vars.x[7] = vars.x_7;
  vars.x[8] = vars.x_8;
  vars.x[9] = vars.x_9;
  vars.x[10] = vars.x_10;
  vars.x[11] = vars.x_11;
  vars.x[12] = vars.x_12;
  vars.x[13] = vars.x_13;
  vars.x[14] = vars.x_14;
  vars.x[15] = vars.x_15;
  vars.x[16] = vars.x_16;
  vars.x[17] = vars.x_17;
  vars.x[18] = vars.x_18;
  vars.x[19] = vars.x_19;
  vars.x[20] = vars.x_20;
  vars.x[21] = vars.x_21;
  vars.x[22] = vars.x_22;
  vars.x[23] = vars.x_23;
  vars.x[24] = vars.x_24;
  vars.x[25] = vars.x_25;
  vars.x[26] = vars.x_26;
  vars.x[27] = vars.x_27;
  vars.x[28] = vars.x_28;
  vars.x[29] = vars.x_29;
  vars.x[30] = vars.x_30;
  vars.x[31] = vars.x_31;
  vars.x[32] = vars.x_32;
  vars.x[33] = vars.x_33;
  vars.x[34] = vars.x_34;
  vars.x[35] = vars.x_35;
  vars.x[36] = vars.x_36;
  vars.x[37] = vars.x_37;
  vars.x[38] = vars.x_38;
  vars.x[39] = vars.x_39;
  vars.x[40] = vars.x_40;
}
void setup_indexing(void) {
  setup_pointers();
  setup_indexed_params();
  setup_indexed_optvars();
}
void set_start(void) {
  int i;
  for (i = 0; i < 360; i++)
    work.x[i] = 0;
  for (i = 0; i < 166; i++)
    work.y[i] = 0;
  for (i = 0; i < 440; i++)
    work.s[i] = (work.h[i] > 0) ? work.h[i] : settings.s_init;
  for (i = 0; i < 440; i++)
    work.z[i] = settings.z_init;
}
double eval_objv(void) {
  int i;
  double objv;
  /* Borrow space in work.rhs. */
  multbyP(work.rhs, work.x);
  objv = 0;
  for (i = 0; i < 360; i++)
    objv += work.x[i]*work.rhs[i];
  objv *= 0.5;
  for (i = 0; i < 360; i++)
    objv += work.q[i]*work.x[i];
  objv += 0;
  return objv;
}
void fillrhs_aff(void) {
  int i;
  double *r1, *r2, *r3, *r4;
  r1 = work.rhs;
  r2 = work.rhs + 360;
  r3 = work.rhs + 800;
  r4 = work.rhs + 1240;
  /* r1 = -A^Ty - G^Tz - Px - q. */
  multbymAT(r1, work.y);
  multbymGT(work.buffer, work.z);
  for (i = 0; i < 360; i++)
    r1[i] += work.buffer[i];
  multbyP(work.buffer, work.x);
  for (i = 0; i < 360; i++)
    r1[i] -= work.buffer[i] + work.q[i];
  /* r2 = -z. */
  for (i = 0; i < 440; i++)
    r2[i] = -work.z[i];
  /* r3 = -Gx - s + h. */
  multbymG(r3, work.x);
  for (i = 0; i < 440; i++)
    r3[i] += -work.s[i] + work.h[i];
  /* r4 = -Ax + b. */
  multbymA(r4, work.x);
  for (i = 0; i < 166; i++)
    r4[i] += work.b[i];
}
void fillrhs_cc(void) {
  int i;
  double *r2;
  double *ds_aff, *dz_aff;
  double mu;
  double alpha;
  double sigma;
  double smu;
  double minval;
  r2 = work.rhs + 360;
  ds_aff = work.lhs_aff + 360;
  dz_aff = work.lhs_aff + 800;
  mu = 0;
  for (i = 0; i < 440; i++)
    mu += work.s[i]*work.z[i];
  /* Don't finish calculating mu quite yet. */
  /* Find min(min(ds./s), min(dz./z)). */
  minval = 0;
  for (i = 0; i < 440; i++)
    if (ds_aff[i] < minval*work.s[i])
      minval = ds_aff[i]/work.s[i];
  for (i = 0; i < 440; i++)
    if (dz_aff[i] < minval*work.z[i])
      minval = dz_aff[i]/work.z[i];
  /* Find alpha. */
  if (-1 < minval)
      alpha = 1;
  else
      alpha = -1/minval;
  sigma = 0;
  for (i = 0; i < 440; i++)
    sigma += (work.s[i] + alpha*ds_aff[i])*
      (work.z[i] + alpha*dz_aff[i]);
  sigma /= mu;
  sigma = sigma*sigma*sigma;
  /* Finish calculating mu now. */
  mu *= 0.0022727272727272726;
  smu = sigma*mu;
  /* Fill-in the rhs. */
  for (i = 0; i < 360; i++)
    work.rhs[i] = 0;
  for (i = 800; i < 1406; i++)
    work.rhs[i] = 0;
  for (i = 0; i < 440; i++)
    r2[i] = work.s_inv[i]*(smu - ds_aff[i]*dz_aff[i]);
}
void refine(double *target, double *var) {
  int i, j;
  double *residual = work.buffer;
  double norm2;
  double *new_var = work.buffer2;
  for (j = 0; j < settings.refine_steps; j++) {
    norm2 = 0;
    matrix_multiply(residual, var);
    for (i = 0; i < 1406; i++) {
      residual[i] = residual[i] - target[i];
      norm2 += residual[i]*residual[i];
    }
#ifndef ZERO_LIBRARY_MODE
    if (settings.verbose_refinement) {
      if (j == 0)
        printf("Initial residual before refinement has norm squared %.6g.\n", norm2);
      else
        printf("After refinement we get squared norm %.6g.\n", norm2);
    }
#endif
    /* Solve to find new_var = KKT \ (target - A*var). */
    ldl_solve(residual, new_var);
    /* Update var += new_var, or var += KKT \ (target - A*var). */
    for (i = 0; i < 1406; i++) {
      var[i] -= new_var[i];
    }
  }
#ifndef ZERO_LIBRARY_MODE
  if (settings.verbose_refinement) {
    /* Check the residual once more, but only if we're reporting it, since */
    /* it's expensive. */
    norm2 = 0;
    matrix_multiply(residual, var);
    for (i = 0; i < 1406; i++) {
      residual[i] = residual[i] - target[i];
      norm2 += residual[i]*residual[i];
    }
    if (j == 0)
      printf("Initial residual before refinement has norm squared %.6g.\n", norm2);
    else
      printf("After refinement we get squared norm %.6g.\n", norm2);
  }
#endif
}
double calc_ineq_resid_squared(void) {
  /* Calculates the norm ||-Gx - s + h||. */
  double norm2_squared;
  int i;
  /* Find -Gx. */
  multbymG(work.buffer, work.x);
  /* Add -s + h. */
  for (i = 0; i < 440; i++)
    work.buffer[i] += -work.s[i] + work.h[i];
  /* Now find the squared norm. */
  norm2_squared = 0;
  for (i = 0; i < 440; i++)
    norm2_squared += work.buffer[i]*work.buffer[i];
  return norm2_squared;
}
double calc_eq_resid_squared(void) {
  /* Calculates the norm ||-Ax + b||. */
  double norm2_squared;
  int i;
  /* Find -Ax. */
  multbymA(work.buffer, work.x);
  /* Add +b. */
  for (i = 0; i < 166; i++)
    work.buffer[i] += work.b[i];
  /* Now find the squared norm. */
  norm2_squared = 0;
  for (i = 0; i < 166; i++)
    norm2_squared += work.buffer[i]*work.buffer[i];
  return norm2_squared;
}
void better_start(void) {
  /* Calculates a better starting point, using a similar approach to CVXOPT. */
  /* Not yet speed optimized. */
  int i;
  double *x, *s, *z, *y;
  double alpha;
  work.block_33[0] = -1;
  /* Make sure sinvz is 1 to make hijacked KKT system ok. */
  for (i = 0; i < 440; i++)
    work.s_inv_z[i] = 1;
  fill_KKT();
  ldl_factor();
  fillrhs_start();
  /* Borrow work.lhs_aff for the solution. */
  ldl_solve(work.rhs, work.lhs_aff);
  /* Don't do any refinement for now. Precision doesn't matter too much. */
  x = work.lhs_aff;
  s = work.lhs_aff + 360;
  z = work.lhs_aff + 800;
  y = work.lhs_aff + 1240;
  /* Just set x and y as is. */
  for (i = 0; i < 360; i++)
    work.x[i] = x[i];
  for (i = 0; i < 166; i++)
    work.y[i] = y[i];
  /* Now complete the initialization. Start with s. */
  /* Must have alpha > max(z). */
  alpha = -1e99;
  for (i = 0; i < 440; i++)
    if (alpha < z[i])
      alpha = z[i];
  if (alpha < 0) {
    for (i = 0; i < 440; i++)
      work.s[i] = -z[i];
  } else {
    alpha += 1;
    for (i = 0; i < 440; i++)
      work.s[i] = -z[i] + alpha;
  }
  /* Now initialize z. */
  /* Now must have alpha > max(-z). */
  alpha = -1e99;
  for (i = 0; i < 440; i++)
    if (alpha < -z[i])
      alpha = -z[i];
  if (alpha < 0) {
    for (i = 0; i < 440; i++)
      work.z[i] = z[i];
  } else {
    alpha += 1;
    for (i = 0; i < 440; i++)
      work.z[i] = z[i] + alpha;
  }
}
void fillrhs_start(void) {
  /* Fill rhs with (-q, 0, h, b). */
  int i;
  double *r1, *r2, *r3, *r4;
  r1 = work.rhs;
  r2 = work.rhs + 360;
  r3 = work.rhs + 800;
  r4 = work.rhs + 1240;
  for (i = 0; i < 360; i++)
    r1[i] = -work.q[i];
  for (i = 0; i < 440; i++)
    r2[i] = 0;
  for (i = 0; i < 440; i++)
    r3[i] = work.h[i];
  for (i = 0; i < 166; i++)
    r4[i] = work.b[i];
}
long solve(void) {
  int i;
  int iter;
  double *dx, *ds, *dy, *dz;
  double minval;
  double alpha;
  work.converged = 0;
  setup_pointers();
  pre_ops();
#ifndef ZERO_LIBRARY_MODE
  if (settings.verbose)
    printf("iter     objv        gap       |Ax-b|    |Gx+s-h|    step\n");
#endif
  fillq();
  fillh();
  fillb();
  if (settings.better_start)
    better_start();
  else
    set_start();
  for (iter = 0; iter < settings.max_iters; iter++) {
    for (i = 0; i < 440; i++) {
      work.s_inv[i] = 1.0 / work.s[i];
      work.s_inv_z[i] = work.s_inv[i]*work.z[i];
    }
    work.block_33[0] = 0;
    fill_KKT();
    ldl_factor();
    /* Affine scaling directions. */
    fillrhs_aff();
    ldl_solve(work.rhs, work.lhs_aff);
    refine(work.rhs, work.lhs_aff);
    /* Centering plus corrector directions. */
    fillrhs_cc();
    ldl_solve(work.rhs, work.lhs_cc);
    refine(work.rhs, work.lhs_cc);
    /* Add the two together and store in aff. */
    for (i = 0; i < 1406; i++)
      work.lhs_aff[i] += work.lhs_cc[i];
    /* Rename aff to reflect its new meaning. */
    dx = work.lhs_aff;
    ds = work.lhs_aff + 360;
    dz = work.lhs_aff + 800;
    dy = work.lhs_aff + 1240;
    /* Find min(min(ds./s), min(dz./z)). */
    minval = 0;
    for (i = 0; i < 440; i++)
      if (ds[i] < minval*work.s[i])
        minval = ds[i]/work.s[i];
    for (i = 0; i < 440; i++)
      if (dz[i] < minval*work.z[i])
        minval = dz[i]/work.z[i];
    /* Find alpha. */
    if (-0.99 < minval)
      alpha = 1;
    else
      alpha = -0.99/minval;
    /* Update the primal and dual variables. */
    for (i = 0; i < 360; i++)
      work.x[i] += alpha*dx[i];
    for (i = 0; i < 440; i++)
      work.s[i] += alpha*ds[i];
    for (i = 0; i < 440; i++)
      work.z[i] += alpha*dz[i];
    for (i = 0; i < 166; i++)
      work.y[i] += alpha*dy[i];
    work.gap = eval_gap();
    work.eq_resid_squared = calc_eq_resid_squared();
    work.ineq_resid_squared = calc_ineq_resid_squared();
#ifndef ZERO_LIBRARY_MODE
    if (settings.verbose) {
      work.optval = eval_objv();
      printf("%3d   %10.3e  %9.2e  %9.2e  %9.2e  % 6.4f\n",
          iter+1, work.optval, work.gap, sqrt(work.eq_resid_squared),
          sqrt(work.ineq_resid_squared), alpha);
    }
#endif
    /* Test termination conditions. Requires optimality, and satisfied */
    /* constraints. */
    if (   (work.gap < settings.eps)
        && (work.eq_resid_squared <= settings.resid_tol*settings.resid_tol)
        && (work.ineq_resid_squared <= settings.resid_tol*settings.resid_tol)
       ) {
      work.converged = 1;
      work.optval = eval_objv();
      return iter+1;
    }
  }
  return iter;
}
