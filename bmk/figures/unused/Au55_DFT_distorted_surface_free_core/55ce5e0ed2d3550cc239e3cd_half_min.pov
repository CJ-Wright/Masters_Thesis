#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.16*x up 11.17*y
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

atom(<  2.27,  -4.23,  -0.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  3.71,  -2.29,  -1.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  2.37,  -0.22,  -0.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  5.25,  -0.32,  -0.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  3.77,   1.76,  -1.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.46,   3.79,  -0.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -0.82,  -4.30,  -0.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -2.02,  -2.17,  -1.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.78,  -4.08,  -2.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.97,  -2.15,  -1.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  2.07,  -4.14,  -2.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  0.81,  -2.30,  -4.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -3.25,  -0.04,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.35,  -0.27,  -0.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.72,   1.85,  -1.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -0.67,  -0.03,  -2.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  0.93,   1.83,  -1.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  2.51,  -0.41,  -3.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.85,   2.04,  -4.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -0.13,   4.30,  -2.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  2.39,   3.85,  -2.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -5.25,  -1.88,  -1.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -3.56,  -4.00,  -2.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -2.48,  -2.15,  -4.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -5.14,   2.12,  -1.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -3.53,  -0.04,  -2.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -2.37,   2.08,  -4.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -0.68,  -0.20,  -5.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -3.36,   4.00,  -2.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
