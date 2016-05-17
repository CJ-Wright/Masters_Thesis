#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -19.67*x up 19.70*y
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

atom(< -4.05,  -4.07, -16.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -4.05,  -8.22, -12.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -8.20,  -4.06, -12.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -7.87,  -7.91,  -8.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -4.04,  -4.07,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -4.07,  -8.20,  -4.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -8.23,  -4.07,  -4.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -4.05,  -4.06,  -0.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -7.86,   0.00, -16.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.06,   4.06, -16.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -4.04,  -0.00, -12.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -8.20,   4.07, -12.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -8.35,   0.01,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -4.05,   4.06,  -8.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -4.06,   0.01,  -4.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -8.20,   4.08,  -4.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -7.90,   0.01,  -0.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -4.08,   4.09,  -0.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.07,   8.22, -12.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -7.87,   7.90,  -8.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -4.05,   8.22,  -4.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  0.05,  -7.91, -16.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  4.09,  -4.11, -16.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  4.09,  -8.21, -12.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.02,  -4.06, -12.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.00,  -8.36,  -8.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  4.07,  -4.05,  -8.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  4.07,  -8.21,  -4.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  0.01,  -4.04,  -4.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  0.02,  -7.90,  -0.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  4.08,  -4.05,  -0.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  0.02,  -0.01, -16.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  4.09,   4.06, -16.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  4.09,  -0.01, -12.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  0.02,   4.04, -12.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.02,   0.01,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  4.08,   4.07,  -8.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  4.07,   0.02,  -4.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  0.01,   4.07,  -4.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -0.00,   0.02,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  4.07,   4.08,  -0.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  0.04,   7.89, -16.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  4.08,   8.21, -12.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  0.02,   8.36,  -8.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  4.09,   8.24,  -4.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  0.01,   7.91,  -0.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  8.21,  -4.09, -12.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  7.92,  -7.91,  -8.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  8.22,  -4.06,  -4.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  7.94,  -0.03, -16.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  8.24,   4.05, -12.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  8.35,  -0.00,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  8.22,   4.09,  -4.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  7.93,   0.02,  -0.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  7.94,   7.91,  -8.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
