#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.23*x up 12.67*y
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

atom(< -0.84,  -3.15,  -9.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -2.47,  -4.40,  -5.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -4.04,  -2.19,  -6.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -4.56,  -3.24,  -3.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.12,  -1.87,  -4.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -2.31,  -4.35,  -2.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -3.22,  -1.93,  -1.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -1.36,  -3.22,  -0.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -3.08,  -1.65,  -8.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -2.83,   1.27,  -9.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.40,  -0.01,  -6.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.50,   1.80,  -6.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -4.17,  -0.32,  -4.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.22,   1.61,  -4.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.78,   0.08,  -2.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -5.28,   2.25,  -3.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.32,   0.61,  -1.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -2.14,   2.11,  -0.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -2.37,   3.22,  -7.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.12,   4.03,  -4.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -1.77,   4.53,  -2.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -0.22,  -4.80,  -7.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  1.44,  -2.71,  -8.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  2.10,  -4.27,  -5.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.35,  -2.17,  -6.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -0.08,  -4.33,  -4.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  1.69,  -2.15,  -4.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  2.50,  -4.42,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -0.39,  -2.28,  -2.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  0.11,  -5.02,  -1.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  1.38,  -2.51,  -0.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -0.48,  -0.67,  -8.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  1.73,   0.92,  -9.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  1.73,  -0.43,  -6.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -0.34,   1.53,  -7.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.16,   0.21,  -4.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  2.21,   2.34,  -3.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  1.43,  -0.09,  -2.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -0.24,   2.14,  -2.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -0.78,  -0.58,  -0.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.42,   2.71,  -1.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  1.36,   3.54,  -9.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  1.83,   5.02,  -5.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -0.32,   3.46,  -4.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  0.94,   4.60,  -2.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  0.05,   3.87,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  3.70,  -2.15,  -6.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  4.37,  -3.14,  -4.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  3.52,  -1.87,  -2.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  3.50,  -1.06,  -9.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  4.15,   0.67,  -7.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  3.37,  -0.17,  -4.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  5.28,   3.24,  -1.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  4.21,   0.81,  -2.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  3.59,   4.92,  -3.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
