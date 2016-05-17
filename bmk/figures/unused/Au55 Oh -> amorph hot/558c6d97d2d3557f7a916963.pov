#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -11.99*x up 11.90*y
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

atom(< -1.33,  -1.85,  -9.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -1.17,  -4.42,  -8.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -3.16,  -2.64,  -7.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -3.77,  -3.75,  -5.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -1.75,  -1.84,  -5.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -1.95,  -4.28,  -3.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -3.80,  -2.25,  -2.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -1.59,  -2.63,  -1.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -3.92,  -1.10,  -9.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -1.87,   2.56,  -8.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.19,  -0.05,  -7.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.17,   1.96,  -6.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -4.16,  -0.75,  -5.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.05,   0.90,  -5.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.65,  -0.24,  -2.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -3.87,   2.02,  -3.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -3.39,  -0.61,  -0.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -2.27,   1.89,  -1.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -2.27,   3.52,  -5.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -4.69,   4.59,  -4.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -2.42,   4.22,  -3.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  0.69,  -3.65, -10.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  2.14,  -1.75,  -9.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  1.61,  -3.94,  -7.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.12,  -1.76,  -7.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -0.56,  -3.98,  -5.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  1.86,  -2.37,  -4.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  2.80,  -3.57,  -2.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  0.72,  -1.67,  -2.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  0.80,  -4.06,  -0.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  2.94,  -2.18,  -0.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  0.17,   0.40,  -9.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  1.30,   2.94,  -8.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  2.03,  -0.03,  -7.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  0.02,   2.00,  -6.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.52,  -0.11,  -4.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  2.26,   2.14,  -5.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.98,  -0.63,  -2.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -0.38,   2.29,  -3.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  1.79,   0.15,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.36,   2.31,  -1.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -0.44,   4.65,  -7.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  2.19,   4.41,  -6.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  0.10,   4.60,  -4.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  2.26,   4.00,  -3.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -0.14,   3.91,  -1.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  3.85,  -2.25,  -6.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  3.33,  -4.65,  -5.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.69,  -2.52,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  2.86,   0.89,  -9.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  3.67,   2.17,  -7.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  3.86,   0.01,  -5.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  4.42,   1.91,  -3.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  4.43,   0.39,  -0.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  4.51,   3.64,  -5.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
