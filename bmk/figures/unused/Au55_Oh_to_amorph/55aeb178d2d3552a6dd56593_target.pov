#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -11.79*x up 14.63*y
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

atom(<  0.83,   0.34,  -0.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.30,   5.22,  -5.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  2.45,   3.37,  -4.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -4.28,   1.53,  -4.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -0.40,   1.76,  -2.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -0.74,  -1.26,  -6.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -0.38,  -4.74,  -2.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.17,  -3.51,  -2.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  2.29,   2.07,  -2.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -1.70,   1.86,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  0.50,  -2.26,  -0.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  2.98,  -0.99,  -8.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -0.27,   2.42,  -9.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -4.29,  -0.58,  -3.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.36,   5.95,  -3.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -0.40,  -2.03,  -9.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -3.83,  -1.34,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  1.10,  -5.61,  -6.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  3.03,  -4.04,  -5.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  4.31,  -2.26,  -3.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  4.59,  -1.23,  -6.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -3.33,   1.87,  -2.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.96,   4.02,  -1.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  3.23,   1.28,  -6.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  2.74,  -1.02,  -1.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -1.79,  -0.56,  -1.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -1.96,  -2.31,  -3.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  1.42,  -5.81,  -4.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  0.95,   1.18,  -4.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -1.89,   0.37,  -4.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  0.48,   3.25,  -0.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  1.23,   3.17,  -7.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -3.95,   0.71,  -7.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -2.88,  -3.91,  -5.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -4.59,  -3.20,  -3.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.80,   4.24,  -2.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -2.96,   2.78,  -8.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -1.63,   3.20,  -4.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  2.15,  -1.34,  -5.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -1.13,  -5.95,  -5.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  0.40,  -0.96,  -3.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -1.34,   1.72,  -6.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.62,   5.73,  -5.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -3.91,   3.39,  -6.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -2.92,  -2.13,  -8.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  0.83,   0.34,  -7.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -3.80,   4.55,  -3.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -2.95,  -5.00,  -3.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -1.42,   4.36,  -7.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  0.17,  -3.55,  -4.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  1.44,  -3.06,  -7.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -1.00,  -4.20,  -7.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -2.26,  -3.07,  -1.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  3.69,   0.65,  -3.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -1.87,   0.21,  -8.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
