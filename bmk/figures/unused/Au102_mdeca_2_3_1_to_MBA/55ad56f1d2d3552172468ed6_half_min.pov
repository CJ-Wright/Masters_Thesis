#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -18.45*x up 17.48*y
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

atom(< -0.06,   6.67,  -4.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.25,   4.06,  -2.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  0.49,   1.65,  -0.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  2.08,   6.28,  -2.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  2.39,   3.86,  -0.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -0.63,   6.59,  -1.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.39,   5.20,  -3.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -2.11,   2.77,  -1.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.81,   3.89,  -5.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -0.57,   1.49,  -3.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -0.31,  -0.94,  -1.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -0.37,  -3.30,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  1.94,   4.67,  -4.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  2.30,   2.20,  -2.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  2.58,  -0.86,  -1.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  4.39,  -3.18,  -0.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  6.44,   3.90,  -0.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -4.46,   7.23,  -2.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -3.06,   5.34,  -0.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -5.21,   4.36,  -3.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -5.02,   2.90,  -0.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -3.25,   2.54,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -2.87,   0.19,  -2.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -2.86,  -2.24,  -0.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -4.38,   4.56,  -5.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -1.22,  -1.18,  -4.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  0.76,  -3.25,  -4.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -2.98,  -5.03,  -4.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  1.11,   1.99,  -5.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  1.66,  -0.39,  -4.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  1.84,  -3.45,  -1.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.16,  -7.31,  -0.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  6.43,   2.67,  -3.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  4.42,   0.55,  -4.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  5.68,  -0.96,  -1.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  6.94,  -4.59,  -0.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  4.78,   7.31,  -1.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  4.28,   4.44,  -2.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -7.76,   3.15,  -1.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -7.11,   0.82,  -0.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -5.73,   1.44,  -2.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -5.39,  -1.37,  -1.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -1.12,  -6.88,  -3.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -3.24,  -2.11,  -6.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -2.24,  -4.85,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  0.61,  -0.66,  -6.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  5.48,  -1.55,  -5.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  0.51,  -5.93,  -0.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  2.68,   0.54,  -8.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  6.35,   1.45,  -6.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  3.79,  -2.23,  -3.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  7.28,  -0.11,  -4.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  4.61,   1.67,  -1.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  7.76,   1.03,  -1.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
