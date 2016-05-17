#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.52*x up 12.52*y
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

atom(< -2.91,  -2.91,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.40,  -2.48,  -1.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.48,  -0.40,  -1.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.00,   0.00,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  0.00,   0.00,  -2.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.48,   0.40,  -1.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.40,   2.48,  -1.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.90,   2.90,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -4.77,  -0.82,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.94,  -0.87,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.45,  -0.42,  -4.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.51,   1.63,  -4.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.09,   2.09,  -2.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.03,   2.03,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.42,   2.45,  -4.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.63,   4.51,  -4.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  0.82,   4.77,  -2.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  0.87,   4.94,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.51,   1.63,  -7.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.95,   3.95,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -1.63,   4.51,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -0.82,  -4.77,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -0.87,  -4.94,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  1.63,  -4.51,  -4.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.42,  -2.45,  -4.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.09,  -2.09,  -2.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  2.03,  -2.03,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  4.51,  -1.63,  -4.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  2.45,   0.42,  -4.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  4.77,   0.82,  -2.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  4.94,   0.87,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.95,  -2.95,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.90,  -2.90,  -8.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -0.42,  -2.45,  -7.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -2.45,  -0.42,  -7.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.00,   0.00,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -0.00,  -0.00,  -8.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.45,   0.42,  -7.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  0.42,   2.45,  -7.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  2.95,   2.95,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.91,   2.91,  -8.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -4.77,  -0.82,  -8.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.48,  -0.40,  -9.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -2.09,   2.09,  -8.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  0.40,   2.48,  -9.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  0.82,   4.77,  -8.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  1.63,  -4.51,  -7.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  3.95,  -3.95,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.51,  -1.63,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -0.82,  -4.77,  -8.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -0.40,  -2.48,  -9.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  2.09,  -2.09,  -8.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  2.48,   0.40,  -9.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  4.77,   0.82,  -8.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  0.00,   0.00, -11.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
