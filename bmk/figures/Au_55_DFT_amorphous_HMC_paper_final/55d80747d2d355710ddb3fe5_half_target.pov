#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.26*x up 12.51*y
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

atom(< -3.26,   4.28,  -1.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.04,   0.83,  -2.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.75,   0.97,  -4.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  1.23,   2.33,  -0.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -0.11,  -3.09,  -3.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  1.05,   3.49,  -3.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -4.82,  -2.72,  -0.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  3.61,   2.63,  -2.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  0.29,  -0.80,  -5.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  1.62,  -3.47,  -1.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  4.82,   0.96,  -0.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -1.52,   2.06,  -0.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  2.29,   4.94,  -1.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.35,   1.93,  -5.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  4.36,   0.06,  -2.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -3.05,  -4.62,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -1.70,  -1.15,  -1.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -1.83,   3.41,  -3.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.31,  -0.85,  -2.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  3.60,  -1.57,  -0.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -2.27,  -1.71,  -4.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  2.31,   1.10,  -4.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -2.86,  -3.60,  -2.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -4.12,   1.78,  -1.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.48,   4.82,  -1.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.75,  -0.59,  -0.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  2.18,  -1.55,  -3.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -0.70,  -4.94,  -1.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
