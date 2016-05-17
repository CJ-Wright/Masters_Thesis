#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -8.20*x up 8.48*y
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

atom(<  2.28,   0.59,  -0.81>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #0 
atom(<  3.23,   0.16,  -1.90>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #1 
atom(<  1.45,  -0.27,  -0.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #2 
atom(<  3.16,  -1.17,  -2.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #3 
atom(<  3.25,  -1.55,  -3.81>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #4 
atom(<  3.24,   1.18,  -2.83>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #5 
atom(<  3.32,   0.87,  -4.12>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #6 
atom(<  3.33,  -0.42,  -4.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #7 
atom(< -0.44,   1.38,  -0.36>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #8 
atom(<  0.52,   2.28,  -0.91>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #9 
atom(< -0.02,   0.18,   0.00>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #10 
atom(<  1.76,   1.97,  -1.23>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #11 
atom(<  2.45,   2.23,  -2.47>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #12 
atom(< -0.21,   3.14,  -1.84>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #13 
atom(<  0.37,   3.47,  -3.12>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #14 
atom(<  1.70,   3.06,  -3.26>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #15 
atom(< -2.07,  -0.93,  -0.83>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #16 
atom(< -2.55,   0.46,  -1.13>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #17 
atom(< -0.79,  -0.99,  -0.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #18 
atom(< -1.72,   1.60,  -0.84>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #19 
atom(< -1.62,   2.64,  -1.91>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #20 
atom(< -3.33,   0.48,  -2.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #21 
atom(< -3.16,   1.52,  -3.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #22 
atom(< -2.34,   2.61,  -2.96>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #23 
atom(< -0.47,  -2.90,  -1.86>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #24 
atom(< -1.72,  -2.76,  -2.33>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #25 
atom(< -0.01,  -2.23,  -0.73>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #26 
atom(< -2.54,  -1.64,  -1.91>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #27 
atom(< -3.33,  -0.95,  -2.79>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #28 
atom(< -1.65,  -3.10,  -3.69>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #29 
atom(< -2.36,  -2.26,  -4.68>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #30 
atom(< -3.21,  -1.24,  -4.27>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #31 
atom(<  2.23,  -2.08,  -1.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #32 
atom(<  1.74,  -3.04,  -2.78>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #33 
atom(<  1.33,  -1.72,  -0.73>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #34 
atom(<  0.46,  -3.31,  -2.75>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #35 
atom(< -0.29,  -3.47,  -4.10>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #36 
atom(<  2.38,  -2.57,  -3.87>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #37 
atom(<  1.66,  -2.62,  -5.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #38 
atom(<  0.24,  -3.02,  -5.15>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #39 
atom(< -2.14,  -0.63,  -6.12>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #40 
atom(< -1.81,  -1.88,  -5.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #41 
atom(< -0.48,  -2.32,  -6.14>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #42 
atom(< -1.32,   0.25,  -6.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #43 
atom(< -2.20,   2.13,  -5.36>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #44 
atom(< -2.98,   1.13,  -4.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #45 
atom(< -3.04,  -0.21,  -5.14>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #46 
atom(< -1.21,   1.61,  -6.31>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #47 
atom(<  0.55,   3.04,  -5.38>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #48 
atom(< -0.43,   3.45,  -4.26>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #49 
atom(< -1.66,   3.01,  -4.31>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #50 
atom(<  0.10,   2.16,  -6.35>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #51 
atom(<  2.26,   0.88,  -6.26>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #52 
atom(<  2.67,   1.69,  -5.11>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #53 
atom(<  1.90,   2.74,  -4.67>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #54 
atom(<  0.94,   1.10,  -6.66>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #55 
atom(<  0.47,  -1.39,  -6.78>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #56 
atom(<  1.74,  -1.57,  -6.13>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #57 
atom(<  2.62,  -0.43,  -5.88>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #58 
atom(<  0.14,  -0.08,  -6.90>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #59 
