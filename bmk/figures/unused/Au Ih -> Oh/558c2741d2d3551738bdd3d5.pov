#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.01*x up 12.79*y
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

atom(< -0.01,  -0.03,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.04,  -0.21,  -2.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  2.61,  -0.18,  -4.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.60,   2.46,  -4.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.13,   1.50,  -4.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -2.15,  -1.69,  -4.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.64,  -2.54,  -4.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.15,  -1.41,  -7.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  2.24,   1.49,  -6.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -0.88,   2.53,  -6.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.60,   0.23,  -7.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -0.51,  -2.50,  -7.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -0.25,   0.02,  -8.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.69,   0.05,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  5.17,  -0.35,  -3.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  1.19,   4.97,  -3.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.21,   2.69,  -3.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -4.39,  -2.61,  -2.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  1.31,  -5.07,  -3.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  4.28,  -2.80,  -8.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  4.65,   3.63,  -8.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -1.60,   5.07,  -7.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -5.17,   0.50,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -1.72,  -4.91,  -8.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.08,   0.35, -11.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.52,   0.42,  -1.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  0.42,   2.34,  -1.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -2.05,   1.53,  -1.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -1.84,  -2.08,  -1.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  0.98,  -2.60,  -1.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  3.67,   2.13,  -3.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  3.03,  -2.81,  -3.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  4.74,  -1.56,  -5.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  4.82,   1.29,  -5.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -1.53,   3.88,  -3.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  2.66,   4.19,  -5.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  0.33,   4.95,  -5.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -4.38,  -0.16,  -3.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -2.95,   4.03,  -5.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -4.73,   1.54,  -5.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -1.42,  -4.24,  -3.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -4.89,  -1.34,  -5.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.78,  -4.17,  -5.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  2.47,  -4.84,  -5.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -0.01,  -5.00,  -5.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  4.36,   0.07,  -8.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  1.67,  -4.11,  -8.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  1.91,  -1.99,  -9.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  1.45,   4.14,  -8.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  1.76,   1.77,  -9.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -3.33,   2.75,  -8.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -0.97,   2.52,  -9.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -3.37,  -2.51,  -8.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -2.81,  -0.33,  -9.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -0.91,  -2.46, -10.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
