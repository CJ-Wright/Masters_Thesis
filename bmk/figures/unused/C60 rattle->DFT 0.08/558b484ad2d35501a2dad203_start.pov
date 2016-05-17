#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -8.23*x up 8.48*y
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

atom(<  2.31,   0.59,  -0.79>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #0 
atom(<  3.30,   0.15,  -1.90>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #1 
atom(<  1.52,  -0.24,  -0.31>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #2 
atom(<  3.20,  -1.19,  -2.35>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #3 
atom(<  3.28,  -1.61,  -3.86>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #4 
atom(<  3.24,   1.16,  -2.82>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #5 
atom(<  3.31,   0.83,  -4.08>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #6 
atom(<  3.35,  -0.42,  -4.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #7 
atom(< -0.44,   1.38,  -0.40>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #8 
atom(<  0.56,   2.26,  -0.92>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #9 
atom(< -0.02,   0.24,   0.00>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #10 
atom(<  1.75,   2.00,  -1.26>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #11 
atom(<  2.48,   2.17,  -2.50>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #12 
atom(< -0.19,   3.16,  -1.84>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #13 
atom(<  0.39,   3.46,  -3.16>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #14 
atom(<  1.70,   3.05,  -3.23>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #15 
atom(< -2.04,  -0.98,  -0.82>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #16 
atom(< -2.54,   0.44,  -1.11>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #17 
atom(< -0.74,  -0.96,  -0.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #18 
atom(< -1.71,   1.61,  -0.82>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #19 
atom(< -1.61,   2.64,  -1.94>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #20 
atom(< -3.35,   0.51,  -2.28>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #21 
atom(< -3.15,   1.55,  -3.29>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #22 
atom(< -2.34,   2.63,  -2.92>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #23 
atom(< -0.45,  -2.85,  -1.93>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #24 
atom(< -1.67,  -2.76,  -2.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #25 
atom(<  0.01,  -2.29,  -0.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #26 
atom(< -2.51,  -1.60,  -1.92>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #27 
atom(< -3.33,  -0.97,  -2.77>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #28 
atom(< -1.62,  -3.11,  -3.68>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #29 
atom(< -2.34,  -2.23,  -4.70>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #30 
atom(< -3.20,  -1.25,  -4.31>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #31 
atom(<  2.26,  -2.07,  -1.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #32 
atom(<  1.75,  -3.08,  -2.80>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #33 
atom(<  1.35,  -1.74,  -0.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #34 
atom(<  0.49,  -3.25,  -2.75>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #35 
atom(< -0.26,  -3.47,  -4.15>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #36 
atom(<  2.40,  -2.57,  -3.80>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #37 
atom(<  1.67,  -2.61,  -5.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #38 
atom(<  0.23,  -2.99,  -5.12>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #39 
atom(< -2.09,  -0.65,  -6.08>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #40 
atom(< -1.83,  -1.86,  -5.70>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #41 
atom(< -0.49,  -2.34,  -6.13>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #42 
atom(< -1.32,   0.20,  -6.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #43 
atom(< -2.21,   2.15,  -5.39>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #44 
atom(< -2.92,   1.11,  -4.75>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #45 
atom(< -2.99,  -0.25,  -5.13>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #46 
atom(< -1.15,   1.57,  -6.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #47 
atom(<  0.58,   3.06,  -5.42>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #48 
atom(< -0.45,   3.47,  -4.25>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #49 
atom(< -1.64,   3.02,  -4.33>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #50 
atom(<  0.13,   2.17,  -6.37>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #51 
atom(<  2.34,   0.90,  -6.29>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #52 
atom(<  2.71,   1.66,  -5.09>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #53 
atom(<  1.95,   2.72,  -4.65>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #54 
atom(<  0.97,   1.12,  -6.61>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #55 
atom(<  0.49,  -1.41,  -6.81>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #56 
atom(<  1.74,  -1.57,  -6.12>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #57 
atom(<  2.65,  -0.41,  -5.88>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #58 
atom(<  0.20,  -0.09,  -6.82>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #59 
