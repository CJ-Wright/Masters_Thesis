#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.69*x up 12.93*y
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

atom(< -5.00,   0.17,  -5.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -4.16,  -2.53,  -6.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -4.37,  -1.84,  -3.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -3.43,  -4.34,  -4.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -1.76,  -2.23,  -5.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -0.96,  -4.91,  -5.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -1.17,  -4.22,  -2.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  1.46,  -4.64,  -4.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -5.02,   0.79,  -3.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -3.44,   3.08,  -3.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.58,   0.41,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -2.81,   1.07,  -1.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.02,  -1.60,  -2.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.20,   0.67,  -2.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.61,  -1.96,  -3.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  0.40,  -1.31,  -0.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  1.20,  -3.83,  -1.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  3.03,  -1.73,  -1.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -1.01,   3.35,  -1.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -0.40,   1.31,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  2.19,   0.97,  -1.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -4.62,  -0.52,  -8.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -3.03,   1.73,  -9.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -2.19,  -0.97,  -9.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -2.38,  -0.26,  -7.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -1.60,  -2.99,  -7.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  0.20,  -0.67,  -8.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  1.01,  -3.35,  -9.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  0.82,  -2.64,  -6.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  1.59,  -5.14,  -6.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  3.44,  -3.08,  -7.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -3.29,   2.44,  -6.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -1.46,   4.64,  -6.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -0.61,   1.96,  -7.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -0.82,   2.64,  -4.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.00,  -0.00,  -5.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  1.76,   2.23,  -5.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.58,  -0.41,  -6.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  2.38,   0.26,  -3.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.29,  -2.44,  -4.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  5.00,  -0.17,  -5.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -1.59,   5.14,  -3.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  0.96,   4.91,  -5.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  1.60,   2.99,  -2.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  4.16,   2.53,  -4.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  4.62,   0.52,  -2.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -0.40,   1.31, -10.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  0.40,  -1.31, -10.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  2.81,  -1.07,  -9.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -1.20,   3.83,  -9.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  1.17,   4.22,  -7.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  2.02,   1.60,  -8.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  4.37,   1.84,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  5.02,  -0.79,  -7.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  3.43,   4.34,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
