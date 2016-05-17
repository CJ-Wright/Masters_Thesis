#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -15.96*x up 14.68*y
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

atom(< -5.36,  -4.88,  -0.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -5.77,  -2.04,  -0.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -6.17,   0.81,  -0.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -6.58,   3.66,  -0.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -4.14,  -3.26,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -2.51,  -4.48,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.92,  -1.63,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -2.78,  -5.97,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -1.56,  -4.34,  -2.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.95,   2.44,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -3.32,   1.22,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -3.73,   4.07,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -4.54,  -0.41,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -3.60,  -0.27,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.97,  -1.49,  -2.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.37,   1.36,  -2.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -3.19,  -3.12,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -4.41,   5.43,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -2.78,   4.21,  -2.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -4.00,   2.58,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -1.70,  -0.00,  -6.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -0.34,  -2.71,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  0.88,  -1.09,  -6.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  0.07,  -5.56,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  1.02,  -5.43,  -1.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.24,  -3.80,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -1.15,   2.98,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  0.47,   1.76,  -6.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -0.75,   0.14,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  0.20,   0.27,  -1.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  1.83,  -0.95,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  1.42,   1.90,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  0.61,  -2.58,  -1.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  3.19,  -3.66,  -0.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  2.78,  -0.81,  -0.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -1.56,   5.83,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -0.61,   5.97,  -1.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  1.02,   4.75,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -0.20,   3.12,  -1.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  2.37,   2.04,  -0.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  1.97,   4.88,  -0.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  3.46,  -2.17,  -5.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  2.65,   3.53,  -5.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  3.05,   0.68,  -5.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  4.00,   0.81,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  4.41,  -2.04,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  5.36,  -1.90,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  6.58,  -0.27,  -2.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  3.60,   3.66,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  4.54,   3.80,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  6.17,   2.58,  -2.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  4.95,   0.95,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
