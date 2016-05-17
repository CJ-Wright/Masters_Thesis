#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.74*x up 11.92*y
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

atom(< -2.19,   1.70,  -0.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -5.05,   0.70,  -1.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  4.49,   1.40,  -0.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -1.43,   0.94,  -4.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  1.58,  -4.41,  -3.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -3.15,  -3.96,  -3.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.91,   2.90,  -2.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  1.33,   0.68,  -3.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -3.19,  -3.66,  -0.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.37,   3.38,  -0.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  1.10,   4.66,  -1.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -0.78,  -3.75,  -4.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  1.66,  -4.57,  -0.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.09,  -0.67,  -1.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -0.85,  -4.66,  -1.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  3.58,  -0.17,  -2.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.62,  -1.85,  -2.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  2.45,   2.32,  -1.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  3.59,  -3.06,  -1.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  1.97,  -1.59,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -4.10,   0.50,  -3.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -1.65,   4.45,  -0.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -2.67,  -1.68,  -4.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  5.05,  -1.31,  -0.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.26,   0.45,  -0.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.40,  -1.91,  -2.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -0.13,   2.85,  -2.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  2.54,  -1.90,  -4.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  0.02,  -1.25,  -5.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
