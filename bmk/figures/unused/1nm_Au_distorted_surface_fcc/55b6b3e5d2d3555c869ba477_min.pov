#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.15*x up 13.57*y
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

atom(< -2.31,  -0.92,  -1.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.13,  -3.19,  -1.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.98,  -3.42,  -3.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.05,  -0.41,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  0.71,   1.87,  -1.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.56,  -0.52,  -1.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.08,  -0.64,  -3.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  3.28,   2.09,  -3.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -4.84,  -1.05,  -2.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.50,   1.46,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.45,  -0.77,  -4.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -5.24,  -0.85,  -6.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.84,   1.50,  -2.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -1.15,   3.75,  -3.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.65,   1.89,  -4.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.88,   1.75,  -5.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  1.56,   4.16,  -3.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  2.29,   5.44,  -5.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.44,   1.86,  -7.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.85,   4.26,  -5.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -1.46,   4.20,  -6.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -1.13,  -5.24,  -3.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -0.57,  -2.95,  -4.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  1.45,  -5.10,  -4.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -1.15,  -5.44,  -6.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.07,  -3.28,  -3.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  2.53,  -0.29,  -4.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  4.20,  -2.23,  -4.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  1.88,  -2.60,  -6.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  5.24,  -0.24,  -3.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  4.88,  -0.23,  -6.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.94,  -3.10,  -6.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.53,  -0.56,  -7.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -0.65,  -2.74,  -7.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -3.15,  -2.57,  -9.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.00,  -0.42,  -5.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  0.56,   2.10,  -7.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.44,  -0.08,  -7.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -0.09,  -0.21,  -8.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.09,   2.46,  -5.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  3.12,   2.11,  -8.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -5.05,  -1.00,  -8.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.89,  -0.41, -10.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -1.68,   2.30,  -8.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  0.76,   2.54, -10.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  1.08,   4.54,  -8.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  1.39,  -4.85,  -7.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  3.75,  -4.02,  -5.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.22,  -2.50,  -8.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -1.60,  -5.36,  -8.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -1.65,  -3.91, -10.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  1.61,  -2.37,  -8.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  2.20,  -0.17, -10.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  5.04,  -0.03,  -8.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  0.05,  -0.41, -12.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
