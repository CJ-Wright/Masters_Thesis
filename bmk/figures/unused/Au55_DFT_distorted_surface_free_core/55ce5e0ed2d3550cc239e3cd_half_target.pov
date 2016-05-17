#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.75*x up 11.26*y
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

atom(<  2.29,  -4.34,  -0.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  3.56,  -2.09,  -1.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  2.36,  -0.03,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  5.05,  -0.51,  -0.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  4.04,   1.82,  -1.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -3.26,  -3.81,  -0.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -0.86,  -4.05,  -0.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -2.05,  -1.84,  -1.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.83,  -3.65,  -2.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.82,  -1.97,  -1.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  2.10,  -4.03,  -2.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  0.72,  -1.72,  -4.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.86,   2.22,  -1.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.54,   0.15,  -2.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  1.00,   2.09,  -1.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  2.70,   0.24,  -2.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  1.09,   1.97,  -4.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -0.32,   4.34,  -2.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  2.16,   3.83,  -2.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -5.05,  -1.95,  -1.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -3.68,  -3.98,  -3.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -2.31,  -1.62,  -4.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -4.90,   2.43,  -1.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -3.62,   0.35,  -2.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -2.35,   2.40,  -4.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -0.55,   0.01,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -3.18,   4.07,  -2.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
