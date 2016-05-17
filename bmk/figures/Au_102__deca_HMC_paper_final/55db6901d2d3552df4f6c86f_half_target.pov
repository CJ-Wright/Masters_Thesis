#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -17.21*x up 16.94*y
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

atom(<  1.81,   0.13,  -0.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.34,  -1.42,  -1.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -0.19,   1.47,  -1.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -3.13,  -1.02,  -0.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  3.58,   2.40,  -0.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.44,  -1.77,  -2.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.96,   1.89,  -0.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.58,   1.08,  -3.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  0.37,  -0.35,  -4.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -2.44,   0.05,  -3.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -1.17,   4.13,  -1.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  1.59,   3.80,  -2.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  1.22,  -3.97,  -1.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -1.66,  -3.65,  -0.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  4.68,  -0.23,  -1.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.45,  -2.86,  -2.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -2.13,   2.91,  -3.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  0.15,  -3.18,  -3.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.52,   2.56,  -4.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  5.30,   2.16,  -2.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  4.96,  -2.93,  -2.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  6.35,   1.58,  -0.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -5.56,   0.55,  -0.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  4.48,  -0.57,  -4.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -1.67,   1.11,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -1.80,  -1.74,  -5.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  0.57,   6.30,  -1.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -4.48,  -3.40,  -0.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  3.93,  -4.87,  -0.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -4.85,  -1.22,  -2.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -0.35,   5.13,  -3.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -4.73,   1.86,  -3.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  3.26,   3.40,  -4.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  4.16,   4.80,  -2.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -0.98,  -5.35,  -2.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  2.33,  -2.15,  -5.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  2.66,  -4.50,  -3.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.21,   0.75,  -5.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -3.82,   4.51,  -1.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -2.20,   7.05,  -2.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  0.09,  -0.99,  -7.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -3.21,  -4.43,  -5.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -3.73,  -6.37,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  2.34,  -7.05,  -2.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -3.27,   3.58,  -6.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  0.62,   4.70,  -6.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  5.16,   1.75,  -6.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -6.71,   3.58,  -1.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -7.18,  -2.01,  -0.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  6.93,  -4.46,  -0.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  7.18,   4.32,  -1.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  4.87,  -3.60,  -5.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
