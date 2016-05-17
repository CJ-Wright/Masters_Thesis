#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.15*x up 12.36*y
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

atom(< -3.38,  -1.42,  -1.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.77,  -1.61,  -3.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  5.24,   0.24,  -3.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -1.55,   2.43,  -3.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -4.62,   2.23,  -3.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  4.62,   1.23,  -6.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.61,   1.04,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.86,  -3.30,  -7.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -1.26,  -1.19,  -5.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -2.03,   3.90,  -7.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -0.90,   2.88,  -1.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  2.63,  -3.78,  -4.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -0.54,  -1.51, -10.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -4.73,  -0.68,  -8.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  3.59,  -1.80,  -2.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  1.87,   3.41,  -1.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -1.79,  -3.86,  -6.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -2.46,   4.87,  -4.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -0.88,  -2.58,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  0.59,   3.03,  -8.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  4.43,  -1.86,  -5.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  3.93,   2.74,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.78,  -0.24,  -3.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  1.22,   1.48,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  1.64,  -3.66,  -1.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -4.01,  -1.96,  -6.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -3.09,   4.09,  -2.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  2.20,   4.85,  -4.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -2.82,  -0.01, -10.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -2.78,  -2.86,  -3.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  0.17,  -3.21,  -8.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.51,   1.28,  -6.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.48,  -2.29,  -8.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -3.33,   1.38,  -1.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  1.49,  -1.13,  -0.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.79,  -4.87,  -6.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  2.77,   1.27,  -8.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -5.24,   0.70,  -6.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  2.59,   3.14,  -6.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.33,   0.91,  -1.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.04,  -1.37,  -9.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  1.43,  -1.02,  -6.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -4.44,   3.42,  -6.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -0.33,   4.83,  -3.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -0.34,  -4.22,  -3.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -3.99,   1.99,  -8.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  2.60,   0.34,  -4.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  4.28,  -0.97,  -7.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -4.58,  -0.57,  -3.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -1.09,   0.02,  -0.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  0.25,   1.33,  -5.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -0.71,   0.27,  -8.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  0.12,   4.44,  -5.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  0.83,   1.03, -10.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -1.55,   2.43,  -9.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
