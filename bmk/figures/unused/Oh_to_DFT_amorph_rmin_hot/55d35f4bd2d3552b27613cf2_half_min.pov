#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.05*x up 13.75*y
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

atom(< -5.19,   0.82,  -0.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -4.27,  -1.81,  -0.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -3.59,  -4.47,  -0.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -1.58,  -2.53,  -0.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -0.87,  -5.20,  -0.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -4.25,   0.11,  -2.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.47,   2.28,  -2.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -2.17,   0.41,  -5.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -2.27,   0.20,  -0.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -1.53,  -3.87,  -3.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -0.64,  -0.98,  -3.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  0.77,  -3.40,  -4.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  0.77,  -2.94,  -1.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  0.96,  -5.53,  -2.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  3.14,  -3.42,  -3.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -3.16,   2.68,  -0.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -0.05,   5.53,  -0.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  0.07,   1.41,  -1.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.25,  -0.68,  -0.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  2.08,   1.37,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  2.86,  -1.08,  -1.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  3.31,  -3.77,  -0.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  0.54,   1.31,  -4.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -0.06,  -1.11,  -5.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  2.04,  -1.00,  -4.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -0.23,   3.80,  -3.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  1.99,   3.76,  -1.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  2.79,   1.30,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  5.19,   0.56,  -0.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  4.63,  -0.82,  -3.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
