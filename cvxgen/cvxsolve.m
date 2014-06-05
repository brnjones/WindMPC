% Produced by CVXGEN, 2014-05-26 18:07:40 -0400.
% CVXGEN is Copyright (C) 2006-2012 Jacob Mattingley, jem@cvxgen.com.
% The code in this file is Copyright (C) 2006-2012 Jacob Mattingley.
% CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial
% applications without prior written permission from Jacob Mattingley.

% Filename: cvxsolve.m.
% Description: Solution file, via cvx, for use with sample.m.
function [vars, status] = cvxsolve(params, settings)
if isfield(params, 'a_1')
  a_1 = params.a_1;
elseif isfield(params, 'a')
  a_1 = params.a{1};
else
  error 'could not find a_1'
end
if isfield(params, 'a_2')
  a_2 = params.a_2;
elseif isfield(params, 'a')
  a_2 = params.a{2};
else
  error 'could not find a_2'
end
if isfield(params, 'a_3')
  a_3 = params.a_3;
elseif isfield(params, 'a')
  a_3 = params.a{3};
else
  error 'could not find a_3'
end
if isfield(params, 'a_4')
  a_4 = params.a_4;
elseif isfield(params, 'a')
  a_4 = params.a{4};
else
  error 'could not find a_4'
end
if isfield(params, 'a_5')
  a_5 = params.a_5;
elseif isfield(params, 'a')
  a_5 = params.a{5};
else
  error 'could not find a_5'
end
if isfield(params, 'a_6')
  a_6 = params.a_6;
elseif isfield(params, 'a')
  a_6 = params.a{6};
else
  error 'could not find a_6'
end
if isfield(params, 'a_7')
  a_7 = params.a_7;
elseif isfield(params, 'a')
  a_7 = params.a{7};
else
  error 'could not find a_7'
end
if isfield(params, 'a_8')
  a_8 = params.a_8;
elseif isfield(params, 'a')
  a_8 = params.a{8};
else
  error 'could not find a_8'
end
if isfield(params, 'a_9')
  a_9 = params.a_9;
elseif isfield(params, 'a')
  a_9 = params.a{9};
else
  error 'could not find a_9'
end
if isfield(params, 'a_10')
  a_10 = params.a_10;
elseif isfield(params, 'a')
  a_10 = params.a{10};
else
  error 'could not find a_10'
end
if isfield(params, 'a_11')
  a_11 = params.a_11;
elseif isfield(params, 'a')
  a_11 = params.a{11};
else
  error 'could not find a_11'
end
if isfield(params, 'a_12')
  a_12 = params.a_12;
elseif isfield(params, 'a')
  a_12 = params.a{12};
else
  error 'could not find a_12'
end
if isfield(params, 'a_13')
  a_13 = params.a_13;
elseif isfield(params, 'a')
  a_13 = params.a{13};
else
  error 'could not find a_13'
end
if isfield(params, 'a_14')
  a_14 = params.a_14;
elseif isfield(params, 'a')
  a_14 = params.a{14};
else
  error 'could not find a_14'
end
if isfield(params, 'a_15')
  a_15 = params.a_15;
elseif isfield(params, 'a')
  a_15 = params.a{15};
else
  error 'could not find a_15'
end
if isfield(params, 'a_16')
  a_16 = params.a_16;
elseif isfield(params, 'a')
  a_16 = params.a{16};
else
  error 'could not find a_16'
end
if isfield(params, 'a_17')
  a_17 = params.a_17;
elseif isfield(params, 'a')
  a_17 = params.a{17};
else
  error 'could not find a_17'
end
if isfield(params, 'a_18')
  a_18 = params.a_18;
elseif isfield(params, 'a')
  a_18 = params.a{18};
else
  error 'could not find a_18'
end
if isfield(params, 'a_19')
  a_19 = params.a_19;
elseif isfield(params, 'a')
  a_19 = params.a{19};
else
  error 'could not find a_19'
end
if isfield(params, 'a_20')
  a_20 = params.a_20;
elseif isfield(params, 'a')
  a_20 = params.a{20};
else
  error 'could not find a_20'
end
if isfield(params, 'a_21')
  a_21 = params.a_21;
elseif isfield(params, 'a')
  a_21 = params.a{21};
else
  error 'could not find a_21'
end
if isfield(params, 'a_22')
  a_22 = params.a_22;
elseif isfield(params, 'a')
  a_22 = params.a{22};
else
  error 'could not find a_22'
end
if isfield(params, 'a_23')
  a_23 = params.a_23;
elseif isfield(params, 'a')
  a_23 = params.a{23};
else
  error 'could not find a_23'
end
if isfield(params, 'a_24')
  a_24 = params.a_24;
elseif isfield(params, 'a')
  a_24 = params.a{24};
else
  error 'could not find a_24'
end
if isfield(params, 'a_25')
  a_25 = params.a_25;
elseif isfield(params, 'a')
  a_25 = params.a{25};
else
  error 'could not find a_25'
end
if isfield(params, 'a_26')
  a_26 = params.a_26;
elseif isfield(params, 'a')
  a_26 = params.a{26};
else
  error 'could not find a_26'
end
if isfield(params, 'a_27')
  a_27 = params.a_27;
elseif isfield(params, 'a')
  a_27 = params.a{27};
else
  error 'could not find a_27'
end
if isfield(params, 'a_28')
  a_28 = params.a_28;
elseif isfield(params, 'a')
  a_28 = params.a{28};
else
  error 'could not find a_28'
end
if isfield(params, 'a_29')
  a_29 = params.a_29;
elseif isfield(params, 'a')
  a_29 = params.a{29};
else
  error 'could not find a_29'
end
if isfield(params, 'a_30')
  a_30 = params.a_30;
elseif isfield(params, 'a')
  a_30 = params.a{30};
else
  error 'could not find a_30'
end
if isfield(params, 'a_31')
  a_31 = params.a_31;
elseif isfield(params, 'a')
  a_31 = params.a{31};
else
  error 'could not find a_31'
end
if isfield(params, 'a_32')
  a_32 = params.a_32;
elseif isfield(params, 'a')
  a_32 = params.a{32};
else
  error 'could not find a_32'
end
if isfield(params, 'a_33')
  a_33 = params.a_33;
elseif isfield(params, 'a')
  a_33 = params.a{33};
else
  error 'could not find a_33'
end
if isfield(params, 'a_34')
  a_34 = params.a_34;
elseif isfield(params, 'a')
  a_34 = params.a{34};
else
  error 'could not find a_34'
end
if isfield(params, 'a_35')
  a_35 = params.a_35;
elseif isfield(params, 'a')
  a_35 = params.a{35};
else
  error 'could not find a_35'
end
if isfield(params, 'a_36')
  a_36 = params.a_36;
elseif isfield(params, 'a')
  a_36 = params.a{36};
else
  error 'could not find a_36'
end
if isfield(params, 'a_37')
  a_37 = params.a_37;
elseif isfield(params, 'a')
  a_37 = params.a{37};
else
  error 'could not find a_37'
end
if isfield(params, 'a_38')
  a_38 = params.a_38;
elseif isfield(params, 'a')
  a_38 = params.a{38};
else
  error 'could not find a_38'
end
if isfield(params, 'a_39')
  a_39 = params.a_39;
elseif isfield(params, 'a')
  a_39 = params.a{39};
else
  error 'could not find a_39'
end
if isfield(params, 'b_1')
  b_1 = params.b_1;
elseif isfield(params, 'b')
  b_1 = params.b{1};
else
  error 'could not find b_1'
end
if isfield(params, 'b_2')
  b_2 = params.b_2;
elseif isfield(params, 'b')
  b_2 = params.b{2};
else
  error 'could not find b_2'
end
if isfield(params, 'b_3')
  b_3 = params.b_3;
elseif isfield(params, 'b')
  b_3 = params.b{3};
else
  error 'could not find b_3'
end
if isfield(params, 'b_4')
  b_4 = params.b_4;
elseif isfield(params, 'b')
  b_4 = params.b{4};
else
  error 'could not find b_4'
end
if isfield(params, 'b_5')
  b_5 = params.b_5;
elseif isfield(params, 'b')
  b_5 = params.b{5};
else
  error 'could not find b_5'
end
if isfield(params, 'b_6')
  b_6 = params.b_6;
elseif isfield(params, 'b')
  b_6 = params.b{6};
else
  error 'could not find b_6'
end
if isfield(params, 'b_7')
  b_7 = params.b_7;
elseif isfield(params, 'b')
  b_7 = params.b{7};
else
  error 'could not find b_7'
end
if isfield(params, 'b_8')
  b_8 = params.b_8;
elseif isfield(params, 'b')
  b_8 = params.b{8};
else
  error 'could not find b_8'
end
if isfield(params, 'b_9')
  b_9 = params.b_9;
elseif isfield(params, 'b')
  b_9 = params.b{9};
else
  error 'could not find b_9'
end
if isfield(params, 'b_10')
  b_10 = params.b_10;
elseif isfield(params, 'b')
  b_10 = params.b{10};
else
  error 'could not find b_10'
end
if isfield(params, 'b_11')
  b_11 = params.b_11;
elseif isfield(params, 'b')
  b_11 = params.b{11};
else
  error 'could not find b_11'
end
if isfield(params, 'b_12')
  b_12 = params.b_12;
elseif isfield(params, 'b')
  b_12 = params.b{12};
else
  error 'could not find b_12'
end
if isfield(params, 'b_13')
  b_13 = params.b_13;
elseif isfield(params, 'b')
  b_13 = params.b{13};
else
  error 'could not find b_13'
end
if isfield(params, 'b_14')
  b_14 = params.b_14;
elseif isfield(params, 'b')
  b_14 = params.b{14};
else
  error 'could not find b_14'
end
if isfield(params, 'b_15')
  b_15 = params.b_15;
elseif isfield(params, 'b')
  b_15 = params.b{15};
else
  error 'could not find b_15'
end
if isfield(params, 'b_16')
  b_16 = params.b_16;
elseif isfield(params, 'b')
  b_16 = params.b{16};
else
  error 'could not find b_16'
end
if isfield(params, 'b_17')
  b_17 = params.b_17;
elseif isfield(params, 'b')
  b_17 = params.b{17};
else
  error 'could not find b_17'
end
if isfield(params, 'b_18')
  b_18 = params.b_18;
elseif isfield(params, 'b')
  b_18 = params.b{18};
else
  error 'could not find b_18'
end
if isfield(params, 'b_19')
  b_19 = params.b_19;
elseif isfield(params, 'b')
  b_19 = params.b{19};
else
  error 'could not find b_19'
end
if isfield(params, 'b_20')
  b_20 = params.b_20;
elseif isfield(params, 'b')
  b_20 = params.b{20};
else
  error 'could not find b_20'
end
if isfield(params, 'b_21')
  b_21 = params.b_21;
elseif isfield(params, 'b')
  b_21 = params.b{21};
else
  error 'could not find b_21'
end
if isfield(params, 'b_22')
  b_22 = params.b_22;
elseif isfield(params, 'b')
  b_22 = params.b{22};
else
  error 'could not find b_22'
end
if isfield(params, 'b_23')
  b_23 = params.b_23;
elseif isfield(params, 'b')
  b_23 = params.b{23};
else
  error 'could not find b_23'
end
if isfield(params, 'b_24')
  b_24 = params.b_24;
elseif isfield(params, 'b')
  b_24 = params.b{24};
else
  error 'could not find b_24'
end
if isfield(params, 'b_25')
  b_25 = params.b_25;
elseif isfield(params, 'b')
  b_25 = params.b{25};
else
  error 'could not find b_25'
end
if isfield(params, 'b_26')
  b_26 = params.b_26;
elseif isfield(params, 'b')
  b_26 = params.b{26};
else
  error 'could not find b_26'
end
if isfield(params, 'b_27')
  b_27 = params.b_27;
elseif isfield(params, 'b')
  b_27 = params.b{27};
else
  error 'could not find b_27'
end
if isfield(params, 'b_28')
  b_28 = params.b_28;
elseif isfield(params, 'b')
  b_28 = params.b{28};
else
  error 'could not find b_28'
end
if isfield(params, 'b_29')
  b_29 = params.b_29;
elseif isfield(params, 'b')
  b_29 = params.b{29};
else
  error 'could not find b_29'
end
if isfield(params, 'b_30')
  b_30 = params.b_30;
elseif isfield(params, 'b')
  b_30 = params.b{30};
else
  error 'could not find b_30'
end
if isfield(params, 'b_31')
  b_31 = params.b_31;
elseif isfield(params, 'b')
  b_31 = params.b{31};
else
  error 'could not find b_31'
end
if isfield(params, 'b_32')
  b_32 = params.b_32;
elseif isfield(params, 'b')
  b_32 = params.b{32};
else
  error 'could not find b_32'
end
if isfield(params, 'b_33')
  b_33 = params.b_33;
elseif isfield(params, 'b')
  b_33 = params.b{33};
else
  error 'could not find b_33'
end
if isfield(params, 'b_34')
  b_34 = params.b_34;
elseif isfield(params, 'b')
  b_34 = params.b{34};
else
  error 'could not find b_34'
end
if isfield(params, 'b_35')
  b_35 = params.b_35;
elseif isfield(params, 'b')
  b_35 = params.b{35};
else
  error 'could not find b_35'
end
if isfield(params, 'b_36')
  b_36 = params.b_36;
elseif isfield(params, 'b')
  b_36 = params.b{36};
else
  error 'could not find b_36'
end
if isfield(params, 'b_37')
  b_37 = params.b_37;
elseif isfield(params, 'b')
  b_37 = params.b{37};
else
  error 'could not find b_37'
end
if isfield(params, 'b_38')
  b_38 = params.b_38;
elseif isfield(params, 'b')
  b_38 = params.b{38};
else
  error 'could not find b_38'
end
if isfield(params, 'b_39')
  b_39 = params.b_39;
elseif isfield(params, 'b')
  b_39 = params.b{39};
else
  error 'could not find b_39'
end
if isfield(params, 'c_1')
  c_1 = params.c_1;
elseif isfield(params, 'c')
  c_1 = params.c{1};
else
  error 'could not find c_1'
end
if isfield(params, 'c_2')
  c_2 = params.c_2;
elseif isfield(params, 'c')
  c_2 = params.c{2};
else
  error 'could not find c_2'
end
if isfield(params, 'c_3')
  c_3 = params.c_3;
elseif isfield(params, 'c')
  c_3 = params.c{3};
else
  error 'could not find c_3'
end
if isfield(params, 'c_4')
  c_4 = params.c_4;
elseif isfield(params, 'c')
  c_4 = params.c{4};
else
  error 'could not find c_4'
end
if isfield(params, 'c_5')
  c_5 = params.c_5;
elseif isfield(params, 'c')
  c_5 = params.c{5};
else
  error 'could not find c_5'
end
if isfield(params, 'c_6')
  c_6 = params.c_6;
elseif isfield(params, 'c')
  c_6 = params.c{6};
else
  error 'could not find c_6'
end
if isfield(params, 'c_7')
  c_7 = params.c_7;
elseif isfield(params, 'c')
  c_7 = params.c{7};
else
  error 'could not find c_7'
end
if isfield(params, 'c_8')
  c_8 = params.c_8;
elseif isfield(params, 'c')
  c_8 = params.c{8};
else
  error 'could not find c_8'
end
if isfield(params, 'c_9')
  c_9 = params.c_9;
elseif isfield(params, 'c')
  c_9 = params.c{9};
else
  error 'could not find c_9'
end
if isfield(params, 'c_10')
  c_10 = params.c_10;
elseif isfield(params, 'c')
  c_10 = params.c{10};
else
  error 'could not find c_10'
end
if isfield(params, 'c_11')
  c_11 = params.c_11;
elseif isfield(params, 'c')
  c_11 = params.c{11};
else
  error 'could not find c_11'
end
if isfield(params, 'c_12')
  c_12 = params.c_12;
elseif isfield(params, 'c')
  c_12 = params.c{12};
else
  error 'could not find c_12'
end
if isfield(params, 'c_13')
  c_13 = params.c_13;
elseif isfield(params, 'c')
  c_13 = params.c{13};
else
  error 'could not find c_13'
end
if isfield(params, 'c_14')
  c_14 = params.c_14;
elseif isfield(params, 'c')
  c_14 = params.c{14};
else
  error 'could not find c_14'
end
if isfield(params, 'c_15')
  c_15 = params.c_15;
elseif isfield(params, 'c')
  c_15 = params.c{15};
else
  error 'could not find c_15'
end
if isfield(params, 'c_16')
  c_16 = params.c_16;
elseif isfield(params, 'c')
  c_16 = params.c{16};
else
  error 'could not find c_16'
end
if isfield(params, 'c_17')
  c_17 = params.c_17;
elseif isfield(params, 'c')
  c_17 = params.c{17};
else
  error 'could not find c_17'
end
if isfield(params, 'c_18')
  c_18 = params.c_18;
elseif isfield(params, 'c')
  c_18 = params.c{18};
else
  error 'could not find c_18'
end
if isfield(params, 'c_19')
  c_19 = params.c_19;
elseif isfield(params, 'c')
  c_19 = params.c{19};
else
  error 'could not find c_19'
end
if isfield(params, 'c_20')
  c_20 = params.c_20;
elseif isfield(params, 'c')
  c_20 = params.c{20};
else
  error 'could not find c_20'
end
if isfield(params, 'c_21')
  c_21 = params.c_21;
elseif isfield(params, 'c')
  c_21 = params.c{21};
else
  error 'could not find c_21'
end
if isfield(params, 'c_22')
  c_22 = params.c_22;
elseif isfield(params, 'c')
  c_22 = params.c{22};
else
  error 'could not find c_22'
end
if isfield(params, 'c_23')
  c_23 = params.c_23;
elseif isfield(params, 'c')
  c_23 = params.c{23};
else
  error 'could not find c_23'
end
if isfield(params, 'c_24')
  c_24 = params.c_24;
elseif isfield(params, 'c')
  c_24 = params.c{24};
else
  error 'could not find c_24'
end
if isfield(params, 'c_25')
  c_25 = params.c_25;
elseif isfield(params, 'c')
  c_25 = params.c{25};
else
  error 'could not find c_25'
end
if isfield(params, 'c_26')
  c_26 = params.c_26;
elseif isfield(params, 'c')
  c_26 = params.c{26};
else
  error 'could not find c_26'
end
if isfield(params, 'c_27')
  c_27 = params.c_27;
elseif isfield(params, 'c')
  c_27 = params.c{27};
else
  error 'could not find c_27'
end
if isfield(params, 'c_28')
  c_28 = params.c_28;
elseif isfield(params, 'c')
  c_28 = params.c{28};
else
  error 'could not find c_28'
end
if isfield(params, 'c_29')
  c_29 = params.c_29;
elseif isfield(params, 'c')
  c_29 = params.c{29};
else
  error 'could not find c_29'
end
if isfield(params, 'c_30')
  c_30 = params.c_30;
elseif isfield(params, 'c')
  c_30 = params.c{30};
else
  error 'could not find c_30'
end
if isfield(params, 'c_31')
  c_31 = params.c_31;
elseif isfield(params, 'c')
  c_31 = params.c{31};
else
  error 'could not find c_31'
end
if isfield(params, 'c_32')
  c_32 = params.c_32;
elseif isfield(params, 'c')
  c_32 = params.c{32};
else
  error 'could not find c_32'
end
if isfield(params, 'c_33')
  c_33 = params.c_33;
elseif isfield(params, 'c')
  c_33 = params.c{33};
else
  error 'could not find c_33'
end
if isfield(params, 'c_34')
  c_34 = params.c_34;
elseif isfield(params, 'c')
  c_34 = params.c{34};
else
  error 'could not find c_34'
end
if isfield(params, 'c_35')
  c_35 = params.c_35;
elseif isfield(params, 'c')
  c_35 = params.c{35};
else
  error 'could not find c_35'
end
if isfield(params, 'c_36')
  c_36 = params.c_36;
elseif isfield(params, 'c')
  c_36 = params.c{36};
else
  error 'could not find c_36'
end
if isfield(params, 'c_37')
  c_37 = params.c_37;
elseif isfield(params, 'c')
  c_37 = params.c{37};
else
  error 'could not find c_37'
end
if isfield(params, 'c_38')
  c_38 = params.c_38;
elseif isfield(params, 'c')
  c_38 = params.c{38};
else
  error 'could not find c_38'
end
if isfield(params, 'c_39')
  c_39 = params.c_39;
elseif isfield(params, 'c')
  c_39 = params.c{39};
else
  error 'could not find c_39'
end
if isfield(params, 'd_1')
  d_1 = params.d_1;
elseif isfield(params, 'd')
  d_1 = params.d{1};
else
  error 'could not find d_1'
end
if isfield(params, 'd_2')
  d_2 = params.d_2;
elseif isfield(params, 'd')
  d_2 = params.d{2};
else
  error 'could not find d_2'
end
if isfield(params, 'd_3')
  d_3 = params.d_3;
elseif isfield(params, 'd')
  d_3 = params.d{3};
else
  error 'could not find d_3'
end
if isfield(params, 'd_4')
  d_4 = params.d_4;
elseif isfield(params, 'd')
  d_4 = params.d{4};
else
  error 'could not find d_4'
end
if isfield(params, 'd_5')
  d_5 = params.d_5;
elseif isfield(params, 'd')
  d_5 = params.d{5};
else
  error 'could not find d_5'
end
if isfield(params, 'd_6')
  d_6 = params.d_6;
elseif isfield(params, 'd')
  d_6 = params.d{6};
else
  error 'could not find d_6'
end
if isfield(params, 'd_7')
  d_7 = params.d_7;
elseif isfield(params, 'd')
  d_7 = params.d{7};
else
  error 'could not find d_7'
end
if isfield(params, 'd_8')
  d_8 = params.d_8;
elseif isfield(params, 'd')
  d_8 = params.d{8};
else
  error 'could not find d_8'
end
if isfield(params, 'd_9')
  d_9 = params.d_9;
elseif isfield(params, 'd')
  d_9 = params.d{9};
else
  error 'could not find d_9'
end
if isfield(params, 'd_10')
  d_10 = params.d_10;
elseif isfield(params, 'd')
  d_10 = params.d{10};
else
  error 'could not find d_10'
end
if isfield(params, 'd_11')
  d_11 = params.d_11;
elseif isfield(params, 'd')
  d_11 = params.d{11};
else
  error 'could not find d_11'
end
if isfield(params, 'd_12')
  d_12 = params.d_12;
elseif isfield(params, 'd')
  d_12 = params.d{12};
else
  error 'could not find d_12'
end
if isfield(params, 'd_13')
  d_13 = params.d_13;
elseif isfield(params, 'd')
  d_13 = params.d{13};
else
  error 'could not find d_13'
end
if isfield(params, 'd_14')
  d_14 = params.d_14;
elseif isfield(params, 'd')
  d_14 = params.d{14};
else
  error 'could not find d_14'
end
if isfield(params, 'd_15')
  d_15 = params.d_15;
elseif isfield(params, 'd')
  d_15 = params.d{15};
else
  error 'could not find d_15'
end
if isfield(params, 'd_16')
  d_16 = params.d_16;
elseif isfield(params, 'd')
  d_16 = params.d{16};
else
  error 'could not find d_16'
end
if isfield(params, 'd_17')
  d_17 = params.d_17;
elseif isfield(params, 'd')
  d_17 = params.d{17};
else
  error 'could not find d_17'
end
if isfield(params, 'd_18')
  d_18 = params.d_18;
elseif isfield(params, 'd')
  d_18 = params.d{18};
else
  error 'could not find d_18'
end
if isfield(params, 'd_19')
  d_19 = params.d_19;
elseif isfield(params, 'd')
  d_19 = params.d{19};
else
  error 'could not find d_19'
end
if isfield(params, 'd_20')
  d_20 = params.d_20;
elseif isfield(params, 'd')
  d_20 = params.d{20};
else
  error 'could not find d_20'
end
if isfield(params, 'd_21')
  d_21 = params.d_21;
elseif isfield(params, 'd')
  d_21 = params.d{21};
else
  error 'could not find d_21'
end
if isfield(params, 'd_22')
  d_22 = params.d_22;
elseif isfield(params, 'd')
  d_22 = params.d{22};
else
  error 'could not find d_22'
end
if isfield(params, 'd_23')
  d_23 = params.d_23;
elseif isfield(params, 'd')
  d_23 = params.d{23};
else
  error 'could not find d_23'
end
if isfield(params, 'd_24')
  d_24 = params.d_24;
elseif isfield(params, 'd')
  d_24 = params.d{24};
else
  error 'could not find d_24'
end
if isfield(params, 'd_25')
  d_25 = params.d_25;
elseif isfield(params, 'd')
  d_25 = params.d{25};
else
  error 'could not find d_25'
end
if isfield(params, 'd_26')
  d_26 = params.d_26;
elseif isfield(params, 'd')
  d_26 = params.d{26};
else
  error 'could not find d_26'
end
if isfield(params, 'd_27')
  d_27 = params.d_27;
elseif isfield(params, 'd')
  d_27 = params.d{27};
else
  error 'could not find d_27'
end
if isfield(params, 'd_28')
  d_28 = params.d_28;
elseif isfield(params, 'd')
  d_28 = params.d{28};
else
  error 'could not find d_28'
end
if isfield(params, 'd_29')
  d_29 = params.d_29;
elseif isfield(params, 'd')
  d_29 = params.d{29};
else
  error 'could not find d_29'
end
if isfield(params, 'd_30')
  d_30 = params.d_30;
elseif isfield(params, 'd')
  d_30 = params.d{30};
else
  error 'could not find d_30'
end
if isfield(params, 'd_31')
  d_31 = params.d_31;
elseif isfield(params, 'd')
  d_31 = params.d{31};
else
  error 'could not find d_31'
end
if isfield(params, 'd_32')
  d_32 = params.d_32;
elseif isfield(params, 'd')
  d_32 = params.d{32};
else
  error 'could not find d_32'
end
if isfield(params, 'd_33')
  d_33 = params.d_33;
elseif isfield(params, 'd')
  d_33 = params.d{33};
else
  error 'could not find d_33'
end
if isfield(params, 'd_34')
  d_34 = params.d_34;
elseif isfield(params, 'd')
  d_34 = params.d{34};
else
  error 'could not find d_34'
end
if isfield(params, 'd_35')
  d_35 = params.d_35;
elseif isfield(params, 'd')
  d_35 = params.d{35};
else
  error 'could not find d_35'
end
if isfield(params, 'd_36')
  d_36 = params.d_36;
elseif isfield(params, 'd')
  d_36 = params.d{36};
else
  error 'could not find d_36'
end
if isfield(params, 'd_37')
  d_37 = params.d_37;
elseif isfield(params, 'd')
  d_37 = params.d{37};
else
  error 'could not find d_37'
end
if isfield(params, 'd_38')
  d_38 = params.d_38;
elseif isfield(params, 'd')
  d_38 = params.d{38};
else
  error 'could not find d_38'
end
if isfield(params, 'd_39')
  d_39 = params.d_39;
elseif isfield(params, 'd')
  d_39 = params.d{39};
else
  error 'could not find d_39'
end
if isfield(params, 'e_1')
  e_1 = params.e_1;
elseif isfield(params, 'e')
  e_1 = params.e{1};
else
  error 'could not find e_1'
end
if isfield(params, 'e_2')
  e_2 = params.e_2;
elseif isfield(params, 'e')
  e_2 = params.e{2};
else
  error 'could not find e_2'
end
if isfield(params, 'e_3')
  e_3 = params.e_3;
elseif isfield(params, 'e')
  e_3 = params.e{3};
else
  error 'could not find e_3'
end
if isfield(params, 'e_4')
  e_4 = params.e_4;
elseif isfield(params, 'e')
  e_4 = params.e{4};
else
  error 'could not find e_4'
end
if isfield(params, 'e_5')
  e_5 = params.e_5;
elseif isfield(params, 'e')
  e_5 = params.e{5};
else
  error 'could not find e_5'
end
if isfield(params, 'e_6')
  e_6 = params.e_6;
elseif isfield(params, 'e')
  e_6 = params.e{6};
else
  error 'could not find e_6'
end
if isfield(params, 'e_7')
  e_7 = params.e_7;
elseif isfield(params, 'e')
  e_7 = params.e{7};
else
  error 'could not find e_7'
end
if isfield(params, 'e_8')
  e_8 = params.e_8;
elseif isfield(params, 'e')
  e_8 = params.e{8};
else
  error 'could not find e_8'
end
if isfield(params, 'e_9')
  e_9 = params.e_9;
elseif isfield(params, 'e')
  e_9 = params.e{9};
else
  error 'could not find e_9'
end
if isfield(params, 'e_10')
  e_10 = params.e_10;
elseif isfield(params, 'e')
  e_10 = params.e{10};
else
  error 'could not find e_10'
end
if isfield(params, 'e_11')
  e_11 = params.e_11;
elseif isfield(params, 'e')
  e_11 = params.e{11};
else
  error 'could not find e_11'
end
if isfield(params, 'e_12')
  e_12 = params.e_12;
elseif isfield(params, 'e')
  e_12 = params.e{12};
else
  error 'could not find e_12'
end
if isfield(params, 'e_13')
  e_13 = params.e_13;
elseif isfield(params, 'e')
  e_13 = params.e{13};
else
  error 'could not find e_13'
end
if isfield(params, 'e_14')
  e_14 = params.e_14;
elseif isfield(params, 'e')
  e_14 = params.e{14};
else
  error 'could not find e_14'
end
if isfield(params, 'e_15')
  e_15 = params.e_15;
elseif isfield(params, 'e')
  e_15 = params.e{15};
else
  error 'could not find e_15'
end
if isfield(params, 'e_16')
  e_16 = params.e_16;
elseif isfield(params, 'e')
  e_16 = params.e{16};
else
  error 'could not find e_16'
end
if isfield(params, 'e_17')
  e_17 = params.e_17;
elseif isfield(params, 'e')
  e_17 = params.e{17};
else
  error 'could not find e_17'
end
if isfield(params, 'e_18')
  e_18 = params.e_18;
elseif isfield(params, 'e')
  e_18 = params.e{18};
else
  error 'could not find e_18'
end
if isfield(params, 'e_19')
  e_19 = params.e_19;
elseif isfield(params, 'e')
  e_19 = params.e{19};
else
  error 'could not find e_19'
end
if isfield(params, 'e_20')
  e_20 = params.e_20;
elseif isfield(params, 'e')
  e_20 = params.e{20};
else
  error 'could not find e_20'
end
if isfield(params, 'e_21')
  e_21 = params.e_21;
elseif isfield(params, 'e')
  e_21 = params.e{21};
else
  error 'could not find e_21'
end
if isfield(params, 'e_22')
  e_22 = params.e_22;
elseif isfield(params, 'e')
  e_22 = params.e{22};
else
  error 'could not find e_22'
end
if isfield(params, 'e_23')
  e_23 = params.e_23;
elseif isfield(params, 'e')
  e_23 = params.e{23};
else
  error 'could not find e_23'
end
if isfield(params, 'e_24')
  e_24 = params.e_24;
elseif isfield(params, 'e')
  e_24 = params.e{24};
else
  error 'could not find e_24'
end
if isfield(params, 'e_25')
  e_25 = params.e_25;
elseif isfield(params, 'e')
  e_25 = params.e{25};
else
  error 'could not find e_25'
end
if isfield(params, 'e_26')
  e_26 = params.e_26;
elseif isfield(params, 'e')
  e_26 = params.e{26};
else
  error 'could not find e_26'
end
if isfield(params, 'e_27')
  e_27 = params.e_27;
elseif isfield(params, 'e')
  e_27 = params.e{27};
else
  error 'could not find e_27'
end
if isfield(params, 'e_28')
  e_28 = params.e_28;
elseif isfield(params, 'e')
  e_28 = params.e{28};
else
  error 'could not find e_28'
end
if isfield(params, 'e_29')
  e_29 = params.e_29;
elseif isfield(params, 'e')
  e_29 = params.e{29};
else
  error 'could not find e_29'
end
if isfield(params, 'e_30')
  e_30 = params.e_30;
elseif isfield(params, 'e')
  e_30 = params.e{30};
else
  error 'could not find e_30'
end
if isfield(params, 'e_31')
  e_31 = params.e_31;
elseif isfield(params, 'e')
  e_31 = params.e{31};
else
  error 'could not find e_31'
end
if isfield(params, 'e_32')
  e_32 = params.e_32;
elseif isfield(params, 'e')
  e_32 = params.e{32};
else
  error 'could not find e_32'
end
if isfield(params, 'e_33')
  e_33 = params.e_33;
elseif isfield(params, 'e')
  e_33 = params.e{33};
else
  error 'could not find e_33'
end
if isfield(params, 'e_34')
  e_34 = params.e_34;
elseif isfield(params, 'e')
  e_34 = params.e{34};
else
  error 'could not find e_34'
end
if isfield(params, 'e_35')
  e_35 = params.e_35;
elseif isfield(params, 'e')
  e_35 = params.e{35};
else
  error 'could not find e_35'
end
if isfield(params, 'e_36')
  e_36 = params.e_36;
elseif isfield(params, 'e')
  e_36 = params.e{36};
else
  error 'could not find e_36'
end
if isfield(params, 'e_37')
  e_37 = params.e_37;
elseif isfield(params, 'e')
  e_37 = params.e{37};
else
  error 'could not find e_37'
end
if isfield(params, 'e_38')
  e_38 = params.e_38;
elseif isfield(params, 'e')
  e_38 = params.e{38};
else
  error 'could not find e_38'
end
if isfield(params, 'e_39')
  e_39 = params.e_39;
elseif isfield(params, 'e')
  e_39 = params.e{39};
else
  error 'could not find e_39'
end
h = params.h;
phi0 = params.phi0;
phi_max = params.phi_max;
phif = params.phif;
if isfield(params, 'psi_hat_1')
  psi_hat_1 = params.psi_hat_1;
elseif isfield(params, 'psi_hat')
  psi_hat_1 = params.psi_hat{1};
else
  error 'could not find psi_hat_1'
end
if isfield(params, 'psi_hat_2')
  psi_hat_2 = params.psi_hat_2;
elseif isfield(params, 'psi_hat')
  psi_hat_2 = params.psi_hat{2};
else
  error 'could not find psi_hat_2'
end
if isfield(params, 'psi_hat_3')
  psi_hat_3 = params.psi_hat_3;
elseif isfield(params, 'psi_hat')
  psi_hat_3 = params.psi_hat{3};
else
  error 'could not find psi_hat_3'
end
if isfield(params, 'psi_hat_4')
  psi_hat_4 = params.psi_hat_4;
elseif isfield(params, 'psi_hat')
  psi_hat_4 = params.psi_hat{4};
else
  error 'could not find psi_hat_4'
end
if isfield(params, 'psi_hat_5')
  psi_hat_5 = params.psi_hat_5;
elseif isfield(params, 'psi_hat')
  psi_hat_5 = params.psi_hat{5};
else
  error 'could not find psi_hat_5'
end
if isfield(params, 'psi_hat_6')
  psi_hat_6 = params.psi_hat_6;
elseif isfield(params, 'psi_hat')
  psi_hat_6 = params.psi_hat{6};
else
  error 'could not find psi_hat_6'
end
if isfield(params, 'psi_hat_7')
  psi_hat_7 = params.psi_hat_7;
elseif isfield(params, 'psi_hat')
  psi_hat_7 = params.psi_hat{7};
else
  error 'could not find psi_hat_7'
end
if isfield(params, 'psi_hat_8')
  psi_hat_8 = params.psi_hat_8;
elseif isfield(params, 'psi_hat')
  psi_hat_8 = params.psi_hat{8};
else
  error 'could not find psi_hat_8'
end
if isfield(params, 'psi_hat_9')
  psi_hat_9 = params.psi_hat_9;
elseif isfield(params, 'psi_hat')
  psi_hat_9 = params.psi_hat{9};
else
  error 'could not find psi_hat_9'
end
if isfield(params, 'psi_hat_10')
  psi_hat_10 = params.psi_hat_10;
elseif isfield(params, 'psi_hat')
  psi_hat_10 = params.psi_hat{10};
else
  error 'could not find psi_hat_10'
end
if isfield(params, 'psi_hat_11')
  psi_hat_11 = params.psi_hat_11;
elseif isfield(params, 'psi_hat')
  psi_hat_11 = params.psi_hat{11};
else
  error 'could not find psi_hat_11'
end
if isfield(params, 'psi_hat_12')
  psi_hat_12 = params.psi_hat_12;
elseif isfield(params, 'psi_hat')
  psi_hat_12 = params.psi_hat{12};
else
  error 'could not find psi_hat_12'
end
if isfield(params, 'psi_hat_13')
  psi_hat_13 = params.psi_hat_13;
elseif isfield(params, 'psi_hat')
  psi_hat_13 = params.psi_hat{13};
else
  error 'could not find psi_hat_13'
end
if isfield(params, 'psi_hat_14')
  psi_hat_14 = params.psi_hat_14;
elseif isfield(params, 'psi_hat')
  psi_hat_14 = params.psi_hat{14};
else
  error 'could not find psi_hat_14'
end
if isfield(params, 'psi_hat_15')
  psi_hat_15 = params.psi_hat_15;
elseif isfield(params, 'psi_hat')
  psi_hat_15 = params.psi_hat{15};
else
  error 'could not find psi_hat_15'
end
if isfield(params, 'psi_hat_16')
  psi_hat_16 = params.psi_hat_16;
elseif isfield(params, 'psi_hat')
  psi_hat_16 = params.psi_hat{16};
else
  error 'could not find psi_hat_16'
end
if isfield(params, 'psi_hat_17')
  psi_hat_17 = params.psi_hat_17;
elseif isfield(params, 'psi_hat')
  psi_hat_17 = params.psi_hat{17};
else
  error 'could not find psi_hat_17'
end
if isfield(params, 'psi_hat_18')
  psi_hat_18 = params.psi_hat_18;
elseif isfield(params, 'psi_hat')
  psi_hat_18 = params.psi_hat{18};
else
  error 'could not find psi_hat_18'
end
if isfield(params, 'psi_hat_19')
  psi_hat_19 = params.psi_hat_19;
elseif isfield(params, 'psi_hat')
  psi_hat_19 = params.psi_hat{19};
else
  error 'could not find psi_hat_19'
end
if isfield(params, 'psi_hat_20')
  psi_hat_20 = params.psi_hat_20;
elseif isfield(params, 'psi_hat')
  psi_hat_20 = params.psi_hat{20};
else
  error 'could not find psi_hat_20'
end
if isfield(params, 'psi_hat_21')
  psi_hat_21 = params.psi_hat_21;
elseif isfield(params, 'psi_hat')
  psi_hat_21 = params.psi_hat{21};
else
  error 'could not find psi_hat_21'
end
if isfield(params, 'psi_hat_22')
  psi_hat_22 = params.psi_hat_22;
elseif isfield(params, 'psi_hat')
  psi_hat_22 = params.psi_hat{22};
else
  error 'could not find psi_hat_22'
end
if isfield(params, 'psi_hat_23')
  psi_hat_23 = params.psi_hat_23;
elseif isfield(params, 'psi_hat')
  psi_hat_23 = params.psi_hat{23};
else
  error 'could not find psi_hat_23'
end
if isfield(params, 'psi_hat_24')
  psi_hat_24 = params.psi_hat_24;
elseif isfield(params, 'psi_hat')
  psi_hat_24 = params.psi_hat{24};
else
  error 'could not find psi_hat_24'
end
if isfield(params, 'psi_hat_25')
  psi_hat_25 = params.psi_hat_25;
elseif isfield(params, 'psi_hat')
  psi_hat_25 = params.psi_hat{25};
else
  error 'could not find psi_hat_25'
end
if isfield(params, 'psi_hat_26')
  psi_hat_26 = params.psi_hat_26;
elseif isfield(params, 'psi_hat')
  psi_hat_26 = params.psi_hat{26};
else
  error 'could not find psi_hat_26'
end
if isfield(params, 'psi_hat_27')
  psi_hat_27 = params.psi_hat_27;
elseif isfield(params, 'psi_hat')
  psi_hat_27 = params.psi_hat{27};
else
  error 'could not find psi_hat_27'
end
if isfield(params, 'psi_hat_28')
  psi_hat_28 = params.psi_hat_28;
elseif isfield(params, 'psi_hat')
  psi_hat_28 = params.psi_hat{28};
else
  error 'could not find psi_hat_28'
end
if isfield(params, 'psi_hat_29')
  psi_hat_29 = params.psi_hat_29;
elseif isfield(params, 'psi_hat')
  psi_hat_29 = params.psi_hat{29};
else
  error 'could not find psi_hat_29'
end
if isfield(params, 'psi_hat_30')
  psi_hat_30 = params.psi_hat_30;
elseif isfield(params, 'psi_hat')
  psi_hat_30 = params.psi_hat{30};
else
  error 'could not find psi_hat_30'
end
if isfield(params, 'psi_hat_31')
  psi_hat_31 = params.psi_hat_31;
elseif isfield(params, 'psi_hat')
  psi_hat_31 = params.psi_hat{31};
else
  error 'could not find psi_hat_31'
end
if isfield(params, 'psi_hat_32')
  psi_hat_32 = params.psi_hat_32;
elseif isfield(params, 'psi_hat')
  psi_hat_32 = params.psi_hat{32};
else
  error 'could not find psi_hat_32'
end
if isfield(params, 'psi_hat_33')
  psi_hat_33 = params.psi_hat_33;
elseif isfield(params, 'psi_hat')
  psi_hat_33 = params.psi_hat{33};
else
  error 'could not find psi_hat_33'
end
if isfield(params, 'psi_hat_34')
  psi_hat_34 = params.psi_hat_34;
elseif isfield(params, 'psi_hat')
  psi_hat_34 = params.psi_hat{34};
else
  error 'could not find psi_hat_34'
end
if isfield(params, 'psi_hat_35')
  psi_hat_35 = params.psi_hat_35;
elseif isfield(params, 'psi_hat')
  psi_hat_35 = params.psi_hat{35};
else
  error 'could not find psi_hat_35'
end
if isfield(params, 'psi_hat_36')
  psi_hat_36 = params.psi_hat_36;
elseif isfield(params, 'psi_hat')
  psi_hat_36 = params.psi_hat{36};
else
  error 'could not find psi_hat_36'
end
if isfield(params, 'psi_hat_37')
  psi_hat_37 = params.psi_hat_37;
elseif isfield(params, 'psi_hat')
  psi_hat_37 = params.psi_hat{37};
else
  error 'could not find psi_hat_37'
end
if isfield(params, 'psi_hat_38')
  psi_hat_38 = params.psi_hat_38;
elseif isfield(params, 'psi_hat')
  psi_hat_38 = params.psi_hat{38};
else
  error 'could not find psi_hat_38'
end
if isfield(params, 'psi_hat_39')
  psi_hat_39 = params.psi_hat_39;
elseif isfield(params, 'psi_hat')
  psi_hat_39 = params.psi_hat{39};
else
  error 'could not find psi_hat_39'
end
if isfield(params, 'psi_hat_40')
  psi_hat_40 = params.psi_hat_40;
elseif isfield(params, 'psi_hat')
  psi_hat_40 = params.psi_hat{40};
else
  error 'could not find psi_hat_40'
end
if isfield(params, 'rho_1')
  rho_1 = params.rho_1;
elseif isfield(params, 'rho')
  rho_1 = params.rho{1};
else
  error 'could not find rho_1'
end
if isfield(params, 'rho_2')
  rho_2 = params.rho_2;
elseif isfield(params, 'rho')
  rho_2 = params.rho{2};
else
  error 'could not find rho_2'
end
if isfield(params, 'rho_3')
  rho_3 = params.rho_3;
elseif isfield(params, 'rho')
  rho_3 = params.rho{3};
else
  error 'could not find rho_3'
end
if isfield(params, 'rho_4')
  rho_4 = params.rho_4;
elseif isfield(params, 'rho')
  rho_4 = params.rho{4};
else
  error 'could not find rho_4'
end
if isfield(params, 'rho_5')
  rho_5 = params.rho_5;
elseif isfield(params, 'rho')
  rho_5 = params.rho{5};
else
  error 'could not find rho_5'
end
if isfield(params, 'rho_6')
  rho_6 = params.rho_6;
elseif isfield(params, 'rho')
  rho_6 = params.rho{6};
else
  error 'could not find rho_6'
end
if isfield(params, 'rho_7')
  rho_7 = params.rho_7;
elseif isfield(params, 'rho')
  rho_7 = params.rho{7};
else
  error 'could not find rho_7'
end
if isfield(params, 'rho_8')
  rho_8 = params.rho_8;
elseif isfield(params, 'rho')
  rho_8 = params.rho{8};
else
  error 'could not find rho_8'
end
if isfield(params, 'rho_9')
  rho_9 = params.rho_9;
elseif isfield(params, 'rho')
  rho_9 = params.rho{9};
else
  error 'could not find rho_9'
end
if isfield(params, 'rho_10')
  rho_10 = params.rho_10;
elseif isfield(params, 'rho')
  rho_10 = params.rho{10};
else
  error 'could not find rho_10'
end
if isfield(params, 'rho_11')
  rho_11 = params.rho_11;
elseif isfield(params, 'rho')
  rho_11 = params.rho{11};
else
  error 'could not find rho_11'
end
if isfield(params, 'rho_12')
  rho_12 = params.rho_12;
elseif isfield(params, 'rho')
  rho_12 = params.rho{12};
else
  error 'could not find rho_12'
end
if isfield(params, 'rho_13')
  rho_13 = params.rho_13;
elseif isfield(params, 'rho')
  rho_13 = params.rho{13};
else
  error 'could not find rho_13'
end
if isfield(params, 'rho_14')
  rho_14 = params.rho_14;
elseif isfield(params, 'rho')
  rho_14 = params.rho{14};
else
  error 'could not find rho_14'
end
if isfield(params, 'rho_15')
  rho_15 = params.rho_15;
elseif isfield(params, 'rho')
  rho_15 = params.rho{15};
else
  error 'could not find rho_15'
end
if isfield(params, 'rho_16')
  rho_16 = params.rho_16;
elseif isfield(params, 'rho')
  rho_16 = params.rho{16};
else
  error 'could not find rho_16'
end
if isfield(params, 'rho_17')
  rho_17 = params.rho_17;
elseif isfield(params, 'rho')
  rho_17 = params.rho{17};
else
  error 'could not find rho_17'
end
if isfield(params, 'rho_18')
  rho_18 = params.rho_18;
elseif isfield(params, 'rho')
  rho_18 = params.rho{18};
else
  error 'could not find rho_18'
end
if isfield(params, 'rho_19')
  rho_19 = params.rho_19;
elseif isfield(params, 'rho')
  rho_19 = params.rho{19};
else
  error 'could not find rho_19'
end
if isfield(params, 'rho_20')
  rho_20 = params.rho_20;
elseif isfield(params, 'rho')
  rho_20 = params.rho{20};
else
  error 'could not find rho_20'
end
if isfield(params, 'rho_21')
  rho_21 = params.rho_21;
elseif isfield(params, 'rho')
  rho_21 = params.rho{21};
else
  error 'could not find rho_21'
end
if isfield(params, 'rho_22')
  rho_22 = params.rho_22;
elseif isfield(params, 'rho')
  rho_22 = params.rho{22};
else
  error 'could not find rho_22'
end
if isfield(params, 'rho_23')
  rho_23 = params.rho_23;
elseif isfield(params, 'rho')
  rho_23 = params.rho{23};
else
  error 'could not find rho_23'
end
if isfield(params, 'rho_24')
  rho_24 = params.rho_24;
elseif isfield(params, 'rho')
  rho_24 = params.rho{24};
else
  error 'could not find rho_24'
end
if isfield(params, 'rho_25')
  rho_25 = params.rho_25;
elseif isfield(params, 'rho')
  rho_25 = params.rho{25};
else
  error 'could not find rho_25'
end
if isfield(params, 'rho_26')
  rho_26 = params.rho_26;
elseif isfield(params, 'rho')
  rho_26 = params.rho{26};
else
  error 'could not find rho_26'
end
if isfield(params, 'rho_27')
  rho_27 = params.rho_27;
elseif isfield(params, 'rho')
  rho_27 = params.rho{27};
else
  error 'could not find rho_27'
end
if isfield(params, 'rho_28')
  rho_28 = params.rho_28;
elseif isfield(params, 'rho')
  rho_28 = params.rho{28};
else
  error 'could not find rho_28'
end
if isfield(params, 'rho_29')
  rho_29 = params.rho_29;
elseif isfield(params, 'rho')
  rho_29 = params.rho{29};
else
  error 'could not find rho_29'
end
if isfield(params, 'rho_30')
  rho_30 = params.rho_30;
elseif isfield(params, 'rho')
  rho_30 = params.rho{30};
else
  error 'could not find rho_30'
end
if isfield(params, 'rho_31')
  rho_31 = params.rho_31;
elseif isfield(params, 'rho')
  rho_31 = params.rho{31};
else
  error 'could not find rho_31'
end
if isfield(params, 'rho_32')
  rho_32 = params.rho_32;
elseif isfield(params, 'rho')
  rho_32 = params.rho{32};
else
  error 'could not find rho_32'
end
if isfield(params, 'rho_33')
  rho_33 = params.rho_33;
elseif isfield(params, 'rho')
  rho_33 = params.rho{33};
else
  error 'could not find rho_33'
end
if isfield(params, 'rho_34')
  rho_34 = params.rho_34;
elseif isfield(params, 'rho')
  rho_34 = params.rho{34};
else
  error 'could not find rho_34'
end
if isfield(params, 'rho_35')
  rho_35 = params.rho_35;
elseif isfield(params, 'rho')
  rho_35 = params.rho{35};
else
  error 'could not find rho_35'
end
if isfield(params, 'rho_36')
  rho_36 = params.rho_36;
elseif isfield(params, 'rho')
  rho_36 = params.rho{36};
else
  error 'could not find rho_36'
end
if isfield(params, 'rho_37')
  rho_37 = params.rho_37;
elseif isfield(params, 'rho')
  rho_37 = params.rho{37};
else
  error 'could not find rho_37'
end
if isfield(params, 'rho_38')
  rho_38 = params.rho_38;
elseif isfield(params, 'rho')
  rho_38 = params.rho{38};
else
  error 'could not find rho_38'
end
if isfield(params, 'rho_39')
  rho_39 = params.rho_39;
elseif isfield(params, 'rho')
  rho_39 = params.rho{39};
else
  error 'could not find rho_39'
end
if isfield(params, 'rho_40')
  rho_40 = params.rho_40;
elseif isfield(params, 'rho')
  rho_40 = params.rho{40};
else
  error 'could not find rho_40'
end
u0 = params.u0;
u_max = params.u_max;
uf = params.uf;
x0 = params.x0;
xf = params.xf;
cvx_begin
  % Caution: automatically generated by cvxgen. May be incorrect.
  variable phi(40, 1);
  variable x_2(3, 1);
  variable x_1(3, 1);
  variable x_3(3, 1);
  variable x_4(3, 1);
  variable x_5(3, 1);
  variable x_6(3, 1);
  variable x_7(3, 1);
  variable x_8(3, 1);
  variable x_9(3, 1);
  variable x_10(3, 1);
  variable x_11(3, 1);
  variable x_12(3, 1);
  variable x_13(3, 1);
  variable x_14(3, 1);
  variable x_15(3, 1);
  variable x_16(3, 1);
  variable x_17(3, 1);
  variable x_18(3, 1);
  variable x_19(3, 1);
  variable x_20(3, 1);
  variable x_21(3, 1);
  variable x_22(3, 1);
  variable x_23(3, 1);
  variable x_24(3, 1);
  variable x_25(3, 1);
  variable x_26(3, 1);
  variable x_27(3, 1);
  variable x_28(3, 1);
  variable x_29(3, 1);
  variable x_30(3, 1);
  variable x_31(3, 1);
  variable x_32(3, 1);
  variable x_33(3, 1);
  variable x_34(3, 1);
  variable x_35(3, 1);
  variable x_36(3, 1);
  variable x_37(3, 1);
  variable x_38(3, 1);
  variable x_39(3, 1);
  variable x_40(3, 1);
  variable u(40, 1);

  minimize(norm(phi, 1));
  subject to
    x_2(1) == x_1(1) + a_1*x_1(3) + b_1;
    x_3(1) == x_2(1) + a_2*x_2(3) + b_2;
    x_4(1) == x_3(1) + a_3*x_3(3) + b_3;
    x_5(1) == x_4(1) + a_4*x_4(3) + b_4;
    x_6(1) == x_5(1) + a_5*x_5(3) + b_5;
    x_7(1) == x_6(1) + a_6*x_6(3) + b_6;
    x_8(1) == x_7(1) + a_7*x_7(3) + b_7;
    x_9(1) == x_8(1) + a_8*x_8(3) + b_8;
    x_10(1) == x_9(1) + a_9*x_9(3) + b_9;
    x_11(1) == x_10(1) + a_10*x_10(3) + b_10;
    x_12(1) == x_11(1) + a_11*x_11(3) + b_11;
    x_13(1) == x_12(1) + a_12*x_12(3) + b_12;
    x_14(1) == x_13(1) + a_13*x_13(3) + b_13;
    x_15(1) == x_14(1) + a_14*x_14(3) + b_14;
    x_16(1) == x_15(1) + a_15*x_15(3) + b_15;
    x_17(1) == x_16(1) + a_16*x_16(3) + b_16;
    x_18(1) == x_17(1) + a_17*x_17(3) + b_17;
    x_19(1) == x_18(1) + a_18*x_18(3) + b_18;
    x_20(1) == x_19(1) + a_19*x_19(3) + b_19;
    x_21(1) == x_20(1) + a_20*x_20(3) + b_20;
    x_22(1) == x_21(1) + a_21*x_21(3) + b_21;
    x_23(1) == x_22(1) + a_22*x_22(3) + b_22;
    x_24(1) == x_23(1) + a_23*x_23(3) + b_23;
    x_25(1) == x_24(1) + a_24*x_24(3) + b_24;
    x_26(1) == x_25(1) + a_25*x_25(3) + b_25;
    x_27(1) == x_26(1) + a_26*x_26(3) + b_26;
    x_28(1) == x_27(1) + a_27*x_27(3) + b_27;
    x_29(1) == x_28(1) + a_28*x_28(3) + b_28;
    x_30(1) == x_29(1) + a_29*x_29(3) + b_29;
    x_31(1) == x_30(1) + a_30*x_30(3) + b_30;
    x_32(1) == x_31(1) + a_31*x_31(3) + b_31;
    x_33(1) == x_32(1) + a_32*x_32(3) + b_32;
    x_34(1) == x_33(1) + a_33*x_33(3) + b_33;
    x_35(1) == x_34(1) + a_34*x_34(3) + b_34;
    x_36(1) == x_35(1) + a_35*x_35(3) + b_35;
    x_37(1) == x_36(1) + a_36*x_36(3) + b_36;
    x_38(1) == x_37(1) + a_37*x_37(3) + b_37;
    x_39(1) == x_38(1) + a_38*x_38(3) + b_38;
    x_40(1) == x_39(1) + a_39*x_39(3) + b_39;
    x_2(2) == x_1(2) + c_1*x_1(3) + d_1;
    x_3(2) == x_2(2) + c_2*x_2(3) + d_2;
    x_4(2) == x_3(2) + c_3*x_3(3) + d_3;
    x_5(2) == x_4(2) + c_4*x_4(3) + d_4;
    x_6(2) == x_5(2) + c_5*x_5(3) + d_5;
    x_7(2) == x_6(2) + c_6*x_6(3) + d_6;
    x_8(2) == x_7(2) + c_7*x_7(3) + d_7;
    x_9(2) == x_8(2) + c_8*x_8(3) + d_8;
    x_10(2) == x_9(2) + c_9*x_9(3) + d_9;
    x_11(2) == x_10(2) + c_10*x_10(3) + d_10;
    x_12(2) == x_11(2) + c_11*x_11(3) + d_11;
    x_13(2) == x_12(2) + c_12*x_12(3) + d_12;
    x_14(2) == x_13(2) + c_13*x_13(3) + d_13;
    x_15(2) == x_14(2) + c_14*x_14(3) + d_14;
    x_16(2) == x_15(2) + c_15*x_15(3) + d_15;
    x_17(2) == x_16(2) + c_16*x_16(3) + d_16;
    x_18(2) == x_17(2) + c_17*x_17(3) + d_17;
    x_19(2) == x_18(2) + c_18*x_18(3) + d_18;
    x_20(2) == x_19(2) + c_19*x_19(3) + d_19;
    x_21(2) == x_20(2) + c_20*x_20(3) + d_20;
    x_22(2) == x_21(2) + c_21*x_21(3) + d_21;
    x_23(2) == x_22(2) + c_22*x_22(3) + d_22;
    x_24(2) == x_23(2) + c_23*x_23(3) + d_23;
    x_25(2) == x_24(2) + c_24*x_24(3) + d_24;
    x_26(2) == x_25(2) + c_25*x_25(3) + d_25;
    x_27(2) == x_26(2) + c_26*x_26(3) + d_26;
    x_28(2) == x_27(2) + c_27*x_27(3) + d_27;
    x_29(2) == x_28(2) + c_28*x_28(3) + d_28;
    x_30(2) == x_29(2) + c_29*x_29(3) + d_29;
    x_31(2) == x_30(2) + c_30*x_30(3) + d_30;
    x_32(2) == x_31(2) + c_31*x_31(3) + d_31;
    x_33(2) == x_32(2) + c_32*x_32(3) + d_32;
    x_34(2) == x_33(2) + c_33*x_33(3) + d_33;
    x_35(2) == x_34(2) + c_34*x_34(3) + d_34;
    x_36(2) == x_35(2) + c_35*x_35(3) + d_35;
    x_37(2) == x_36(2) + c_36*x_36(3) + d_36;
    x_38(2) == x_37(2) + c_37*x_37(3) + d_37;
    x_39(2) == x_38(2) + c_38*x_38(3) + d_38;
    x_40(2) == x_39(2) + c_39*x_39(3) + d_39;
    x_2(3) == x_1(3) + e_1*phi(1);
    x_3(3) == x_2(3) + e_2*phi(2);
    x_4(3) == x_3(3) + e_3*phi(3);
    x_5(3) == x_4(3) + e_4*phi(4);
    x_6(3) == x_5(3) + e_5*phi(5);
    x_7(3) == x_6(3) + e_6*phi(6);
    x_8(3) == x_7(3) + e_7*phi(7);
    x_9(3) == x_8(3) + e_8*phi(8);
    x_10(3) == x_9(3) + e_9*phi(9);
    x_11(3) == x_10(3) + e_10*phi(10);
    x_12(3) == x_11(3) + e_11*phi(11);
    x_13(3) == x_12(3) + e_12*phi(12);
    x_14(3) == x_13(3) + e_13*phi(13);
    x_15(3) == x_14(3) + e_14*phi(14);
    x_16(3) == x_15(3) + e_15*phi(15);
    x_17(3) == x_16(3) + e_16*phi(16);
    x_18(3) == x_17(3) + e_17*phi(17);
    x_19(3) == x_18(3) + e_18*phi(18);
    x_20(3) == x_19(3) + e_19*phi(19);
    x_21(3) == x_20(3) + e_20*phi(20);
    x_22(3) == x_21(3) + e_21*phi(21);
    x_23(3) == x_22(3) + e_22*phi(22);
    x_24(3) == x_23(3) + e_23*phi(23);
    x_25(3) == x_24(3) + e_24*phi(24);
    x_26(3) == x_25(3) + e_25*phi(25);
    x_27(3) == x_26(3) + e_26*phi(26);
    x_28(3) == x_27(3) + e_27*phi(27);
    x_29(3) == x_28(3) + e_28*phi(28);
    x_30(3) == x_29(3) + e_29*phi(29);
    x_31(3) == x_30(3) + e_30*phi(30);
    x_32(3) == x_31(3) + e_31*phi(31);
    x_33(3) == x_32(3) + e_32*phi(32);
    x_34(3) == x_33(3) + e_33*phi(33);
    x_35(3) == x_34(3) + e_34*phi(34);
    x_36(3) == x_35(3) + e_35*phi(35);
    x_37(3) == x_36(3) + e_36*phi(36);
    x_38(3) == x_37(3) + e_37*phi(37);
    x_39(3) == x_38(3) + e_38*phi(38);
    x_40(3) == x_39(3) + e_39*phi(39);
    phi(2) == phi(1) + h*u(1);
    phi(3) == phi(2) + h*u(2);
    phi(4) == phi(3) + h*u(3);
    phi(5) == phi(4) + h*u(4);
    phi(6) == phi(5) + h*u(5);
    phi(7) == phi(6) + h*u(6);
    phi(8) == phi(7) + h*u(7);
    phi(9) == phi(8) + h*u(8);
    phi(10) == phi(9) + h*u(9);
    phi(11) == phi(10) + h*u(10);
    phi(12) == phi(11) + h*u(11);
    phi(13) == phi(12) + h*u(12);
    phi(14) == phi(13) + h*u(13);
    phi(15) == phi(14) + h*u(14);
    phi(16) == phi(15) + h*u(15);
    phi(17) == phi(16) + h*u(16);
    phi(18) == phi(17) + h*u(17);
    phi(19) == phi(18) + h*u(18);
    phi(20) == phi(19) + h*u(19);
    phi(21) == phi(20) + h*u(20);
    phi(22) == phi(21) + h*u(21);
    phi(23) == phi(22) + h*u(22);
    phi(24) == phi(23) + h*u(23);
    phi(25) == phi(24) + h*u(24);
    phi(26) == phi(25) + h*u(25);
    phi(27) == phi(26) + h*u(26);
    phi(28) == phi(27) + h*u(27);
    phi(29) == phi(28) + h*u(28);
    phi(30) == phi(29) + h*u(29);
    phi(31) == phi(30) + h*u(30);
    phi(32) == phi(31) + h*u(31);
    phi(33) == phi(32) + h*u(32);
    phi(34) == phi(33) + h*u(33);
    phi(35) == phi(34) + h*u(34);
    phi(36) == phi(35) + h*u(35);
    phi(37) == phi(36) + h*u(36);
    phi(38) == phi(37) + h*u(37);
    phi(39) == phi(38) + h*u(38);
    phi(40) == phi(39) + h*u(39);
    x_1 == x0;
    x_40 == xf;
    phi(1) == phi0;
    phi(40) == phif;
    u(1) == u0;
    u(40) == uf;
    abs(u) <= u_max;
    abs(phi) <= phi_max;
    abs(x_1(3) - psi_hat_1) <= rho_1;
    abs(x_2(3) - psi_hat_2) <= rho_2;
    abs(x_3(3) - psi_hat_3) <= rho_3;
    abs(x_4(3) - psi_hat_4) <= rho_4;
    abs(x_5(3) - psi_hat_5) <= rho_5;
    abs(x_6(3) - psi_hat_6) <= rho_6;
    abs(x_7(3) - psi_hat_7) <= rho_7;
    abs(x_8(3) - psi_hat_8) <= rho_8;
    abs(x_9(3) - psi_hat_9) <= rho_9;
    abs(x_10(3) - psi_hat_10) <= rho_10;
    abs(x_11(3) - psi_hat_11) <= rho_11;
    abs(x_12(3) - psi_hat_12) <= rho_12;
    abs(x_13(3) - psi_hat_13) <= rho_13;
    abs(x_14(3) - psi_hat_14) <= rho_14;
    abs(x_15(3) - psi_hat_15) <= rho_15;
    abs(x_16(3) - psi_hat_16) <= rho_16;
    abs(x_17(3) - psi_hat_17) <= rho_17;
    abs(x_18(3) - psi_hat_18) <= rho_18;
    abs(x_19(3) - psi_hat_19) <= rho_19;
    abs(x_20(3) - psi_hat_20) <= rho_20;
    abs(x_21(3) - psi_hat_21) <= rho_21;
    abs(x_22(3) - psi_hat_22) <= rho_22;
    abs(x_23(3) - psi_hat_23) <= rho_23;
    abs(x_24(3) - psi_hat_24) <= rho_24;
    abs(x_25(3) - psi_hat_25) <= rho_25;
    abs(x_26(3) - psi_hat_26) <= rho_26;
    abs(x_27(3) - psi_hat_27) <= rho_27;
    abs(x_28(3) - psi_hat_28) <= rho_28;
    abs(x_29(3) - psi_hat_29) <= rho_29;
    abs(x_30(3) - psi_hat_30) <= rho_30;
    abs(x_31(3) - psi_hat_31) <= rho_31;
    abs(x_32(3) - psi_hat_32) <= rho_32;
    abs(x_33(3) - psi_hat_33) <= rho_33;
    abs(x_34(3) - psi_hat_34) <= rho_34;
    abs(x_35(3) - psi_hat_35) <= rho_35;
    abs(x_36(3) - psi_hat_36) <= rho_36;
    abs(x_37(3) - psi_hat_37) <= rho_37;
    abs(x_38(3) - psi_hat_38) <= rho_38;
    abs(x_39(3) - psi_hat_39) <= rho_39;
    abs(x_40(3) - psi_hat_40) <= rho_40;
cvx_end
vars.phi = phi;
vars.u = u;
vars.x_1 = x_1;
vars.x{1} = x_1;
vars.x_2 = x_2;
vars.x{2} = x_2;
vars.x_3 = x_3;
vars.x{3} = x_3;
vars.x_4 = x_4;
vars.x{4} = x_4;
vars.x_5 = x_5;
vars.x{5} = x_5;
vars.x_6 = x_6;
vars.x{6} = x_6;
vars.x_7 = x_7;
vars.x{7} = x_7;
vars.x_8 = x_8;
vars.x{8} = x_8;
vars.x_9 = x_9;
vars.x{9} = x_9;
vars.x_10 = x_10;
vars.x{10} = x_10;
vars.x_11 = x_11;
vars.x{11} = x_11;
vars.x_12 = x_12;
vars.x{12} = x_12;
vars.x_13 = x_13;
vars.x{13} = x_13;
vars.x_14 = x_14;
vars.x{14} = x_14;
vars.x_15 = x_15;
vars.x{15} = x_15;
vars.x_16 = x_16;
vars.x{16} = x_16;
vars.x_17 = x_17;
vars.x{17} = x_17;
vars.x_18 = x_18;
vars.x{18} = x_18;
vars.x_19 = x_19;
vars.x{19} = x_19;
vars.x_20 = x_20;
vars.x{20} = x_20;
vars.x_21 = x_21;
vars.x{21} = x_21;
vars.x_22 = x_22;
vars.x{22} = x_22;
vars.x_23 = x_23;
vars.x{23} = x_23;
vars.x_24 = x_24;
vars.x{24} = x_24;
vars.x_25 = x_25;
vars.x{25} = x_25;
vars.x_26 = x_26;
vars.x{26} = x_26;
vars.x_27 = x_27;
vars.x{27} = x_27;
vars.x_28 = x_28;
vars.x{28} = x_28;
vars.x_29 = x_29;
vars.x{29} = x_29;
vars.x_30 = x_30;
vars.x{30} = x_30;
vars.x_31 = x_31;
vars.x{31} = x_31;
vars.x_32 = x_32;
vars.x{32} = x_32;
vars.x_33 = x_33;
vars.x{33} = x_33;
vars.x_34 = x_34;
vars.x{34} = x_34;
vars.x_35 = x_35;
vars.x{35} = x_35;
vars.x_36 = x_36;
vars.x{36} = x_36;
vars.x_37 = x_37;
vars.x{37} = x_37;
vars.x_38 = x_38;
vars.x{38} = x_38;
vars.x_39 = x_39;
vars.x{39} = x_39;
vars.x_40 = x_40;
vars.x{40} = x_40;
status.cvx_status = cvx_status;
% Provide a drop-in replacement for csolve.
status.optval = cvx_optval;
status.converged = strcmp(cvx_status, 'Solved');
