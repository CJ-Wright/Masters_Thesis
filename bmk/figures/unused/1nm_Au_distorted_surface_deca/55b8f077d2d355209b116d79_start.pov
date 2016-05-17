#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -15.21*x up 14.57*y
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

atom(<  0.00,   0.15,  -8.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.00,   0.15,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  0.00,   0.15,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.00,   0.15,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  2.38,   0.92,  -7.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.38,   0.92,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  2.38,   0.92,  -1.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  0.00,   2.65,  -7.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  0.00,   2.65,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.00,   2.65,  -1.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.38,   0.92,  -7.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -2.38,   0.92,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.38,   0.92,  -1.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -1.47,  -1.87,  -7.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.47,  -1.87,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.47,  -1.87,  -1.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  1.47,  -1.87,  -7.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  1.47,  -1.87,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  1.47,  -1.87,  -1.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  4.75,   1.69,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  4.75,   1.69,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  2.38,   3.42,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  2.38,   3.42,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  0.00,   5.14,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.00,   5.14,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -2.38,   3.42,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -2.38,   3.42,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -4.75,   1.69,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -4.75,   1.69,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -3.84,  -1.10,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -3.84,  -1.10,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.94,  -3.90,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.94,  -3.90,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -0.00,  -3.90,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -0.00,  -3.90,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  2.94,  -3.90,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  2.94,  -3.90,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  3.84,  -1.10,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  3.84,  -1.10,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  4.75,   4.19,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.38,   5.92,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -2.38,   5.92,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -4.75,   4.19,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -6.22,  -0.33,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -5.31,  -3.12,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -1.47,  -5.92,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  1.47,  -5.92,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  5.31,  -3.12,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  6.22,  -0.33,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
