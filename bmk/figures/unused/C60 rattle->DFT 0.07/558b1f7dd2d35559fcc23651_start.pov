#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -8.22*x up 8.48*y
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

atom(<  2.30,   0.59,  -0.80>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #0 
atom(<  3.27,   0.15,  -1.90>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #1 
atom(<  1.50,  -0.25,  -0.31>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #2 
atom(<  3.19,  -1.18,  -2.35>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #3 
atom(<  3.27,  -1.58,  -3.84>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #4 
atom(<  3.24,   1.17,  -2.82>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #5 
atom(<  3.31,   0.85,  -4.09>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #6 
atom(<  3.34,  -0.41,  -4.75>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #7 
atom(< -0.44,   1.38,  -0.39>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #8 
atom(<  0.54,   2.27,  -0.92>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #9 
atom(< -0.02,   0.22,   0.00>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #10 
atom(<  1.75,   1.99,  -1.25>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #11 
atom(<  2.47,   2.19,  -2.49>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #12 
atom(< -0.20,   3.16,  -1.84>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #13 
atom(<  0.39,   3.46,  -3.15>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #14 
atom(<  1.70,   3.06,  -3.24>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #15 
atom(< -2.05,  -0.96,  -0.82>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #16 
atom(< -2.55,   0.45,  -1.12>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #17 
atom(< -0.76,  -0.97,  -0.33>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #18 
atom(< -1.72,   1.61,  -0.83>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #19 
atom(< -1.61,   2.64,  -1.93>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #20 
atom(< -3.34,   0.50,  -2.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #21 
atom(< -3.15,   1.54,  -3.29>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #22 
atom(< -2.34,   2.62,  -2.93>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #23 
atom(< -0.45,  -2.86,  -1.91>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #24 
atom(< -1.69,  -2.76,  -2.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #25 
atom(<  0.01,  -2.27,  -0.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #26 
atom(< -2.52,  -1.61,  -1.92>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #27 
atom(< -3.33,  -0.96,  -2.78>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #28 
atom(< -1.63,  -3.10,  -3.68>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #29 
atom(< -2.35,  -2.24,  -4.69>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #30 
atom(< -3.20,  -1.24,  -4.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #31 
atom(<  2.25,  -2.07,  -1.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #32 
atom(<  1.75,  -3.07,  -2.79>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #33 
atom(<  1.34,  -1.73,  -0.73>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #34 
atom(<  0.48,  -3.27,  -2.75>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #35 
atom(< -0.27,  -3.47,  -4.13>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #36 
atom(<  2.39,  -2.57,  -3.82>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #37 
atom(<  1.67,  -2.61,  -5.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #38 
atom(<  0.23,  -3.00,  -5.13>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #39 
atom(< -2.11,  -0.64,  -6.09>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #40 
atom(< -1.82,  -1.87,  -5.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #41 
atom(< -0.49,  -2.33,  -6.14>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #42 
atom(< -1.32,   0.22,  -6.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #43 
atom(< -2.21,   2.15,  -5.38>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #44 
atom(< -2.94,   1.12,  -4.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #45 
atom(< -3.01,  -0.23,  -5.14>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #46 
atom(< -1.17,   1.58,  -6.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #47 
atom(<  0.57,   3.05,  -5.40>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #48 
atom(< -0.44,   3.47,  -4.25>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #49 
atom(< -1.65,   3.02,  -4.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #50 
atom(<  0.12,   2.17,  -6.37>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #51 
atom(<  2.31,   0.89,  -6.28>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #52 
atom(<  2.69,   1.67,  -5.10>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #53 
atom(<  1.93,   2.73,  -4.66>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #54 
atom(<  0.96,   1.12,  -6.63>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #55 
atom(<  0.48,  -1.40,  -6.80>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #56 
atom(<  1.74,  -1.56,  -6.12>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #57 
atom(<  2.64,  -0.42,  -5.88>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #58 
atom(<  0.18,  -0.08,  -6.85>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #59 
