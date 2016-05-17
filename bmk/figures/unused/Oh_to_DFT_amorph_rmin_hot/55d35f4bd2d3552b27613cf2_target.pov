#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.46*x up 12.28*y
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

atom(< -2.57,  -3.33,  -2.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.72,  -2.03,  -5.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  5.39,  -0.75,  -5.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -0.70,   1.29,  -2.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -3.62,   1.09,  -1.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  4.37,   1.58,  -6.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  1.35,  -0.55,  -3.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  1.56,  -1.40,  -9.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -1.60,  -0.46,  -6.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -1.74,   4.66,  -4.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  0.68,  -0.05,  -0.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  1.90,  -3.42,  -7.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.05,   1.93, -10.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -5.39,   1.46,  -6.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  3.65,  -2.97,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  3.23,   0.81,  -1.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -2.73,  -2.39,  -7.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -1.34,   3.89,  -1.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -0.50,  -4.14,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  0.42,   4.31,  -6.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  3.80,  -1.44,  -7.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  4.59,   1.38,  -4.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.30,  -1.21,  -3.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  2.68,  -1.86,  -0.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  1.59,  -4.83,  -5.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -4.41,  -0.95,  -5.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -1.46,   1.71,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  3.28,   3.33,  -2.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -3.88,   3.05,  -8.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -2.87,  -3.06,  -5.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -1.23,  -0.67,  -9.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.40,   1.76,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -3.59,   0.19,  -8.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -2.02,  -0.97,  -0.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  2.22,  -3.46,  -3.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.47,  -3.24,  -9.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  2.11,   2.92,  -8.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -5.05,   1.21,  -4.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  2.81,   3.21,  -5.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  4.16,  -1.33,  -3.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  0.65,   1.43, -10.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  0.80,   0.10,  -7.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -3.80,   3.51,  -2.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  1.14,   2.69,  -0.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -0.85,  -4.13,  -6.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -4.21,   3.73,  -5.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  2.67,  -0.09,  -5.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  3.23,   0.81,  -9.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -4.11,  -1.23,  -3.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  0.09,  -2.73,  -1.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  0.37,   1.43,  -5.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -1.34,   2.05,  -7.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  0.81,   4.05,  -3.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -0.24,   3.93,  -9.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -2.12,   4.83,  -7.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
