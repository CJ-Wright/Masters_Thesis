#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.95*x up 10.69*y
  direction 1.00*z
  location <0,0,50.00> look_at <0,0,0>}
light_source {<  2.00,   3.00,  40.00> color White
  area_light <0.70, 0, 0>, <0, 0.70, 0>, 3, 3
  adaptive 1 jitter}

#declare simple = finish {phong 0.7}
#declare pale = finish {ambient .5 diffuse .85 roughness .001 specular 0.200 }
#declare intermediate = finish {ambient 0.3 diffuse 0.6 specular 0.10 roughness 0.04 }
#declare vmd = finish {ambient .0 diffuse .65 phong 0.1 phong_size 40. specular 0.500 }
#declare jmol = finish {ambient .2 diffuse .6 specular 1 roughness .001 metallic}
#declare ase2 = finish {ambient 0.05 brilliance 3 diffuse 0.6 metallic specular 0.70 roughness 0.04 reflection 0.15}
#declare ase3 = finish {ambient .15 brilliance 2 diffuse .6 metallic specular 1. roughness .001 reflection .0}
#declare glass = finish {ambient .05 diffuse .3 specular 1. roughness .001}
#declare Rcell = 0.050;
#declare Rbond = 0.100;

#macro atom(LOC, R, COL, FIN)
  sphere{LOC, R texture{pigment{COL} finish{FIN}}}
#end
#macro constrain(LOC, R, COL, FIN)
union{torus{R, Rcell rotate 45*z texture{pigment{COL} finish{FIN}}}
      torus{R, Rcell rotate -45*z texture{pigment{COL} finish{FIN}}}
      translate LOC}
#end

atom(<  1.57,   4.07,  -6.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.70,   1.39,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  0.12,  -1.51,  -6.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -1.05,  -4.07,  -6.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  2.94,   2.25,  -4.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.14,  -0.85,  -4.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  1.51,  -3.14,  -4.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -0.12,   2.70,  -4.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.55,   0.51,  -3.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -1.50,  -2.62,  -3.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -1.59,   3.33,  -6.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -2.34,   0.58,  -6.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.93,  -1.88,  -6.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.05,   2.93,  -8.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -0.95,  -0.03,  -8.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.54,  -2.74,  -8.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  2.80,   2.37,  -7.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  2.39,  -0.73,  -7.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  1.51,  -3.69,  -7.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  4.24,  -0.01,  -3.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  3.83,  -2.38,  -3.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  1.47,   0.79,  -2.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  0.86,  -1.77,  -2.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -0.96,   1.54,  -1.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -1.78,  -1.02,  -1.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -2.74,   2.30,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -3.50,  -0.51,  -3.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -4.75,   2.65,  -6.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -5.13,  -0.03,  -6.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -2.78,   2.04,  -8.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -3.43,  -0.67,  -8.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -1.06,   1.35, -10.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -1.78,  -1.05, -10.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  1.66,   0.97, -10.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  1.02,  -1.72, -10.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  4.57,   0.05,  -9.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  3.69,  -2.57,  -9.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  4.00,   0.01,  -6.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  3.41,  -2.33,  -6.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.12,  -0.89,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  0.56,  -0.19,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -3.15,   1.14,  -1.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -5.34,   1.38,  -3.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -5.63,   1.37,  -8.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -4.01,   0.89, -11.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  0.56,  -0.19, -12.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  3.17,  -0.86, -11.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  5.48,  -1.93,  -7.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  5.63,  -1.64,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
