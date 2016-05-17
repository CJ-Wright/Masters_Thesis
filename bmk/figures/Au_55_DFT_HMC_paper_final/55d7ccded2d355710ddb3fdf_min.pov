#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.53*x up 12.51*y
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

atom(< -2.92,  -2.89,  -2.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.41,  -2.47,  -1.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.49,  -0.40,  -1.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -0.00,   0.00,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -0.01,   0.01,  -2.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.48,   0.41,  -1.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.40,   2.49,  -1.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.91,   2.91,  -2.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -4.78,  -0.80,  -2.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.95,  -0.86,  -5.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.46,  -0.41,  -4.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.51,   1.64,  -4.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.10,   2.10,  -2.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.03,   2.03,  -5.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.42,   2.46,  -4.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.63,   4.53,  -4.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  0.81,   4.78,  -2.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  0.89,   4.94,  -5.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.51,   1.66,  -7.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.95,   3.97,  -5.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -1.61,   4.51,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -0.83,  -4.76,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -0.88,  -4.94,  -5.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  1.62,  -4.50,  -4.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.44,  -2.44,  -4.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.08,  -2.08,  -2.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  2.02,  -2.04,  -5.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  4.50,  -1.63,  -4.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  2.45,   0.43,  -4.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  4.77,   0.81,  -2.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  4.95,   0.86,  -5.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.96,  -2.95,  -5.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.92,  -2.90,  -8.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -0.43,  -2.44,  -7.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -2.46,  -0.42,  -7.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.00,  -0.01,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -0.00,   0.00,  -8.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.44,   0.42,  -7.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  0.43,   2.45,  -7.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  2.95,   2.95,  -5.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.91,   2.90,  -8.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -4.77,  -0.79,  -8.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.47,  -0.41,  -9.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -2.09,   2.08,  -8.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  0.40,   2.47,  -9.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  0.83,   4.76,  -8.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  1.62,  -4.51,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  3.95,  -3.94,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.51,  -1.63,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -0.84,  -4.77,  -8.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -0.41,  -2.46,  -9.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  2.08,  -2.09,  -8.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  2.49,   0.41,  -9.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  4.77,   0.82,  -8.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -0.00,   0.00, -11.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
