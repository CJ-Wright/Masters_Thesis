#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -14.67*x up 14.80*y
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

atom(< -2.64,  -3.56,  -5.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -1.48,  -2.19,  -3.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -0.32,  -0.81,  -0.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.02,  -2.46,  -5.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  1.18,  -1.08,  -3.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.34,   0.29,  -1.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.33,  -0.70,  -5.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -1.17,   0.68,  -3.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.01,   2.06,  -0.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.30,  -1.95,  -3.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -3.14,  -0.57,  -1.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -3.18,  -4.48,  -2.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.02,  -3.10,  -0.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.51,  -4.80,  -3.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.65,  -3.42,  -1.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  2.67,  -1.35,  -5.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  3.83,   0.02,  -3.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  4.99,   1.40,  -1.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.33,   0.41,  -5.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  1.49,   1.79,  -3.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  2.65,   3.16,  -1.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -2.02,   2.17,  -5.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -0.86,   3.55,  -3.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  0.30,   4.92,  -0.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -3.99,   0.92,  -3.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -2.83,   2.30,  -1.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -5.97,  -0.33,  -1.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -4.84,  -2.86,  -0.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -3.72,  -5.40,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -1.05,  -5.71,  -1.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  1.63,  -6.03,  -2.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  2.79,  -4.65,  -0.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  2.15,  -3.69,  -4.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  3.31,  -2.31,  -1.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  2.99,   1.52,  -5.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  4.15,   2.89,  -3.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  5.31,   4.27,  -1.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  0.64,   3.28,  -5.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  1.80,   4.65,  -3.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  2.96,   6.03,  -1.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -3.68,   3.79,  -3.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -2.52,   5.17,  -1.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -5.66,   2.54,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  4.28,  -4.92,  -2.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  5.44,  -3.55,  -0.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  4.81,  -2.58,  -4.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  5.97,  -1.21,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -0.24,  -1.27,  -8.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
