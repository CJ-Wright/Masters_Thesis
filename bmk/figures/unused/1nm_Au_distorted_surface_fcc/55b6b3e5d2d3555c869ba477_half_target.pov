#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.66*x up 12.36*y
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

atom(< -4.76,   1.79,  -1.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -1.91,   4.64,  -1.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -1.56,  -4.86,  -0.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  1.89,  -1.81,  -0.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  4.62,   1.03,  -0.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -2.63,  -0.15,  -1.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -0.61,  -2.21,  -1.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -3.09,  -2.69,  -2.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.12,   0.26,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.29,   2.70,  -1.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  2.31,   0.64,  -1.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -0.20,   0.23,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  2.68,   3.45,  -0.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  3.09,   3.10,  -2.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -5.01,  -0.05,  -2.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.72,  -0.11,  -4.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -2.09,   2.20,  -2.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -0.06,   2.70,  -4.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.89,   4.86,  -3.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  1.64,  -4.45,  -1.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  4.22,  -4.14,  -0.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  4.09,  -1.55,  -1.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.24,  -4.45,  -2.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -0.80,  -2.32,  -4.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  1.71,  -1.93,  -2.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.19,   0.30,  -4.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  5.01,   0.96,  -2.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  0.06,   0.14,  -5.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
