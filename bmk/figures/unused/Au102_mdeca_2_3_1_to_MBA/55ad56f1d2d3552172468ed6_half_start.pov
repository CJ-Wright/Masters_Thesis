#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -16.20*x up 15.10*y
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

atom(<  1.89,   6.06,  -3.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  1.10,   3.65,  -2.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  0.32,   1.24,  -0.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  3.63,   4.89,  -1.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  2.85,   2.48,  -0.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  1.11,   6.17,  -0.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -0.88,   5.62,  -2.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -1.67,   3.21,  -1.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -2.45,   0.80,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.41,   4.01,  -4.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -0.37,   1.60,  -3.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -1.16,  -0.81,  -2.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.94,  -3.22,  -0.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  3.20,   3.56,  -4.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  2.42,   1.15,  -2.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  1.63,  -1.26,  -1.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -3.65,   5.19,  -2.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -4.43,   2.78,  -0.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -2.36,   3.58,  -4.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.14,   1.17,  -2.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -3.93,  -1.24,  -1.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -4.71,  -3.65,  -0.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.07,   1.97,  -6.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -1.85,  -0.44,  -4.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -2.63,  -2.86,  -3.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -3.42,  -5.27,  -2.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  1.72,   1.52,  -5.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  0.94,  -0.90,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  0.16,  -3.31,  -2.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -0.63,  -5.72,  -1.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  4.51,   1.06,  -4.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  3.73,  -1.35,  -3.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  2.95,  -3.76,  -1.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  2.16,  -6.17,  -0.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  4.95,   2.40,  -2.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  4.16,  -0.01,  -0.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -5.13,   3.15,  -3.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -5.91,   0.73,  -2.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -6.69,  -1.68,  -0.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -3.84,   1.53,  -5.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -4.62,  -0.88,  -4.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -5.40,  -3.29,  -2.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  0.25,  -0.53,  -6.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -0.54,  -2.94,  -5.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -1.32,  -5.35,  -4.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  3.04,  -0.98,  -6.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  2.25,  -3.39,  -4.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  1.47,  -5.80,  -3.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  6.26,  -0.10,  -2.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  5.48,  -2.51,  -1.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  6.69,   1.23,  -0.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
