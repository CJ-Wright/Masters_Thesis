#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.96*x up 8.81*y
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

atom(<  0.02,   3.18,  -2.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.87,   0.43,  -2.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -1.77,  -2.31,  -2.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  2.67,   2.31,  -1.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  1.78,  -0.43,  -1.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  0.89,  -3.18,  -1.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.80,   2.58,  -2.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -3.70,  -0.17,  -2.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -1.16,   2.04,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -2.05,  -0.70,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  1.49,   1.18,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  0.60,  -1.56,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  4.15,   0.32,  -2.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  3.26,  -2.43,  -2.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  4.15,   0.32,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  3.26,  -2.43,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -5.63,   1.98,  -2.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -3.99,   1.44,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.31,   0.05,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  2.97,  -0.82,  -5.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  5.63,  -1.68,  -1.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
