#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -8.18*x up 8.49*y
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

atom(<  2.22,   0.59,  -0.85>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #0 
atom(<  3.11,   0.16,  -1.89>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #1 
atom(<  1.33,  -0.32,  -0.28>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #2 
atom(<  3.10,  -1.16,  -2.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #3 
atom(<  3.20,  -1.46,  -3.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #4 
atom(<  3.23,   1.23,  -2.84>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #5 
atom(<  3.33,   0.94,  -4.20>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #6 
atom(<  3.31,  -0.43,  -4.65>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #7 
atom(< -0.45,   1.36,  -0.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #8 
atom(<  0.47,   2.30,  -0.90>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #9 
atom(< -0.02,   0.08,   0.00>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #10 
atom(<  1.78,   1.92,  -1.16>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #11 
atom(<  2.40,   2.32,  -2.40>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #12 
atom(< -0.26,   3.09,  -1.85>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #13 
atom(<  0.34,   3.47,  -3.04>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #14 
atom(<  1.70,   3.08,  -3.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #15 
atom(< -2.13,  -0.85,  -0.85>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #16 
atom(< -2.57,   0.49,  -1.16>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #17 
atom(< -0.88,  -1.05,  -0.28>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #18 
atom(< -1.74,   1.57,  -0.90>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #19 
atom(< -1.63,   2.64,  -1.85>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #20 
atom(< -3.31,   0.43,  -2.39>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #21 
atom(< -3.20,   1.46,  -3.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #22 
atom(< -2.34,   2.59,  -3.04>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #23 
atom(< -0.50,  -2.99,  -1.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #24 
atom(< -1.80,  -2.78,  -2.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #25 
atom(< -0.05,  -2.14,  -0.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #26 
atom(< -2.60,  -1.73,  -1.88>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #27 
atom(< -3.33,  -0.94,  -2.84>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #28 
atom(< -1.70,  -3.08,  -3.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #29 
atom(< -2.40,  -2.32,  -4.64>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #30 
atom(< -3.23,  -1.23,  -4.20>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #31 
atom(<  2.18,  -2.10,  -1.73>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #32 
atom(<  1.71,  -2.98,  -2.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #33 
atom(<  1.32,  -1.69,  -0.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #34 
atom(<  0.40,  -3.42,  -2.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #35 
atom(< -0.34,  -3.47,  -4.00>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #36 
atom(<  2.34,  -2.59,  -4.00>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #37 
atom(<  1.63,  -2.64,  -5.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #38 
atom(<  0.26,  -3.09,  -5.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #39 
atom(< -2.22,  -0.59,  -6.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #40 
atom(< -1.78,  -1.92,  -5.88>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #41 
atom(< -0.47,  -2.30,  -6.14>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #42 
atom(< -1.33,   0.32,  -6.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #43 
atom(< -2.18,   2.10,  -5.31>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #44 
atom(< -3.10,   1.16,  -4.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #45 
atom(< -3.11,  -0.16,  -5.15>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #46 
atom(< -1.32,   1.69,  -6.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #47 
atom(<  0.50,   2.99,  -5.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #48 
atom(< -0.40,   3.42,  -4.28>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #49 
atom(< -1.72,   2.98,  -4.28>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #50 
atom(<  0.05,   2.14,  -6.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #51 
atom(<  2.13,   0.85,  -6.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #52 
atom(<  2.60,   1.73,  -5.16>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #53 
atom(<  1.80,   2.78,  -4.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #54 
atom(<  0.88,   1.05,  -6.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #55 
atom(<  0.45,  -1.36,  -6.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #56 
atom(<  1.75,  -1.57,  -6.14>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #57 
atom(<  2.57,  -0.49,  -5.88>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #58 
atom(<  0.02,  -0.08,  -7.04>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #59 
