#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.04*x up 12.26*y
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

atom(<  0.56,   4.67,  -1.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -2.42,  -0.20,  -0.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -0.93,   2.24,  -0.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -3.70,   2.09,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.20,   4.53,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -1.62,   2.20,  -3.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -3.91,  -2.63,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -5.19,  -0.34,  -1.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -3.11,  -0.23,  -3.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  1.84,   2.38,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  3.33,   4.82,  -0.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  3.91,   2.49,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  0.93,  -2.38,  -1.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  2.42,   0.05,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -0.35,  -0.09,  -2.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  1.15,   2.35,  -2.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  1.73,   0.02,  -4.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -0.56,  -4.82,  -0.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -1.84,  -2.53,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  0.24,  -2.42,  -4.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -1.04,  -0.13,  -5.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  5.19,   0.20,  -0.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  2.20,  -4.67,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  3.70,  -2.24,  -0.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  3.00,  -2.27,  -3.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  4.50,   0.16,  -3.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  1.51,  -4.71,  -2.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
