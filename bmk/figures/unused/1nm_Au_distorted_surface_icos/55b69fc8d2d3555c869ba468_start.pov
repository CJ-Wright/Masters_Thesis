#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.45*x up 12.45*y
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

atom(<  0.00,   0.00,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  2.45,   0.00,  -6.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  2.45,   0.00,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -2.45,   0.00,  -6.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.45,   0.00,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -1.52,   2.45,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  1.52,   2.45,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -1.52,  -2.45,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  1.52,  -2.45,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.00,  -1.52,  -2.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  0.00,   1.52,  -2.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  0.00,  -1.52,  -7.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  0.00,   1.52,  -7.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  4.91,   0.00,  -7.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  4.91,   0.00,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  4.91,   0.00,  -1.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.91,   0.00,  -7.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -4.91,   0.00,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.91,   0.00,  -1.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.03,   4.91,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  0.00,   4.91,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  3.03,   4.91,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -3.03,  -4.91,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  0.00,  -4.91,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  3.03,  -4.91,  -4.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.00,  -3.03,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  0.00,   0.00,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  0.00,   3.03,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  0.00,  -3.03,  -9.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  0.00,   0.00,  -9.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  0.00,   3.03,  -9.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  2.45,  -1.52,  -0.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  2.45,   1.52,  -0.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  2.45,  -1.52,  -8.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  2.45,   1.52,  -8.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -2.45,  -1.52,  -0.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -2.45,   1.52,  -0.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -2.45,  -1.52,  -8.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -2.45,   1.52,  -8.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.97,   2.45,  -6.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  3.97,   2.45,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -3.97,   2.45,  -6.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -3.97,   2.45,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  3.97,  -2.45,  -6.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  3.97,  -2.45,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -3.97,  -2.45,  -6.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -3.97,  -2.45,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -1.52,   3.97,  -2.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  1.52,   3.97,  -2.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -1.52,  -3.97,  -2.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  1.52,  -3.97,  -2.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -1.52,   3.97,  -7.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  1.52,   3.97,  -7.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -1.52,  -3.97,  -7.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  1.52,  -3.97,  -7.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
