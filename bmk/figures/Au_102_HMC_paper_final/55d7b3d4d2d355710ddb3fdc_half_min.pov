#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -16.91*x up 14.58*y
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

atom(< -5.25,  -3.43,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -7.03,  -1.42,  -1.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -4.60,  -0.02,  -1.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -6.45,   1.48,  -0.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -6.54,  -4.38,  -2.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -1.86,  -4.71,  -5.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -4.53,  -4.21,  -4.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -1.13,  -5.28,  -3.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -3.42,   2.01,  -3.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -1.81,   0.96,  -6.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -1.85,   3.77,  -5.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -5.62,  -1.92,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.53,  -2.44,  -2.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -1.83,   0.56,  -1.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.27,  -4.19,  -0.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -3.13,   5.10,  -0.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -2.47,   4.49,  -2.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -3.88,   2.55,  -1.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -1.11,   3.12,  -0.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -0.53,   5.92,  -1.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -0.73,  -1.64,  -6.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  0.31,  -3.16,  -4.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  1.88,  -1.30,  -8.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  0.66,  -5.92,  -5.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  3.22,  -5.64,  -2.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  3.39,  -3.25,  -3.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -0.45,   2.45,  -3.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  2.20,   1.37,  -6.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -0.09,  -0.32,  -4.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  2.26,  -1.10,  -2.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  2.29,  -1.22,  -5.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  2.27,   1.31,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  1.04,  -3.70,  -1.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  6.63,  -4.38,  -1.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  4.97,  -1.87,  -1.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.10,   5.40,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  1.48,   4.04,  -2.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.13,   3.85,  -5.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  0.94,   1.21,  -1.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.97,   1.10,  -1.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  4.17,   5.14,  -0.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  2.47,  -3.75,  -6.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  4.62,   2.16,  -5.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  4.55,  -0.17,  -7.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  4.60,  -0.41,  -4.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  5.09,  -2.67,  -5.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  7.03,  -2.32,  -3.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  4.13,   3.52,  -2.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  6.05,   3.02,  -0.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  6.36,   1.68,  -3.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
