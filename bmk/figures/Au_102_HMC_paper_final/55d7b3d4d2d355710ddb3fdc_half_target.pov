#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -17.65*x up 16.29*y
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

atom(< -0.58,  -0.79,  -0.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  2.21,  -0.78,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  1.22,   1.08,  -1.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -1.46,   1.91,  -1.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -0.07,  -1.10,  -3.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -3.23,  -1.81,  -0.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  1.07,  -3.01,  -1.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.45,   3.30,  -0.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -2.75,  -0.40,  -2.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.32,   3.84,  -2.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -0.97,   1.59,  -3.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.24,   0.98,  -0.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  2.93,  -1.16,  -2.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  4.17,   1.11,  -1.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.76,  -3.11,  -2.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  1.77,   0.86,  -4.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -3.56,   2.41,  -2.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  3.87,  -2.98,  -0.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  2.92,   2.96,  -3.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -2.38,   4.60,  -1.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -3.42,  -4.59,  -0.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  0.28,  -4.05,  -4.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -4.55,  -2.58,  -2.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -2.38,  -2.07,  -4.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.49,  -5.53,  -1.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -1.84,   4.22,  -4.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  0.80,   3.54,  -5.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  1.68,  -1.84,  -5.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -0.60,  -0.04,  -6.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -5.04,   3.81,  -0.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -3.45,   0.58,  -5.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  4.64,   0.86,  -4.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  5.67,  -1.20,  -2.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  2.30,  -5.44,  -0.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  2.62,   5.60,  -1.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -5.99,  -1.40,  -0.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  3.15,  -3.88,  -3.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  5.03,   3.74,  -1.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -0.18,   6.41,  -1.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -5.56,   0.30,  -2.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -7.39,   1.73,  -0.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  0.64,   6.39,  -4.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  2.85,   2.22,  -6.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  7.39,   2.08,  -1.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  4.76,  -2.59,  -5.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -4.73,   4.13,  -4.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -4.46,   6.58,  -1.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -5.65,  -1.67,  -5.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -0.56,  -2.97,  -7.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -6.53,  -4.33,  -0.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  4.85,   6.74,  -0.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  1.79,  -6.74,  -3.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
