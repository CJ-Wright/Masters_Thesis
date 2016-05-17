#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -8.25*x up 8.49*y
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

atom(<  2.34,   0.58,  -0.78>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #0 
atom(<  3.34,   0.14,  -1.91>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #1 
atom(<  1.56,  -0.23,  -0.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #2 
atom(<  3.23,  -1.20,  -2.36>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #3 
atom(<  3.29,  -1.65,  -3.90>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #4 
atom(<  3.25,   1.13,  -2.81>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #5 
atom(<  3.31,   0.80,  -4.05>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #6 
atom(<  3.36,  -0.42,  -4.79>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #7 
atom(< -0.43,   1.38,  -0.42>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #8 
atom(<  0.58,   2.25,  -0.92>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #9 
atom(< -0.01,   0.27,   0.00>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #10 
atom(<  1.74,   2.01,  -1.28>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #11 
atom(<  2.50,   2.13,  -2.53>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #12 
atom(< -0.17,   3.17,  -1.84>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #13 
atom(<  0.40,   3.45,  -3.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #14 
atom(<  1.70,   3.04,  -3.21>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #15 
atom(< -2.02,  -1.02,  -0.81>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #16 
atom(< -2.54,   0.42,  -1.10>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #17 
atom(< -0.70,  -0.95,  -0.36>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #18 
atom(< -1.70,   1.61,  -0.80>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #19 
atom(< -1.61,   2.63,  -1.96>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #20 
atom(< -3.36,   0.52,  -2.26>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #21 
atom(< -3.13,   1.57,  -3.28>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #22 
atom(< -2.34,   2.63,  -2.89>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #23 
atom(< -0.43,  -2.82,  -1.99>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #24 
atom(< -1.64,  -2.76,  -2.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #25 
atom(<  0.03,  -2.33,  -0.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #26 
atom(< -2.49,  -1.57,  -1.94>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #27 
atom(< -3.34,  -0.98,  -2.75>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #28 
atom(< -1.59,  -3.13,  -3.67>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #29 
atom(< -2.32,  -2.21,  -4.71>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #30 
atom(< -3.19,  -1.26,  -4.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #31 
atom(<  2.28,  -2.07,  -1.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #32 
atom(<  1.76,  -3.12,  -2.80>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #33 
atom(<  1.35,  -1.76,  -0.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #34 
atom(<  0.51,  -3.22,  -2.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #35 
atom(< -0.24,  -3.47,  -4.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #36 
atom(<  2.41,  -2.57,  -3.75>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #37 
atom(<  1.68,  -2.60,  -5.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #38 
atom(<  0.22,  -2.97,  -5.11>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #39 
atom(< -2.06,  -0.67,  -6.05>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #40 
atom(< -1.84,  -1.86,  -5.65>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #41 
atom(< -0.50,  -2.35,  -6.13>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #42 
atom(< -1.31,   0.17,  -6.75>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #43 
atom(< -2.22,   2.15,  -5.41>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #44 
atom(< -2.87,   1.09,  -4.75>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #45 
atom(< -2.96,  -0.28,  -5.13>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #46 
atom(< -1.11,   1.53,  -6.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #47 
atom(<  0.60,   3.07,  -5.44>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #48 
atom(< -0.46,   3.47,  -4.25>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #49 
atom(< -1.62,   3.02,  -4.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #50 
atom(<  0.15,   2.17,  -6.39>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #51 
atom(<  2.39,   0.90,  -6.31>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #52 
atom(<  2.73,   1.64,  -5.07>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #53 
atom(<  1.99,   2.70,  -4.63>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #54 
atom(<  0.99,   1.14,  -6.57>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #55 
atom(<  0.50,  -1.43,  -6.82>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #56 
atom(<  1.73,  -1.57,  -6.11>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #57 
atom(<  2.67,  -0.40,  -5.88>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #58 
atom(<  0.24,  -0.10,  -6.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #59 
