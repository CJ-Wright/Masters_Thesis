#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -15.01*x up 14.51*y
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

atom(<  0.12,   0.35,  -8.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.08,   0.18,  -5.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  0.08,   0.18,  -2.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.04,   0.19,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  2.35,   0.90,  -7.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.46,   0.96,  -4.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  2.64,   0.99,  -1.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -0.37,   3.11,  -7.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  0.08,   2.68,  -4.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.30,   2.99,  -1.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.46,   0.92,  -7.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -2.29,   0.96,  -4.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.48,   0.96,  -1.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -1.66,  -2.05,  -7.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.39,  -1.84,  -4.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.45,  -1.75,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  1.61,  -1.74,  -7.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  1.55,  -1.84,  -4.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  1.86,  -1.90,  -1.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  4.93,   1.92,  -5.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  4.70,   2.01,  -3.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  2.47,   3.82,  -5.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  2.39,   3.37,  -3.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  0.05,   5.53,  -6.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.13,   5.85,  -2.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -2.41,   3.43,  -5.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -2.18,   3.58,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -4.94,   1.65,  -5.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -4.61,   1.68,  -3.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -3.67,  -1.19,  -5.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -3.56,  -1.36,  -2.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.88,  -3.79,  -5.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.78,  -4.06,  -2.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  0.20,  -3.52,  -5.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  0.09,  -3.64,  -2.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  3.00,  -3.73,  -5.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  3.10,  -4.10,  -3.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  3.65,  -1.23,  -6.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  3.99,  -0.70,  -3.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  4.59,   3.88,  -4.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  1.93,   5.89,  -4.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -2.44,   5.77,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -4.96,   4.30,  -4.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -6.13,  -0.33,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -4.75,  -3.21,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -1.13,  -5.89,  -4.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  1.80,  -5.84,  -4.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  5.51,  -2.93,  -4.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  6.13,  -0.18,  -4.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
