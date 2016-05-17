#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.06*x up 12.65*y
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

atom(< -4.50,  -2.82,  -1.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -5.20,  -0.30,  -0.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -5.08,   1.82,  -2.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -2.46,   4.59,  -0.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.27,  -4.47,  -2.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -1.47,  -2.39,  -3.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.12,  -4.65,  -2.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -1.79,  -1.81,  -1.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  0.31,  -5.00,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  1.10,  -1.49,  -1.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -3.56,  -0.57,  -2.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -0.92,   1.26,  -5.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -0.70,   0.12,  -2.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.48,   1.63,  -1.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  1.42,   1.64,  -1.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -3.37,   3.97,  -2.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -0.57,   2.89,  -3.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  0.08,   5.00,  -1.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  2.27,   3.98,  -0.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  2.63,  -2.47,  -3.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  2.49,  -4.13,  -1.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  3.70,  -2.17,  -0.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  0.61,  -1.18,  -5.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  1.50,   1.30,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  3.31,  -0.11,  -2.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  4.09,   2.43,  -1.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  5.20,   0.17,  -0.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  2.09,   3.78,  -3.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
