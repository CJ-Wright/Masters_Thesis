#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.25*x up 13.19*y
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

atom(< -1.73,  -3.73,  -3.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.27,  -2.28,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.30,  -1.19,  -1.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -0.25,   0.10,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -0.04,   0.16,  -2.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.34,   1.04,  -1.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -0.29,   2.67,  -1.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.20,   3.46,  -2.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -4.16,  -2.25,  -2.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.68,  -1.88,  -5.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.16,  -1.00,  -4.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.61,   0.43,  -4.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -4.64,   2.92,  -3.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.35,   1.57,  -5.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -0.08,   2.44,  -4.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.36,   3.97,  -4.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  0.67,   5.26,  -3.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -0.21,   5.03,  -5.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.54,   0.58,  -7.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -4.81,   3.00,  -5.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -2.38,   4.13,  -7.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  1.48,  -4.44,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  0.60,  -4.92,  -5.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  3.38,  -5.26,  -5.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.46,  -2.25,  -4.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.64,  -1.48,  -2.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  2.60,  -1.03,  -5.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  4.81,  -0.06,  -3.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  2.40,   1.13,  -4.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  4.48,   2.38,  -3.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  4.69,   2.01,  -6.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.04,  -3.35,  -6.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -1.49,  -2.61,  -9.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  0.32,  -2.24,  -7.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -2.08,  -0.86,  -7.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.15,   0.15,  -5.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -0.02,   0.23,  -8.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.20,   0.98,  -7.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  0.02,   2.57,  -7.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  2.40,   3.68,  -5.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.26,   3.56,  -8.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -3.99,  -2.67,  -8.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.68,  -0.45, -10.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -2.39,   1.90,  -8.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  0.36,   2.86, -11.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -0.01,   5.03,  -8.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  2.62,  -3.74,  -7.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  3.26,  -2.63,  -4.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.64,  -0.57,  -7.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -0.38,  -4.44,  -8.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  0.82,  -2.32, -10.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  2.51,  -1.29,  -8.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  2.03,   1.01, -10.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  3.81,   1.64,  -8.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -0.25,   0.10, -11.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
