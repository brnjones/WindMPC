% csolve  Solves a custom quadratic program very rapidly.
%
% [vars, status] = csolve(params, settings)
%
% solves the convex optimization problem
%
%   minimize(norm(phi, 1))
%   subject to
%     x_2(1) == x_1(1) + a_1*x_1(3) + b_1
%     x_3(1) == x_2(1) + a_2*x_2(3) + b_2
%     x_4(1) == x_3(1) + a_3*x_3(3) + b_3
%     x_5(1) == x_4(1) + a_4*x_4(3) + b_4
%     x_6(1) == x_5(1) + a_5*x_5(3) + b_5
%     x_7(1) == x_6(1) + a_6*x_6(3) + b_6
%     x_8(1) == x_7(1) + a_7*x_7(3) + b_7
%     x_9(1) == x_8(1) + a_8*x_8(3) + b_8
%     x_10(1) == x_9(1) + a_9*x_9(3) + b_9
%     x_11(1) == x_10(1) + a_10*x_10(3) + b_10
%     x_12(1) == x_11(1) + a_11*x_11(3) + b_11
%     x_13(1) == x_12(1) + a_12*x_12(3) + b_12
%     x_14(1) == x_13(1) + a_13*x_13(3) + b_13
%     x_15(1) == x_14(1) + a_14*x_14(3) + b_14
%     x_16(1) == x_15(1) + a_15*x_15(3) + b_15
%     x_17(1) == x_16(1) + a_16*x_16(3) + b_16
%     x_18(1) == x_17(1) + a_17*x_17(3) + b_17
%     x_19(1) == x_18(1) + a_18*x_18(3) + b_18
%     x_20(1) == x_19(1) + a_19*x_19(3) + b_19
%     x_21(1) == x_20(1) + a_20*x_20(3) + b_20
%     x_22(1) == x_21(1) + a_21*x_21(3) + b_21
%     x_23(1) == x_22(1) + a_22*x_22(3) + b_22
%     x_24(1) == x_23(1) + a_23*x_23(3) + b_23
%     x_25(1) == x_24(1) + a_24*x_24(3) + b_24
%     x_26(1) == x_25(1) + a_25*x_25(3) + b_25
%     x_27(1) == x_26(1) + a_26*x_26(3) + b_26
%     x_28(1) == x_27(1) + a_27*x_27(3) + b_27
%     x_29(1) == x_28(1) + a_28*x_28(3) + b_28
%     x_30(1) == x_29(1) + a_29*x_29(3) + b_29
%     x_31(1) == x_30(1) + a_30*x_30(3) + b_30
%     x_32(1) == x_31(1) + a_31*x_31(3) + b_31
%     x_33(1) == x_32(1) + a_32*x_32(3) + b_32
%     x_34(1) == x_33(1) + a_33*x_33(3) + b_33
%     x_35(1) == x_34(1) + a_34*x_34(3) + b_34
%     x_36(1) == x_35(1) + a_35*x_35(3) + b_35
%     x_37(1) == x_36(1) + a_36*x_36(3) + b_36
%     x_38(1) == x_37(1) + a_37*x_37(3) + b_37
%     x_39(1) == x_38(1) + a_38*x_38(3) + b_38
%     x_40(1) == x_39(1) + a_39*x_39(3) + b_39
%     x_2(2) == x_1(2) + c_1*x_1(3) + d_1
%     x_3(2) == x_2(2) + c_2*x_2(3) + d_2
%     x_4(2) == x_3(2) + c_3*x_3(3) + d_3
%     x_5(2) == x_4(2) + c_4*x_4(3) + d_4
%     x_6(2) == x_5(2) + c_5*x_5(3) + d_5
%     x_7(2) == x_6(2) + c_6*x_6(3) + d_6
%     x_8(2) == x_7(2) + c_7*x_7(3) + d_7
%     x_9(2) == x_8(2) + c_8*x_8(3) + d_8
%     x_10(2) == x_9(2) + c_9*x_9(3) + d_9
%     x_11(2) == x_10(2) + c_10*x_10(3) + d_10
%     x_12(2) == x_11(2) + c_11*x_11(3) + d_11
%     x_13(2) == x_12(2) + c_12*x_12(3) + d_12
%     x_14(2) == x_13(2) + c_13*x_13(3) + d_13
%     x_15(2) == x_14(2) + c_14*x_14(3) + d_14
%     x_16(2) == x_15(2) + c_15*x_15(3) + d_15
%     x_17(2) == x_16(2) + c_16*x_16(3) + d_16
%     x_18(2) == x_17(2) + c_17*x_17(3) + d_17
%     x_19(2) == x_18(2) + c_18*x_18(3) + d_18
%     x_20(2) == x_19(2) + c_19*x_19(3) + d_19
%     x_21(2) == x_20(2) + c_20*x_20(3) + d_20
%     x_22(2) == x_21(2) + c_21*x_21(3) + d_21
%     x_23(2) == x_22(2) + c_22*x_22(3) + d_22
%     x_24(2) == x_23(2) + c_23*x_23(3) + d_23
%     x_25(2) == x_24(2) + c_24*x_24(3) + d_24
%     x_26(2) == x_25(2) + c_25*x_25(3) + d_25
%     x_27(2) == x_26(2) + c_26*x_26(3) + d_26
%     x_28(2) == x_27(2) + c_27*x_27(3) + d_27
%     x_29(2) == x_28(2) + c_28*x_28(3) + d_28
%     x_30(2) == x_29(2) + c_29*x_29(3) + d_29
%     x_31(2) == x_30(2) + c_30*x_30(3) + d_30
%     x_32(2) == x_31(2) + c_31*x_31(3) + d_31
%     x_33(2) == x_32(2) + c_32*x_32(3) + d_32
%     x_34(2) == x_33(2) + c_33*x_33(3) + d_33
%     x_35(2) == x_34(2) + c_34*x_34(3) + d_34
%     x_36(2) == x_35(2) + c_35*x_35(3) + d_35
%     x_37(2) == x_36(2) + c_36*x_36(3) + d_36
%     x_38(2) == x_37(2) + c_37*x_37(3) + d_37
%     x_39(2) == x_38(2) + c_38*x_38(3) + d_38
%     x_40(2) == x_39(2) + c_39*x_39(3) + d_39
%     x_2(3) == x_1(3) + e_1*phi(1)
%     x_3(3) == x_2(3) + e_2*phi(2)
%     x_4(3) == x_3(3) + e_3*phi(3)
%     x_5(3) == x_4(3) + e_4*phi(4)
%     x_6(3) == x_5(3) + e_5*phi(5)
%     x_7(3) == x_6(3) + e_6*phi(6)
%     x_8(3) == x_7(3) + e_7*phi(7)
%     x_9(3) == x_8(3) + e_8*phi(8)
%     x_10(3) == x_9(3) + e_9*phi(9)
%     x_11(3) == x_10(3) + e_10*phi(10)
%     x_12(3) == x_11(3) + e_11*phi(11)
%     x_13(3) == x_12(3) + e_12*phi(12)
%     x_14(3) == x_13(3) + e_13*phi(13)
%     x_15(3) == x_14(3) + e_14*phi(14)
%     x_16(3) == x_15(3) + e_15*phi(15)
%     x_17(3) == x_16(3) + e_16*phi(16)
%     x_18(3) == x_17(3) + e_17*phi(17)
%     x_19(3) == x_18(3) + e_18*phi(18)
%     x_20(3) == x_19(3) + e_19*phi(19)
%     x_21(3) == x_20(3) + e_20*phi(20)
%     x_22(3) == x_21(3) + e_21*phi(21)
%     x_23(3) == x_22(3) + e_22*phi(22)
%     x_24(3) == x_23(3) + e_23*phi(23)
%     x_25(3) == x_24(3) + e_24*phi(24)
%     x_26(3) == x_25(3) + e_25*phi(25)
%     x_27(3) == x_26(3) + e_26*phi(26)
%     x_28(3) == x_27(3) + e_27*phi(27)
%     x_29(3) == x_28(3) + e_28*phi(28)
%     x_30(3) == x_29(3) + e_29*phi(29)
%     x_31(3) == x_30(3) + e_30*phi(30)
%     x_32(3) == x_31(3) + e_31*phi(31)
%     x_33(3) == x_32(3) + e_32*phi(32)
%     x_34(3) == x_33(3) + e_33*phi(33)
%     x_35(3) == x_34(3) + e_34*phi(34)
%     x_36(3) == x_35(3) + e_35*phi(35)
%     x_37(3) == x_36(3) + e_36*phi(36)
%     x_38(3) == x_37(3) + e_37*phi(37)
%     x_39(3) == x_38(3) + e_38*phi(38)
%     x_40(3) == x_39(3) + e_39*phi(39)
%     phi(2) == phi(1) + h*u(1)
%     phi(3) == phi(2) + h*u(2)
%     phi(4) == phi(3) + h*u(3)
%     phi(5) == phi(4) + h*u(4)
%     phi(6) == phi(5) + h*u(5)
%     phi(7) == phi(6) + h*u(6)
%     phi(8) == phi(7) + h*u(7)
%     phi(9) == phi(8) + h*u(8)
%     phi(10) == phi(9) + h*u(9)
%     phi(11) == phi(10) + h*u(10)
%     phi(12) == phi(11) + h*u(11)
%     phi(13) == phi(12) + h*u(12)
%     phi(14) == phi(13) + h*u(13)
%     phi(15) == phi(14) + h*u(14)
%     phi(16) == phi(15) + h*u(15)
%     phi(17) == phi(16) + h*u(16)
%     phi(18) == phi(17) + h*u(17)
%     phi(19) == phi(18) + h*u(18)
%     phi(20) == phi(19) + h*u(19)
%     phi(21) == phi(20) + h*u(20)
%     phi(22) == phi(21) + h*u(21)
%     phi(23) == phi(22) + h*u(22)
%     phi(24) == phi(23) + h*u(23)
%     phi(25) == phi(24) + h*u(24)
%     phi(26) == phi(25) + h*u(25)
%     phi(27) == phi(26) + h*u(26)
%     phi(28) == phi(27) + h*u(27)
%     phi(29) == phi(28) + h*u(28)
%     phi(30) == phi(29) + h*u(29)
%     phi(31) == phi(30) + h*u(30)
%     phi(32) == phi(31) + h*u(31)
%     phi(33) == phi(32) + h*u(32)
%     phi(34) == phi(33) + h*u(33)
%     phi(35) == phi(34) + h*u(34)
%     phi(36) == phi(35) + h*u(35)
%     phi(37) == phi(36) + h*u(36)
%     phi(38) == phi(37) + h*u(37)
%     phi(39) == phi(38) + h*u(38)
%     phi(40) == phi(39) + h*u(39)
%     x_1 == x0
%     x_40 == xf
%     phi(1) == phi0
%     phi(40) == phif
%     u(1) == u0
%     u(40) == uf
%     abs(u) <= u_max
%     abs(phi) <= phi_max
%     abs(x_1(3) - psi_hat_1) <= rho_1
%     abs(x_2(3) - psi_hat_2) <= rho_2
%     abs(x_3(3) - psi_hat_3) <= rho_3
%     abs(x_4(3) - psi_hat_4) <= rho_4
%     abs(x_5(3) - psi_hat_5) <= rho_5
%     abs(x_6(3) - psi_hat_6) <= rho_6
%     abs(x_7(3) - psi_hat_7) <= rho_7
%     abs(x_8(3) - psi_hat_8) <= rho_8
%     abs(x_9(3) - psi_hat_9) <= rho_9
%     abs(x_10(3) - psi_hat_10) <= rho_10
%     abs(x_11(3) - psi_hat_11) <= rho_11
%     abs(x_12(3) - psi_hat_12) <= rho_12
%     abs(x_13(3) - psi_hat_13) <= rho_13
%     abs(x_14(3) - psi_hat_14) <= rho_14
%     abs(x_15(3) - psi_hat_15) <= rho_15
%     abs(x_16(3) - psi_hat_16) <= rho_16
%     abs(x_17(3) - psi_hat_17) <= rho_17
%     abs(x_18(3) - psi_hat_18) <= rho_18
%     abs(x_19(3) - psi_hat_19) <= rho_19
%     abs(x_20(3) - psi_hat_20) <= rho_20
%     abs(x_21(3) - psi_hat_21) <= rho_21
%     abs(x_22(3) - psi_hat_22) <= rho_22
%     abs(x_23(3) - psi_hat_23) <= rho_23
%     abs(x_24(3) - psi_hat_24) <= rho_24
%     abs(x_25(3) - psi_hat_25) <= rho_25
%     abs(x_26(3) - psi_hat_26) <= rho_26
%     abs(x_27(3) - psi_hat_27) <= rho_27
%     abs(x_28(3) - psi_hat_28) <= rho_28
%     abs(x_29(3) - psi_hat_29) <= rho_29
%     abs(x_30(3) - psi_hat_30) <= rho_30
%     abs(x_31(3) - psi_hat_31) <= rho_31
%     abs(x_32(3) - psi_hat_32) <= rho_32
%     abs(x_33(3) - psi_hat_33) <= rho_33
%     abs(x_34(3) - psi_hat_34) <= rho_34
%     abs(x_35(3) - psi_hat_35) <= rho_35
%     abs(x_36(3) - psi_hat_36) <= rho_36
%     abs(x_37(3) - psi_hat_37) <= rho_37
%     abs(x_38(3) - psi_hat_38) <= rho_38
%     abs(x_39(3) - psi_hat_39) <= rho_39
%     abs(x_40(3) - psi_hat_40) <= rho_40
%
% with variables
%      phi  40 x 1
%        u  40 x 1
%      x_1   3 x 1
%      x_2   3 x 1
%      x_3   3 x 1
%      x_4   3 x 1
%      x_5   3 x 1
%      x_6   3 x 1
%      x_7   3 x 1
%      x_8   3 x 1
%      x_9   3 x 1
%     x_10   3 x 1
%     x_11   3 x 1
%     x_12   3 x 1
%     x_13   3 x 1
%     x_14   3 x 1
%     x_15   3 x 1
%     x_16   3 x 1
%     x_17   3 x 1
%     x_18   3 x 1
%     x_19   3 x 1
%     x_20   3 x 1
%     x_21   3 x 1
%     x_22   3 x 1
%     x_23   3 x 1
%     x_24   3 x 1
%     x_25   3 x 1
%     x_26   3 x 1
%     x_27   3 x 1
%     x_28   3 x 1
%     x_29   3 x 1
%     x_30   3 x 1
%     x_31   3 x 1
%     x_32   3 x 1
%     x_33   3 x 1
%     x_34   3 x 1
%     x_35   3 x 1
%     x_36   3 x 1
%     x_37   3 x 1
%     x_38   3 x 1
%     x_39   3 x 1
%     x_40   3 x 1
%
% and parameters
%      a_1   1 x 1
%      a_2   1 x 1
%      a_3   1 x 1
%      a_4   1 x 1
%      a_5   1 x 1
%      a_6   1 x 1
%      a_7   1 x 1
%      a_8   1 x 1
%      a_9   1 x 1
%     a_10   1 x 1
%     a_11   1 x 1
%     a_12   1 x 1
%     a_13   1 x 1
%     a_14   1 x 1
%     a_15   1 x 1
%     a_16   1 x 1
%     a_17   1 x 1
%     a_18   1 x 1
%     a_19   1 x 1
%     a_20   1 x 1
%     a_21   1 x 1
%     a_22   1 x 1
%     a_23   1 x 1
%     a_24   1 x 1
%     a_25   1 x 1
%     a_26   1 x 1
%     a_27   1 x 1
%     a_28   1 x 1
%     a_29   1 x 1
%     a_30   1 x 1
%     a_31   1 x 1
%     a_32   1 x 1
%     a_33   1 x 1
%     a_34   1 x 1
%     a_35   1 x 1
%     a_36   1 x 1
%     a_37   1 x 1
%     a_38   1 x 1
%     a_39   1 x 1
%      b_1   1 x 1
%      b_2   1 x 1
%      b_3   1 x 1
%      b_4   1 x 1
%      b_5   1 x 1
%      b_6   1 x 1
%      b_7   1 x 1
%      b_8   1 x 1
%      b_9   1 x 1
%     b_10   1 x 1
%     b_11   1 x 1
%     b_12   1 x 1
%     b_13   1 x 1
%     b_14   1 x 1
%     b_15   1 x 1
%     b_16   1 x 1
%     b_17   1 x 1
%     b_18   1 x 1
%     b_19   1 x 1
%     b_20   1 x 1
%     b_21   1 x 1
%     b_22   1 x 1
%     b_23   1 x 1
%     b_24   1 x 1
%     b_25   1 x 1
%     b_26   1 x 1
%     b_27   1 x 1
%     b_28   1 x 1
%     b_29   1 x 1
%     b_30   1 x 1
%     b_31   1 x 1
%     b_32   1 x 1
%     b_33   1 x 1
%     b_34   1 x 1
%     b_35   1 x 1
%     b_36   1 x 1
%     b_37   1 x 1
%     b_38   1 x 1
%     b_39   1 x 1
%      c_1   1 x 1
%      c_2   1 x 1
%      c_3   1 x 1
%      c_4   1 x 1
%      c_5   1 x 1
%      c_6   1 x 1
%      c_7   1 x 1
%      c_8   1 x 1
%      c_9   1 x 1
%     c_10   1 x 1
%     c_11   1 x 1
%     c_12   1 x 1
%     c_13   1 x 1
%     c_14   1 x 1
%     c_15   1 x 1
%     c_16   1 x 1
%     c_17   1 x 1
%     c_18   1 x 1
%     c_19   1 x 1
%     c_20   1 x 1
%     c_21   1 x 1
%     c_22   1 x 1
%     c_23   1 x 1
%     c_24   1 x 1
%     c_25   1 x 1
%     c_26   1 x 1
%     c_27   1 x 1
%     c_28   1 x 1
%     c_29   1 x 1
%     c_30   1 x 1
%     c_31   1 x 1
%     c_32   1 x 1
%     c_33   1 x 1
%     c_34   1 x 1
%     c_35   1 x 1
%     c_36   1 x 1
%     c_37   1 x 1
%     c_38   1 x 1
%     c_39   1 x 1
%      d_1   1 x 1
%      d_2   1 x 1
%      d_3   1 x 1
%      d_4   1 x 1
%      d_5   1 x 1
%      d_6   1 x 1
%      d_7   1 x 1
%      d_8   1 x 1
%      d_9   1 x 1
%     d_10   1 x 1
%     d_11   1 x 1
%     d_12   1 x 1
%     d_13   1 x 1
%     d_14   1 x 1
%     d_15   1 x 1
%     d_16   1 x 1
%     d_17   1 x 1
%     d_18   1 x 1
%     d_19   1 x 1
%     d_20   1 x 1
%     d_21   1 x 1
%     d_22   1 x 1
%     d_23   1 x 1
%     d_24   1 x 1
%     d_25   1 x 1
%     d_26   1 x 1
%     d_27   1 x 1
%     d_28   1 x 1
%     d_29   1 x 1
%     d_30   1 x 1
%     d_31   1 x 1
%     d_32   1 x 1
%     d_33   1 x 1
%     d_34   1 x 1
%     d_35   1 x 1
%     d_36   1 x 1
%     d_37   1 x 1
%     d_38   1 x 1
%     d_39   1 x 1
%      e_1   1 x 1
%      e_2   1 x 1
%      e_3   1 x 1
%      e_4   1 x 1
%      e_5   1 x 1
%      e_6   1 x 1
%      e_7   1 x 1
%      e_8   1 x 1
%      e_9   1 x 1
%     e_10   1 x 1
%     e_11   1 x 1
%     e_12   1 x 1
%     e_13   1 x 1
%     e_14   1 x 1
%     e_15   1 x 1
%     e_16   1 x 1
%     e_17   1 x 1
%     e_18   1 x 1
%     e_19   1 x 1
%     e_20   1 x 1
%     e_21   1 x 1
%     e_22   1 x 1
%     e_23   1 x 1
%     e_24   1 x 1
%     e_25   1 x 1
%     e_26   1 x 1
%     e_27   1 x 1
%     e_28   1 x 1
%     e_29   1 x 1
%     e_30   1 x 1
%     e_31   1 x 1
%     e_32   1 x 1
%     e_33   1 x 1
%     e_34   1 x 1
%     e_35   1 x 1
%     e_36   1 x 1
%     e_37   1 x 1
%     e_38   1 x 1
%     e_39   1 x 1
%        h   1 x 1
%     phi0   1 x 1
%  phi_max   1 x 1
%     phif   1 x 1
% psi_hat_1   1 x 1
% psi_hat_2   1 x 1
% psi_hat_3   1 x 1
% psi_hat_4   1 x 1
% psi_hat_5   1 x 1
% psi_hat_6   1 x 1
% psi_hat_7   1 x 1
% psi_hat_8   1 x 1
% psi_hat_9   1 x 1
% psi_hat_10   1 x 1
% psi_hat_11   1 x 1
% psi_hat_12   1 x 1
% psi_hat_13   1 x 1
% psi_hat_14   1 x 1
% psi_hat_15   1 x 1
% psi_hat_16   1 x 1
% psi_hat_17   1 x 1
% psi_hat_18   1 x 1
% psi_hat_19   1 x 1
% psi_hat_20   1 x 1
% psi_hat_21   1 x 1
% psi_hat_22   1 x 1
% psi_hat_23   1 x 1
% psi_hat_24   1 x 1
% psi_hat_25   1 x 1
% psi_hat_26   1 x 1
% psi_hat_27   1 x 1
% psi_hat_28   1 x 1
% psi_hat_29   1 x 1
% psi_hat_30   1 x 1
% psi_hat_31   1 x 1
% psi_hat_32   1 x 1
% psi_hat_33   1 x 1
% psi_hat_34   1 x 1
% psi_hat_35   1 x 1
% psi_hat_36   1 x 1
% psi_hat_37   1 x 1
% psi_hat_38   1 x 1
% psi_hat_39   1 x 1
% psi_hat_40   1 x 1
%    rho_1   1 x 1
%    rho_2   1 x 1
%    rho_3   1 x 1
%    rho_4   1 x 1
%    rho_5   1 x 1
%    rho_6   1 x 1
%    rho_7   1 x 1
%    rho_8   1 x 1
%    rho_9   1 x 1
%   rho_10   1 x 1
%   rho_11   1 x 1
%   rho_12   1 x 1
%   rho_13   1 x 1
%   rho_14   1 x 1
%   rho_15   1 x 1
%   rho_16   1 x 1
%   rho_17   1 x 1
%   rho_18   1 x 1
%   rho_19   1 x 1
%   rho_20   1 x 1
%   rho_21   1 x 1
%   rho_22   1 x 1
%   rho_23   1 x 1
%   rho_24   1 x 1
%   rho_25   1 x 1
%   rho_26   1 x 1
%   rho_27   1 x 1
%   rho_28   1 x 1
%   rho_29   1 x 1
%   rho_30   1 x 1
%   rho_31   1 x 1
%   rho_32   1 x 1
%   rho_33   1 x 1
%   rho_34   1 x 1
%   rho_35   1 x 1
%   rho_36   1 x 1
%   rho_37   1 x 1
%   rho_38   1 x 1
%   rho_39   1 x 1
%   rho_40   1 x 1
%       u0   1 x 1
%    u_max   1 x 1    positive
%       uf   1 x 1
%       x0   3 x 1
%       xf   3 x 1
%
% Note:
%   - Check status.converged, which will be 1 if optimization succeeded.
%   - You don't have to specify settings if you don't want to.
%   - To hide output, use settings.verbose = 0.
%   - To change iterations, use settings.max_iters = 20.
%   - You may wish to compare with cvxsolve to check the solver is correct.
%
% Specify params.a_1, ..., params.xf, then run
%   [vars, status] = csolve(params, settings)
% Produced by CVXGEN, 2014-05-26 18:07:39 -0400.
% CVXGEN is Copyright (C) 2006-2012 Jacob Mattingley, jem@cvxgen.com.
% The code in this file is Copyright (C) 2006-2012 Jacob Mattingley.
% CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial
% applications without prior written permission from Jacob Mattingley.

% Filename: csolve.m.
% Description: Help file for the Matlab solver interface.
