#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -8.18*x up 8.51*y
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

atom(<  2.22,   0.63,  -0.87>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #0 
atom(<  3.11,   0.14,  -1.87>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #1 
atom(<  1.32,  -0.29,  -0.29>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #2 
atom(<  3.10,  -1.17,  -2.31>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #3 
atom(<  3.32,  -1.79,  -3.92>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #4 
atom(<  3.24,   1.22,  -2.84>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #5 
atom(<  3.33,   0.92,  -4.21>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #6 
atom(<  3.30,  -0.49,  -4.60>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #7 
atom(< -0.43,   1.40,  -0.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #8 
atom(<  0.49,   2.33,  -0.92>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #9 
atom(< -0.04,   0.12,   0.00>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #10 
atom(<  1.79,   1.94,  -1.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #11 
atom(<  2.41,   2.30,  -2.40>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #12 
atom(< -0.25,   3.10,  -1.86>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #13 
atom(<  0.35,   3.48,  -3.05>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #14 
atom(<  1.73,   3.07,  -3.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #15 
atom(< -2.14,  -0.81,  -0.84>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #16 
atom(< -2.55,   0.53,  -1.15>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #17 
atom(< -0.89,  -1.00,  -0.26>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #18 
atom(< -1.75,   1.63,  -0.93>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #19 
atom(< -1.62,   2.70,  -1.88>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #20 
atom(< -3.29,   0.46,  -2.38>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #21 
atom(< -3.18,   1.46,  -3.33>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #22 
atom(< -2.32,   2.60,  -3.06>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #23 
atom(< -0.42,  -2.82,  -2.00>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #24 
atom(< -1.81,  -2.76,  -2.28>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #25 
atom(<  0.16,  -2.51,  -0.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #26 
atom(< -2.60,  -1.70,  -1.86>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #27 
atom(< -3.33,  -0.92,  -2.82>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #28 
atom(< -1.71,  -3.06,  -3.68>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #29 
atom(< -2.42,  -2.31,  -4.62>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #30 
atom(< -3.23,  -1.20,  -4.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #31 
atom(<  2.20,  -2.09,  -1.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #32 
atom(<  1.68,  -2.99,  -2.69>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #33 
atom(<  1.31,  -1.65,  -0.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #34 
atom(<  0.36,  -3.41,  -2.71>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #35 
atom(< -0.37,  -3.48,  -3.95>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #36 
atom(<  2.18,  -2.42,  -3.62>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #37 
atom(<  1.64,  -2.65,  -5.17>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #38 
atom(<  0.25,  -3.11,  -5.14>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #39 
atom(< -2.22,  -0.58,  -6.15>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #40 
atom(< -1.78,  -1.95,  -5.85>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #41 
atom(< -0.48,  -2.33,  -6.11>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #42 
atom(< -1.34,   0.29,  -6.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #43 
atom(< -2.17,   2.08,  -5.35>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #44 
atom(< -3.10,   1.15,  -4.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #45 
atom(< -3.14,  -0.13,  -5.16>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #46 
atom(< -1.30,   1.68,  -6.36>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #47 
atom(<  0.53,   2.96,  -5.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #48 
atom(< -0.37,   3.41,  -4.31>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #49 
atom(< -1.69,   3.00,  -4.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #50 
atom(<  0.10,   2.10,  -6.35>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #51 
atom(<  2.15,   0.79,  -6.18>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #52 
atom(<  2.62,   1.71,  -5.18>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #53 
atom(<  1.82,   2.77,  -4.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #54 
atom(<  0.88,   1.01,  -6.77>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #55 
atom(<  0.41,  -1.38,  -6.73>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #56 
atom(<  1.74,  -1.60,  -6.16>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #57 
atom(<  2.56,  -0.54,  -5.90>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #58 
atom(<  0.20,  -0.22,  -6.90>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #59 
