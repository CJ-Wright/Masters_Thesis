#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.58*x up 12.39*y
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

atom(< -2.75,  -2.92,  -2.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.22,  -2.75,  -1.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.40,  -0.59,  -1.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.14,  -0.22,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  0.04,  -0.08,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.65,   0.30,  -1.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.78,   2.56,  -0.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.74,   2.62,  -2.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -4.97,  -0.93,  -2.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.93,  -1.06,  -5.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.46,  -0.48,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.85,   1.61,  -3.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.99,   1.63,  -2.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.04,   1.95,  -5.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.45,   2.35,  -4.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.45,   4.61,  -3.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  1.17,   4.51,  -2.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  1.01,   4.88,  -5.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.69,   1.44,  -7.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.87,   4.09,  -5.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -1.84,   4.29,  -6.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -0.84,  -4.45,  -2.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.03,  -4.88,  -5.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  1.70,  -4.31,  -4.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.45,  -2.54,  -4.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.13,  -2.31,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  1.96,  -2.16,  -5.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  4.30,  -1.74,  -4.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  2.45,   0.29,  -4.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  4.97,   0.66,  -2.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  4.72,   0.69,  -5.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -3.23,  -3.23,  -5.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -3.05,  -3.01,  -8.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -0.53,  -2.56,  -6.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -2.53,  -0.51,  -6.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.04,  -0.11,  -5.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -0.12,  -0.13,  -8.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.38,   0.27,  -7.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  0.37,   2.32,  -7.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  2.83,   3.15,  -5.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  3.19,   2.76,  -8.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -4.77,  -0.38,  -8.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.66,  -0.46,  -9.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -2.06,   1.89,  -8.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -0.00,   2.35,  -9.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  0.94,   4.35,  -8.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  1.73,  -4.83,  -6.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  4.18,  -4.38,  -5.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.18,  -1.93,  -7.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -1.13,  -4.66,  -8.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -0.70,  -2.70,  -9.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  1.83,  -2.34,  -8.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  2.28,  -0.08, -10.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  4.94,   0.57,  -8.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  0.14,  -0.22, -11.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
