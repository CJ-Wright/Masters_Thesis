#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.03*x up 11.06*y
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

atom(< -2.28,  -1.59,  -8.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -1.93,  -3.61,  -6.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -4.31,  -1.69,  -6.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -4.21,  -3.74,  -4.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.27,  -1.69,  -4.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -1.80,  -4.25,  -3.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -4.39,  -1.19,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -2.31,  -2.20,  -1.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -4.49,   0.31,  -7.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -2.11,   1.50,  -8.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.08,   0.36,  -6.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -3.94,   2.67,  -6.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -4.47,   0.77,  -4.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.06,   2.19,  -4.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -2.00,   0.22,  -2.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -4.21,   1.78,  -2.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.27,  -0.23,  -0.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -1.84,   2.12,  -0.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -1.42,   3.76,  -6.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -4.71,   3.55,  -4.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -2.20,   3.84,  -2.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -0.05,  -3.21,  -8.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  2.33,  -1.62,  -8.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  2.30,  -3.58,  -6.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.09,  -1.70,  -6.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.59,  -4.06,  -4.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  2.13,  -1.70,  -4.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  2.21,  -3.79,  -2.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -0.05,  -1.94,  -2.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  0.01,  -3.51,  -0.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  2.19,  -1.68,  -0.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  0.03,  -0.13,  -8.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  2.32,   1.55,  -8.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  2.10,   0.23,  -6.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  0.08,   1.83,  -6.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.05,   0.17,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  1.91,   2.15,  -4.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.32,   0.58,  -2.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  0.15,   2.24,  -2.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -0.19,  -0.17,  -0.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.85,   2.72,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  0.14,   3.23,  -8.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  1.70,   3.68,  -6.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -0.07,   4.00,  -4.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  2.28,   4.25,  -2.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  0.46,   4.23,  -0.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  4.29,  -1.64,  -5.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  3.64,  -4.06,  -4.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.17,  -1.83,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  4.58,   0.14,  -7.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  3.93,   2.23,  -6.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  4.05,   0.51,  -4.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  4.71,   2.73,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  4.42,   0.17,  -0.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  3.69,   4.13,  -4.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
