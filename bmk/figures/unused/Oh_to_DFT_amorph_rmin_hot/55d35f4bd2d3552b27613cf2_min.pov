#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.05*x up 13.75*y
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

atom(< -5.19,   0.82,  -6.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -4.27,  -1.81,  -6.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -3.59,  -2.59,  -4.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -3.59,  -4.47,  -6.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -1.58,  -2.53,  -6.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -0.87,  -5.20,  -6.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -1.67,  -4.57,  -4.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  1.24,  -5.07,  -4.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -4.56,   0.06,  -3.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -2.64,   2.06,  -3.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -1.91,  -0.56,  -4.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -2.89,  -0.06,  -1.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.55,  -2.48,  -2.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.13,  -0.06,  -2.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.27,  -2.51,  -4.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -0.06,  -1.11,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  0.44,  -4.45,  -2.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  1.70,  -2.04,  -1.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.08,   2.80,  -2.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -0.81,   1.58,  -0.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  1.89,   0.80,  -1.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -4.25,   0.11,  -9.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -2.47,   2.28,  -8.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -2.17,   0.41, -11.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -2.27,   0.20,  -7.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -1.53,  -3.87,  -9.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -0.64,  -0.98,  -9.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  0.77,  -3.40, -10.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  0.77,  -2.94,  -7.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  0.96,  -5.53,  -8.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  3.14,  -3.42,  -9.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -3.16,   2.68,  -6.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -0.05,   5.53,  -6.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  0.07,   1.41,  -7.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -0.61,   1.77,  -5.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.25,  -0.68,  -6.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  2.08,   1.37,  -6.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.86,  -1.08,  -7.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  2.35,  -0.70,  -4.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.31,  -3.77,  -6.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  4.77,  -1.72,  -5.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -1.40,   4.27,  -4.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  1.24,   3.85,  -5.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  2.80,   2.28,  -3.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  5.01,   0.81,  -4.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  4.36,  -1.34,  -2.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  0.54,   1.31, -10.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -0.06,  -1.11, -11.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  2.04,  -1.00, -10.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -0.23,   3.80,  -9.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  1.99,   3.76,  -7.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  2.79,   1.30,  -8.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  5.19,   0.56,  -6.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  4.63,  -0.82,  -9.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  3.91,   3.32,  -5.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
