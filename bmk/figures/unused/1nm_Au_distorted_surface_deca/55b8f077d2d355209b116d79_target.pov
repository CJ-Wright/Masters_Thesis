#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -15.37*x up 14.95*y
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

atom(<  0.12,   0.18,  -8.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.02,   0.21,  -5.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  0.02,   0.21,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.13,   0.12,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  2.45,   0.60,  -7.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.40,   0.98,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  2.22,   0.70,  -1.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -0.02,   2.72,  -7.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  0.02,   2.71,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.10,   2.59,  -1.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.47,   1.35,  -7.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -2.35,   0.98,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.31,   0.59,  -1.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -1.40,  -1.66,  -7.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.44,  -1.81,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.59,  -1.90,  -1.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  1.56,  -2.16,  -7.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  1.49,  -1.81,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  1.70,  -1.62,  -1.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  4.71,   1.82,  -5.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  4.68,   1.72,  -3.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  2.16,   3.64,  -5.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  2.39,   3.68,  -2.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -0.10,   5.28,  -5.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.02,   5.52,  -3.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -2.19,   3.50,  -5.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -2.33,   3.08,  -2.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -4.66,   2.05,  -5.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -4.89,   1.66,  -2.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -3.75,  -1.14,  -5.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -3.80,  -0.84,  -2.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.98,  -3.91,  -5.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.85,  -3.78,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -0.02,  -4.11,  -5.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -0.04,  -3.99,  -2.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  3.04,  -3.45,  -5.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  3.01,  -3.85,  -3.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  3.86,  -1.03,  -5.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  3.83,  -0.98,  -2.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  4.54,   4.48,  -4.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.56,   5.80,  -3.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -2.63,   6.10,  -3.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -4.93,   4.14,  -4.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -6.30,  -0.58,  -4.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -5.50,  -2.96,  -4.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -1.13,  -6.01,  -4.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  1.66,  -6.10,  -4.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  5.60,  -3.38,  -4.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  6.30,  -0.11,  -4.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
