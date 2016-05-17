#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -14.78*x up 15.18*y
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

atom(< -6.02,   0.17,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -3.77,  -1.89,  -5.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -3.76,   0.35,  -8.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -3.97,   0.10,  -3.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -4.03,   1.85,  -6.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -2.15,  -4.09,  -5.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -0.18,  -6.21,  -5.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -0.04,  -3.87,  -8.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.11,  -3.86,  -4.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -1.96,   0.07, -10.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -0.12,  -1.48,  -9.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -0.21,   0.36, -12.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.00,  -2.24,  -8.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.04,   0.19,  -5.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.00,  -1.85,  -5.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  0.00,   0.19,  -7.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -1.97,  -2.20,  -3.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -2.12,   0.06,  -1.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.21,  -1.66,  -1.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  0.00,   0.19,  -3.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -0.10,   0.16,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -0.24,   2.40,  -9.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -2.05,   2.43,  -7.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -2.17,   4.35,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.00,   2.23,  -5.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.17,   4.29,  -8.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -2.02,   1.84,  -3.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  0.07,   2.53,  -1.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -0.16,   4.17,  -3.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  0.07,   6.21,  -5.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  2.06,  -3.69,  -6.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  1.98,   0.12, -10.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  2.10,  -1.79,  -7.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  2.04,   0.19,  -5.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  4.01,  -2.01,  -5.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  4.16,   0.57,  -7.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  2.09,  -1.86,  -4.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.04,   0.21,  -1.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  4.04,   0.25,  -3.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  1.81,   2.46,  -7.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.20,   4.09,  -5.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  3.80,   2.35,  -5.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  1.84,   2.12,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  6.02,  -0.12,  -5.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
