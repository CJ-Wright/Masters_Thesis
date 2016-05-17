#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.96*x up 10.78*y
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

atom(<  1.20,   4.12,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.31,   1.37,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -0.59,  -1.37,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -1.48,  -4.12,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  2.67,   2.12,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  1.78,  -0.62,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.89,  -3.37,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  0.02,   2.98,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.87,   0.24,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -1.77,  -2.51,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -1.62,   3.52,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -2.52,   0.77,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -3.41,  -1.97,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  0.02,   2.98,  -8.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -0.87,   0.24,  -8.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.77,  -2.51,  -8.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  2.67,   2.12,  -7.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  1.78,  -0.62,  -7.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.89,  -3.37,  -7.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  4.15,   0.12,  -3.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  3.26,  -2.62,  -3.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  1.49,   0.99,  -2.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  0.60,  -1.76,  -2.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -1.16,   1.85,  -1.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -2.05,  -0.89,  -1.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -2.80,   2.38,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -3.70,  -0.36,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -4.45,   2.92,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -5.34,   0.17,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -2.80,   2.38,  -8.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -3.70,  -0.36,  -8.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -1.16,   1.85, -10.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.05,  -0.89, -10.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  1.49,   0.99, -10.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  0.60,  -1.76, -10.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  4.15,   0.12,  -9.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  3.26,  -2.62,  -9.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  4.15,   0.12,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  3.26,  -2.62,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  2.97,  -1.01,  -0.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  0.31,  -0.15,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -3.99,   1.25,  -1.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -5.63,   1.78,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -5.63,   1.78,  -8.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -3.99,   1.25, -10.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  0.31,  -0.15, -12.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  2.97,  -1.01, -11.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  5.63,  -1.87,  -7.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  5.63,  -1.87,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
