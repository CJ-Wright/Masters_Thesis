#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.81*x up 12.51*y
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

atom(< -0.08,   0.07,  -4.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  2.37,   0.07,  -6.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  2.37,   0.07,  -3.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -2.54,   0.07,  -6.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.54,   0.07,  -3.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -1.60,   2.52,  -4.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  1.43,   2.52,  -4.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -1.60,  -2.39,  -4.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  1.43,  -2.39,  -4.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -0.08,  -1.45,  -2.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -0.08,   1.58,  -2.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -0.08,  -1.45,  -7.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -0.08,   1.58,  -7.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  5.08,  -0.19,  -7.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  4.78,   0.28,  -4.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  4.53,   0.21,  -1.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.94,   0.10,  -8.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -5.08,  -0.09,  -4.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.99,   0.13,  -1.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.21,   4.94,  -5.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -0.38,   4.63,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  2.89,   4.84,  -4.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -2.91,  -4.94,  -4.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -0.07,  -4.81,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  3.08,  -4.66,  -5.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -0.18,  -2.85,  -0.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -0.27,  -0.25,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -0.29,   3.43,  -0.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -0.47,  -3.27,  -9.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -0.10,  -0.10,  -9.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  0.25,   2.46, -10.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  2.40,  -1.59,  -1.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  2.40,   1.70,  -1.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  2.50,  -1.80,  -9.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  2.48,   1.33,  -8.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -2.74,  -1.57,  -0.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -2.66,   1.29,  -1.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -2.57,  -1.43,  -8.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -2.68,   1.23,  -8.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.88,   2.65,  -6.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  4.07,   2.15,  -3.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -3.76,   2.19,  -6.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -4.14,   2.32,  -3.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  4.28,  -2.36,  -5.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  3.85,  -2.51,  -3.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -3.96,  -2.32,  -6.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -3.90,  -2.58,  -3.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -1.84,   3.98,  -2.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  1.19,   3.95,  -2.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -1.52,  -3.62,  -2.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  1.46,  -3.58,  -2.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -1.35,   3.99,  -7.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  1.62,   4.20,  -7.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -1.73,  -4.01,  -7.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  1.47,  -3.78,  -7.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
