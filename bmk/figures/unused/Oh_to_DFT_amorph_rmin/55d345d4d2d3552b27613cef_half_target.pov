#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.49*x up 11.91*y
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

atom(<  4.93,   1.44,  -0.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  3.17,  -3.09,  -1.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -0.95,  -0.97,  -0.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -1.72,   4.12,  -2.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -0.22,  -1.29,  -5.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -4.42,  -0.46,  -2.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -1.48,  -3.65,  -0.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  0.91,   3.25,  -2.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  4.74,  -1.65,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -3.70,  -1.75,  -0.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.51,   0.20,  -4.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  0.48,  -3.00,  -3.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.20,   1.50,  -0.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.16,  -2.07,  -3.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  1.11,  -4.65,  -0.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  3.08,   1.48,  -3.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.93,   0.91,  -0.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  2.91,   3.36,  -0.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  2.35,  -1.15,  -4.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  1.75,  -0.80,  -1.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -4.13,   3.63,  -0.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -3.67,   2.21,  -3.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  4.60,  -0.75,  -2.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  0.56,   1.54,  -0.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.40,   0.49,  -2.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.43,   4.65,  -0.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  1.14,   1.25,  -5.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -1.24,   2.65,  -4.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
