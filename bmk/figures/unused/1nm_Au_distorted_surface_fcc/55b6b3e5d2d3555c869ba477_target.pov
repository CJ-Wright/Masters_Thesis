#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.12*x up 12.74*y
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

atom(< -2.14,  -0.25,  -1.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.14,  -2.56,  -1.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.78,  -2.90,  -3.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.25,  -0.04,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  0.60,   2.11,  -1.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.74,   0.50,  -1.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.14,   0.10,  -2.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.82,   2.78,  -2.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -5.02,  -0.78,  -2.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.33,   1.62,  -4.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.37,  -0.31,  -4.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -5.23,  -0.69,  -5.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.85,   1.76,  -2.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -1.50,   4.69,  -4.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.55,   2.54,  -4.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.95,   2.14,  -5.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  1.30,   4.85,  -2.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  1.09,   5.05,  -5.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.57,   1.60,  -7.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.89,   4.40,  -5.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -1.72,   4.46,  -7.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -0.77,  -4.42,  -2.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -0.35,  -2.37,  -4.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  1.79,  -4.12,  -4.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -1.38,  -5.05,  -5.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.18,  -2.08,  -3.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  2.57,   0.48,  -4.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  4.39,  -1.55,  -4.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  2.08,  -1.99,  -5.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  5.23,   0.87,  -2.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  4.81,   0.85,  -6.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -3.06,  -2.99,  -5.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.44,  -0.33,  -7.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -0.43,  -2.40,  -7.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -2.90,  -2.87,  -8.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.06,   0.07,  -5.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  0.48,   2.52,  -7.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.49,   0.45,  -7.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -0.01,   0.05,  -8.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  2.86,   3.26,  -5.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  3.28,   2.92,  -8.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -4.83,  -0.23,  -8.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.54,  -0.30,  -9.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -1.91,   2.02,  -8.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  0.12,   2.52, -10.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  1.07,   4.68,  -8.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  1.82,  -4.63,  -7.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  4.41,  -4.32,  -5.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.27,  -1.73,  -7.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -1.05,  -4.64,  -8.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -0.61,  -2.51, -10.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  1.89,  -2.11,  -8.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  2.38,   0.12, -10.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  5.20,   0.78,  -8.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  0.25,  -0.04, -11.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
