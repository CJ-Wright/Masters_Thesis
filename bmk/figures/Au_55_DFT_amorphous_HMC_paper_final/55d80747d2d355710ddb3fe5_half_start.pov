#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -11.53*x up 12.80*y
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

atom(< -2.49,  -3.48,  -1.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -4.47,  -1.62,  -1.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.76,  -0.19,  -3.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -2.21,  -0.62,  -0.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -4.37,   1.15,  -1.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -1.94,   2.20,  -0.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.48,   2.69,  -3.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -3.94,   3.88,  -1.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -1.67,   5.08,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -0.35,  -5.08,  -0.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  1.49,  -3.75,  -2.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -0.09,  -2.40,  -0.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -0.65,  -2.01,  -2.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  1.22,  -0.46,  -4.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  1.76,  -0.89,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -0.35,   0.89,  -2.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  2.03,   1.94,  -1.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -0.86,   1.32,  -5.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  1.50,   2.43,  -4.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -0.09,   3.81,  -2.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  2.31,   4.81,  -0.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  3.92,  -2.67,  -0.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  3.26,  -2.14,  -3.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  3.66,   0.62,  -3.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  4.27,   0.16,  -0.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  4.47,   3.00,  -0.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  3.79,   3.37,  -2.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
