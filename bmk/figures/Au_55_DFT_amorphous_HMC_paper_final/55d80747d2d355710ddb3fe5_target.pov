#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.26*x up 12.55*y
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

atom(< -3.26,   4.30,  -6.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.08,   1.95,  -3.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  4.70,   1.79,  -2.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -0.04,   0.85,  -7.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.75,   0.99,  -9.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  4.38,  -0.96,  -3.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  1.23,   2.35,  -5.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  0.47,  -0.90,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -1.83,  -0.14,  -4.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -0.11,  -3.07,  -8.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  1.05,   3.51,  -8.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  0.34,   1.89,  -0.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.87,  -4.40,  -2.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -4.82,  -2.70,  -5.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  2.37,   3.24,  -1.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  3.61,   2.65,  -7.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -3.68,   0.16,  -2.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  0.29,  -0.78, -10.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -1.73,   4.37,  -3.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  1.62,  -3.45,  -6.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  2.76,   0.68,  -0.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  4.82,   0.98,  -5.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.52,   2.08,  -5.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  2.29,   4.96,  -6.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.17,   4.32,  -1.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -4.60,  -0.15,  -4.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -0.35,   1.95, -10.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  4.36,   0.08,  -7.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -3.05,  -4.60,  -5.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -3.74,   2.33,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -1.90,  -1.98,  -1.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -1.70,  -1.13,  -6.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -3.71,  -2.37,  -3.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -1.83,   3.43,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  1.10,   4.78,  -3.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -1.97,   0.44,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  2.58,  -3.09,  -3.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -4.31,  -0.83,  -7.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  3.60,  -1.55,  -5.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.61,   3.46,  -4.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  0.51,  -3.46,  -1.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  0.47,  -0.90,  -2.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.27,  -1.69,  -9.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  2.31,   1.12,  -9.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -2.35,   2.60,  -1.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -2.86,  -3.58,  -7.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  2.38,   0.83,  -3.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  2.81,  -2.03,  -1.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -4.12,   1.79,  -6.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -0.48,   4.84,  -6.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  0.75,  -0.57,  -5.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -0.88,  -2.70,  -4.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  2.18,  -1.53,  -8.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  0.59,  -4.96,  -3.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -0.70,  -4.92,  -6.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
