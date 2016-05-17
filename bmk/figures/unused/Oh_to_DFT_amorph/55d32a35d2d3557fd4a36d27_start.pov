#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.71*x up 11.91*y
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

atom(< -3.92,  -2.67,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -2.57,  -4.29,  -5.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -4.38,  -2.13,  -4.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -2.94,  -3.61,  -2.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -1.51,  -1.85,  -3.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -0.19,  -3.48,  -1.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.00,  -1.32,  -1.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  0.89,  -1.04,  -0.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -5.51,  -0.53,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.18,   1.31,  -7.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.83,  -0.27,  -5.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.65,   1.85,  -5.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -3.38,   0.27,  -2.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -1.77,   2.12,  -4.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -0.46,   0.54,  -2.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.26,   2.66,  -1.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -0.89,   1.04,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  0.62,   2.94,  -1.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -3.10,   3.74,  -6.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.45,   4.12,  -3.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -0.72,   4.55,  -3.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -2.05,  -4.65,  -7.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -0.62,  -2.94,  -9.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  0.72,  -4.55,  -7.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -1.05,  -2.39,  -6.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.27,  -4.08,  -4.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  1.77,  -2.12,  -6.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  3.10,  -3.74,  -4.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  1.32,  -1.58,  -3.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  2.57,  -3.08,  -1.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  4.18,  -1.31,  -2.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.44,  -0.83,  -8.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -0.89,   1.04, -10.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  0.46,  -0.54,  -8.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -1.32,   1.58,  -7.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.00,   0.00,  -5.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  1.51,   1.85,  -7.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.83,   0.27,  -5.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  1.05,   2.39,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  2.44,   0.83,  -2.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  3.92,   2.67,  -3.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -2.57,   3.08,  -9.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  0.19,   3.48,  -9.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -0.27,   4.08,  -6.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  2.57,   4.29,  -5.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  2.05,   4.65,  -3.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  2.26,  -2.66,  -9.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  3.45,  -4.12,  -6.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.65,  -1.85,  -5.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  0.89,  -1.04, -10.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  2.00,   1.32,  -9.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  3.38,  -0.27,  -7.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  4.38,   2.13,  -6.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  5.51,   0.53,  -4.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  2.94,   3.61,  -8.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
