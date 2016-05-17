#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -17.95*x up 17.65*y
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

atom(<  0.59,   0.73,  -0.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.33,  -1.91,  -1.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -1.77,   0.06,  -2.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.33,   1.85,  -3.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -3.83,  -1.73,  -0.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -1.84,  -3.76,  -0.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.05,   3.56,  -0.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.46,  -0.05,  -2.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  3.17,  -2.34,  -1.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  1.06,  -4.25,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.35,   2.89,  -2.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -2.10,  -2.59,  -3.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  0.02,  -0.77,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -4.41,   1.05,  -1.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  2.71,   2.68,  -1.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  0.01,  -4.49,  -2.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  2.04,  -2.72,  -3.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -2.16,   1.18,  -4.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.12,  -0.54,  -3.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  2.84,   2.23,  -4.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -4.55,  -4.56,  -0.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  1.33,   4.63,  -3.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  2.41,   5.17,  -0.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  5.01,   1.11,  -2.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  2.74,  -4.96,  -2.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -4.71,   2.26,  -3.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -2.31,  -1.48,  -5.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -0.22,  -3.35,  -5.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -4.99,   3.78,  -1.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -0.82,  -6.36,  -0.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  2.67,  -0.46,  -5.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  0.41,   1.38,  -5.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -6.34,  -0.80,  -1.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  5.76,  -1.05,  -0.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -0.93,   3.79,  -4.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -4.98,  -3.22,  -2.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  4.69,  -1.77,  -3.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -2.79,  -5.26,  -2.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -1.49,   5.52,  -2.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -3.17,  -4.33,  -5.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -4.03,   5.14,  -3.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  5.89,  -4.13,  -1.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -4.61,   0.59,  -6.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  1.22,  -6.84,  -3.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  2.49,  -3.85,  -6.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  5.51,   0.51,  -5.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  0.95,   7.38,  -2.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -3.80,  -7.38,  -0.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  1.51,   4.22,  -6.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -7.53,  -3.63,  -1.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  7.53,   1.26,  -0.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
