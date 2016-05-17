#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.06*x up 12.65*y
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

atom(< -4.50,  -2.82,  -6.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -2.35,  -4.04,  -5.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -4.33,  -2.31,  -4.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -2.53,  -3.66,  -2.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -1.27,  -1.81,  -3.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  0.21,  -3.99,  -2.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -3.30,  -0.98,  -1.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  1.27,  -0.35,  -0.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -5.20,  -0.30,  -5.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -5.08,   1.82,  -7.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -3.03,   0.06,  -4.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.49,   2.44,  -5.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -3.47,   1.65,  -2.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -1.62,   2.56,  -4.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -0.72,   0.65,  -2.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.43,   3.35,  -1.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -0.92,   1.26,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  1.16,   2.40,  -1.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -2.46,   4.59,  -6.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.53,   4.35,  -3.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  0.03,   4.83,  -4.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -2.27,  -4.47,  -7.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.47,  -2.39,  -9.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  0.12,  -4.65,  -8.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -1.79,  -1.81,  -6.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.31,  -5.00,  -5.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  1.10,  -1.49,  -7.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  2.72,  -3.77,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  1.36,  -0.94,  -3.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  2.13,  -2.91,  -1.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  4.21,  -1.53,  -3.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -3.56,  -0.57,  -8.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -0.92,   1.26, -11.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -0.70,   0.12,  -8.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -2.48,   1.63,  -7.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.40,   0.24,  -5.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  1.42,   1.64,  -7.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.54,   0.20,  -5.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  1.28,   1.99,  -4.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.22,   0.81,  -2.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  4.13,   2.37,  -4.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -3.37,   3.97,  -8.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -0.57,   2.89,  -9.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  0.08,   5.00,  -7.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  2.27,   3.98,  -5.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  2.53,   4.20,  -3.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  2.63,  -2.47,  -9.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  2.49,  -4.13,  -7.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  3.70,  -2.17,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  0.61,  -1.18, -10.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  1.50,   1.30,  -9.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  3.31,  -0.11,  -8.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  4.09,   2.43,  -7.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  5.20,   0.17,  -6.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  2.09,   3.78,  -8.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
