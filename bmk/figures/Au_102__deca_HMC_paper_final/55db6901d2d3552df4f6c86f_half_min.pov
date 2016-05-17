#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -15.25*x up 15.82*y
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

atom(< -1.97,  -3.69,  -6.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -1.23,  -2.32,  -3.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -0.23,  -1.28,  -1.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.50,  -2.27,  -5.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  1.30,  -0.97,  -3.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.25,   0.63,  -1.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.02,  -0.74,  -5.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -1.15,   0.57,  -3.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.34,   1.98,  -1.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.04,  -2.32,  -4.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -3.26,  -0.91,  -1.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -2.65,  -4.77,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.91,  -3.38,  -0.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  0.02,  -4.77,  -4.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  1.01,  -3.58,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  2.97,  -0.85,  -5.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  3.93,   0.62,  -3.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  4.85,   2.08,  -1.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.51,   0.58,  -5.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  1.36,   1.97,  -3.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  2.30,   3.57,  -1.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -1.98,   2.09,  -5.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.23,   3.64,  -3.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -0.53,   5.69,  -0.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -4.00,   0.63,  -4.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -3.09,   2.01,  -1.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -6.24,  -1.27,  -2.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -5.12,   0.66,  -0.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -4.70,  -3.43,  -1.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -3.36,  -5.80,  -0.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -0.65,  -5.92,  -1.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  2.08,  -6.52,  -2.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  3.29,  -4.47,  -0.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  2.73,  -3.26,  -4.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  3.55,  -1.85,  -1.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  2.98,   2.02,  -5.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  3.85,   3.47,  -3.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  4.87,   4.96,  -1.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  0.46,   3.45,  -5.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  1.31,   4.84,  -3.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.35,   6.52,  -1.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -4.00,   3.46,  -4.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -3.12,   4.88,  -1.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -5.89,   2.04,  -2.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -4.98,   3.52,  -0.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  5.08,  -4.12,  -2.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  5.58,  -2.69,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  5.26,  -1.77,  -4.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  6.24,  -0.45,  -1.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -0.39,  -0.61,  -8.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
