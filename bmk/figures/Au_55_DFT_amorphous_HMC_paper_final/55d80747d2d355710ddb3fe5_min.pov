#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.05*x up 12.27*y
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

atom(< -3.70,  -3.61,  -7.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -1.99,  -4.29,  -5.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -4.40,  -3.08,  -5.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -2.58,  -3.41,  -2.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -1.50,  -1.60,  -4.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -0.52,  -1.77,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -3.07,  -0.58,  -2.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -1.31,  -0.07,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -5.13,  -1.49,  -8.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -3.68,   0.64, -10.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -3.15,  -0.92,  -6.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -5.19,   0.95,  -7.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -4.46,   0.87,  -4.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.34,   1.82,  -6.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.81,   1.47,  -4.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -3.81,   3.47,  -3.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -2.68,   1.91,  -1.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -1.01,   3.65,  -2.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.14,   3.14,  -8.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -4.52,   3.32,  -6.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -1.93,   4.30,  -5.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -1.25,  -4.82,  -8.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  0.10,  -2.94,  -9.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  0.89,  -4.49,  -6.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.71,  -2.27,  -7.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.06,  -3.96,  -3.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  1.17,  -2.00,  -5.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  2.89,  -2.16,  -2.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  0.61,   0.17,  -3.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  1.37,  -0.00,  -1.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  3.42,   0.49,  -2.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.45,  -1.88,  -9.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  1.34,  -0.61, -10.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  1.64,  -0.96,  -7.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -0.76,   0.35,  -8.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.17,   0.26,  -6.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  1.34,   1.99,  -7.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.56,   0.56,  -5.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  0.58,   2.68,  -5.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  1.50,   2.49,  -2.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  3.47,   2.94,  -4.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -1.31,  -0.07, -11.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  0.77,   2.15, -10.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -1.81,   4.38,  -8.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  2.51,   4.57,  -6.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  1.52,   4.82,  -3.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  3.21,  -3.01,  -6.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  2.73,  -4.04,  -4.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.09,  -1.67,  -4.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  2.96,  -2.79,  -9.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  3.26,   0.91,  -9.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  4.45,  -0.52,  -7.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  4.03,   2.33,  -7.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  5.19,   0.88,  -5.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  2.87,   3.67,  -9.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
