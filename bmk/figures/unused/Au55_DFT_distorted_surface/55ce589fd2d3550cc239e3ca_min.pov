#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.39*x up 12.56*y
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

atom(< -2.87,  -2.83,  -3.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.33,  -2.48,  -1.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.84,  -0.44,  -1.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -0.02,  -0.00,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  0.01,  -0.09,  -3.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.28,  -0.29,  -1.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.15,   2.48,  -1.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  3.05,   2.70,  -2.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -5.04,  -1.06,  -3.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -5.23,  -0.71,  -6.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.51,  -0.38,  -4.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.66,   1.75,  -4.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.98,   1.94,  -3.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.04,   2.08,  -5.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.48,   2.38,  -4.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.55,   4.69,  -4.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  1.22,   4.48,  -2.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  0.82,   4.96,  -5.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.39,   1.70,  -7.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.54,   3.96,  -5.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -1.52,   4.88,  -7.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -1.43,  -4.84,  -3.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.18,  -4.96,  -6.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  1.35,  -4.69,  -4.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.56,  -2.49,  -4.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  1.77,  -2.56,  -3.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  1.85,  -2.13,  -6.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  4.16,  -1.95,  -4.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  2.42,   0.27,  -4.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  4.75,   0.35,  -3.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  5.36,   0.92,  -5.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.92,  -2.93,  -6.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.88,  -2.43,  -8.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -0.66,  -2.42,  -7.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -2.60,  -0.31,  -7.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.09,  -0.02,  -5.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -0.19,   0.04,  -8.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.32,   0.33,  -7.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  0.38,   2.44,  -7.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  2.65,   2.53,  -5.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  3.06,   2.90,  -8.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -5.36,  -0.28,  -8.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.62,   0.02, -10.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -1.99,   2.39,  -8.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  0.58,   2.62, -10.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  0.79,   4.90,  -8.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  1.38,  -4.37,  -7.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  3.66,  -4.31,  -6.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.26,  -1.96,  -7.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -1.15,  -4.80,  -8.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -0.36,  -2.35, -10.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  1.98,  -2.59,  -9.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  2.19,   0.31, -10.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  4.62,   0.81,  -8.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -0.02,  -0.00, -11.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
