#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.80*x up 10.29*y
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

atom(<  1.64,   3.88,  -0.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -1.52,   3.14,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.27,   0.39,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -2.86,  -2.07,  -0.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  0.02,   2.74,  -2.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -0.88,  -0.22,  -2.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -1.47,  -2.93,  -2.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.87,   2.18,  -1.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  2.46,  -0.92,  -1.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  1.58,  -3.88,  -1.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.71,   1.84,  -2.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -3.36,  -0.86,  -1.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -0.99,   1.16,  -4.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -1.71,  -1.24,  -4.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  1.73,   0.78,  -3.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  1.09,  -1.91,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  4.65,  -0.14,  -2.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  3.76,  -2.76,  -3.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  3.48,  -2.52,  -0.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -5.55,   1.17,  -2.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -3.94,   0.70,  -4.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  0.64,  -0.38,  -6.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  3.24,  -1.05,  -5.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  5.55,  -2.12,  -1.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 