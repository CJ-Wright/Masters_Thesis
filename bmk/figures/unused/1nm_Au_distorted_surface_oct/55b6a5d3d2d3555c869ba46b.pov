#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -15.02*x up 15.48*y
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

atom(< -6.13,   0.11,  -5.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -4.20,  -1.85,  -6.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -4.20,   0.22,  -7.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -4.39,   0.19,  -3.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -4.60,   2.31,  -5.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -2.48,  -3.65,  -6.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.27,  -6.35,  -6.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  0.04,  -3.52,  -8.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.08,  -4.30,  -3.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -2.09,   0.36,  -9.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -0.40,  -1.56, -10.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -0.22,   0.67, -12.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.17,  -1.53,  -7.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.24,   0.23,  -5.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -0.20,  -1.81,  -5.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -0.20,   0.23,  -7.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -2.31,  -2.00,  -3.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -2.16,   0.25,  -1.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.04,  -1.83,  -1.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -0.20,   0.23,  -3.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  0.26,  -0.20,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  0.05,   2.44,  -9.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -2.22,   2.40,  -7.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -2.18,   3.89,  -5.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.20,   2.27,  -5.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -0.04,   4.34,  -7.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -1.93,   2.55,  -3.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  0.04,   2.22,  -1.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -0.02,   4.02,  -3.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -0.39,   6.35,  -5.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  1.88,  -3.84,  -6.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  1.79,   0.52,  -9.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  1.95,  -1.84,  -7.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  1.84,   0.23,  -5.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  3.81,  -1.47,  -5.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  3.95,   0.27,  -7.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  1.66,  -1.75,  -3.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  1.78,   0.22,  -2.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  3.66,  -0.04,  -3.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  1.61,   2.15,  -7.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.47,   4.55,  -5.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  3.85,   2.26,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  2.09,   2.46,  -3.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  6.13,   0.29,  -5.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
