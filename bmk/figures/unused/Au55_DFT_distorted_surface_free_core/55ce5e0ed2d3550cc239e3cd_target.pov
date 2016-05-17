#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.60*x up 11.26*y
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

atom(< -1.61,  -1.98,  -1.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.52,  -4.09,  -3.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  1.01,  -1.91,  -1.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  2.38,  -4.12,  -3.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  1.25,  -2.02,  -4.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.70,  -4.34,  -5.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  4.47,  -2.46,  -4.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  3.96,  -2.09,  -7.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.14,   0.01,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -1.54,   2.00,  -1.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -0.08,   0.04,  -2.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  1.47,   2.14,  -1.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  2.63,  -0.48,  -2.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  1.43,   2.03,  -4.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  2.76,  -0.03,  -5.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  4.58,   1.80,  -4.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  5.46,  -0.51,  -5.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  4.45,   1.82,  -7.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -0.15,   4.34,  -2.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  3.07,   3.93,  -3.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  2.87,   4.03,  -5.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -2.69,  -3.63,  -3.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -4.46,  -1.57,  -4.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -2.86,  -3.81,  -6.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -1.62,  -1.89,  -4.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -0.46,  -4.05,  -5.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -1.65,  -1.84,  -7.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -0.43,  -3.65,  -8.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  1.22,  -1.97,  -7.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  2.50,  -4.03,  -8.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  1.13,  -1.72, -10.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -3.20,   0.10,  -2.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -4.38,   2.36,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -2.97,   0.23,  -5.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -1.44,   2.16,  -4.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.11,   0.10,  -5.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -1.46,   2.22,  -7.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -0.13,   0.15,  -8.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  1.41,   2.09,  -7.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.10,   0.24,  -8.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  1.49,   1.97, -10.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -2.18,   4.22,  -3.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.65,   4.21,  -5.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  0.15,   3.96,  -5.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  0.08,   4.34,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  2.57,   3.83,  -8.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -4.65,  -1.95,  -7.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -3.28,  -3.98,  -8.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -1.90,  -1.62, -10.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -5.46,   0.44,  -5.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -4.49,   2.43,  -7.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -3.21,   0.35,  -8.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -1.94,   2.40, -10.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -0.14,   0.01, -11.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -2.78,   4.07,  -8.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
