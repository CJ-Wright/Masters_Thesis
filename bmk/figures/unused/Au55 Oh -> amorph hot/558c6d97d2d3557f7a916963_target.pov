#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.86*x up 14.74*y
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

atom(< -3.96,  -1.63,  -4.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -1.11,   4.44,  -2.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -1.20,   1.81,  -0.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -0.09,   2.72,  -7.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.46,   0.75,  -4.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.23,  -0.50,  -4.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -0.09,  -4.92,  -6.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -0.44,  -4.71,  -3.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -3.14,  -0.12,  -1.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.71,   0.52,  -6.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.54,  -3.61,  -5.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  3.74,  -1.00,  -0.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  3.60,   3.50,  -2.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.80,   0.36,  -8.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -3.30,   4.98,  -3.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  5.10,  -0.37,  -4.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  1.81,   0.36,  -7.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  4.06,  -4.86,  -4.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  2.21,  -4.62,  -2.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -0.17,  -4.12,  -1.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  1.63,  -2.55,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -2.53,   1.87,  -7.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -4.22,   2.95,  -5.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  1.29,   0.32,  -0.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -2.19,  -3.04,  -2.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -2.48,  -1.09,  -6.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  0.32,  -1.79,  -6.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  1.68,  -6.00,  -4.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -0.01,   0.56,  -2.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -0.20,   0.68,  -5.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -5.10,   1.00,  -3.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  1.25,   2.90,  -1.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  2.48,   2.69,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  2.88,  -2.17,  -7.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  0.97,  -1.52,  -9.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -3.08,   2.59,  -2.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  3.28,   4.70,  -5.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -1.10,   3.10,  -4.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  1.25,  -1.94,  -2.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.01,  -4.77,  -7.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -0.76,  -1.65,  -4.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  1.47,   2.42,  -4.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -1.06,   6.00,  -4.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  0.73,   4.74,  -6.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  4.39,   0.16,  -6.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  3.01,   0.82,  -2.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -2.47,   4.74,  -6.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  0.82,  -3.96,  -8.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  1.28,   5.02,  -3.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  1.76,  -3.28,  -5.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  3.86,  -2.49,  -3.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  4.44,  -2.57,  -5.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -1.68,  -3.15,  -7.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -1.03,  -1.29,  -0.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  4.17,   2.06,  -4.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
