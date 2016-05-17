#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.46*x up 12.28*y
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

atom(<  0.72,  -2.03,  -0.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  5.39,  -0.75,  -0.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  4.37,   1.58,  -1.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  1.56,  -1.40,  -4.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -1.60,  -0.46,  -0.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  1.90,  -3.42,  -2.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.05,   1.93,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -5.39,   1.46,  -1.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  3.65,  -2.97,  -0.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -2.73,  -2.39,  -2.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  0.42,   4.31,  -0.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  3.80,  -1.44,  -2.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  1.59,  -4.83,  -0.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -4.41,  -0.95,  -0.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -3.88,   3.05,  -3.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.23,  -0.67,  -4.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -3.59,   0.19,  -3.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -0.47,  -3.24,  -3.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  2.11,   2.92,  -2.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  2.81,   3.21,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  0.65,   1.43,  -4.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  0.80,   0.10,  -2.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -0.85,  -4.13,  -1.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -4.21,   3.73,  -0.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  2.67,  -0.09,  -0.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  3.23,   0.81,  -4.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -1.34,   2.05,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -0.24,   3.93,  -3.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -2.12,   4.83,  -1.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
