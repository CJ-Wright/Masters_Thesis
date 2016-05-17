#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.10*x up 11.34*y
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

atom(< -4.30,  -1.94,  -7.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -2.29,  -4.35,  -7.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -1.97,  -1.86,  -9.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -4.74,  -3.83,  -5.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -4.27,  -1.72,  -3.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -2.13,  -3.86,  -3.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.29,  -1.98,  -5.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -2.10,  -1.83,  -1.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -4.58,  -0.13,  -9.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.56,   2.10,  -7.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.29,   0.06,  -7.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -2.30,   2.37,  -9.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -4.33,   0.06,  -5.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -4.30,   1.74,  -3.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -2.29,   0.06,  -3.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.29,   2.10,  -5.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -3.95,   0.13,  -1.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -2.64,   1.90,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -2.49,   4.23,  -7.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -4.52,   4.38,  -5.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -2.34,   4.14,  -3.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -0.30,  -3.82,  -9.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -0.25,  -1.98,  -7.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  1.72,  -4.17,  -7.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  1.82,  -2.19,  -9.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -0.02,  -4.38,  -5.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -0.25,  -1.98,  -3.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  1.34,  -4.00,  -3.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  1.79,  -1.98,  -5.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -0.11,  -4.14,  -1.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  1.99,  -2.02,  -1.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -0.08,   0.06,  -9.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -0.25,   2.10,  -7.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  1.79,   0.06,  -7.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  1.82,   2.40,  -9.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.25,   0.06,  -5.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -0.25,   2.10,  -3.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  1.79,   0.06,  -3.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  1.79,   2.10,  -5.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -0.31,   0.24,  -1.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  1.87,   1.74,  -1.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -0.29,   3.79,  -9.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  1.75,   4.28,  -7.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -0.11,   4.35,  -5.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  1.80,   4.13,  -3.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -0.51,   3.87,  -1.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  3.75,  -2.13,  -7.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  3.08,  -3.89,  -5.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.38,  -1.67,  -3.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  3.50,  -0.29, -10.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  4.48,   2.05,  -9.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  3.57,   0.02,  -5.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  3.88,   1.98,  -3.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  4.07,  -0.17,  -1.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  4.74,   4.32,  -5.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
