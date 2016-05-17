#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.20*x up 14.31*y
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

atom(< -0.19,  -0.17,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -1.20,   3.52,  -2.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -3.28,   1.71,  -2.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -3.36,   4.09,  -4.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -1.34,   2.16,  -4.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -0.84,   5.10,  -4.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.20,   4.01,  -6.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  0.01,   5.48,  -7.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -2.65,  -0.40,  -1.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -3.08,  -2.88,  -2.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.19,  -0.53,  -4.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.60,  -1.18,  -5.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -3.66,   1.56,  -5.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.24,  -0.66,  -6.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.31,   1.69,  -7.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -5.26,   0.23,  -7.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -3.80,   2.52,  -8.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -1.95,   1.48, -10.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -2.91,  -3.22,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.64,  -2.25,  -8.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -2.26,  -1.52, -10.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  0.96,   2.37,  -0.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  2.03,  -0.18,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  3.19,   2.21,  -2.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.31,   0.92,  -3.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  1.20,   3.66,  -3.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  2.44,   1.60,  -5.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  3.84,   4.05,  -5.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  0.58,   3.15,  -6.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  1.75,   5.79,  -5.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  2.48,   4.02,  -7.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -0.32,  -1.58,  -2.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  1.43,  -3.59,  -3.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  1.91,  -1.18,  -4.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -0.56,  -2.41,  -4.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.40,  -0.07,  -6.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  1.98,  -1.70,  -8.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  1.88,   1.27,  -7.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -0.26,  -0.16,  -9.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -0.02,   3.28,  -9.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.29,  -0.52, -10.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  0.45,  -5.79,  -4.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  0.89,  -4.55,  -8.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -0.81,  -2.59,  -7.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  0.32,  -2.46, -10.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -0.19,  -0.17, -12.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  4.21,  -0.29,  -3.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  5.26,   1.75,  -4.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.31,   2.25,  -7.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  3.59,  -2.53,  -1.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  3.99,  -2.79,  -4.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  3.61,  -0.43,  -6.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  4.90,  -1.95, -10.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  4.38,  -0.03,  -8.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  2.78,  -3.69, -10.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
