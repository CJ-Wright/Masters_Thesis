#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.76*x up 12.37*y
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

atom(< -1.38,  -0.07,  -0.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.11,   2.36,  -1.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.66,   2.22,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -1.17,   4.66,  -2.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -0.58,   2.33,  -4.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  0.91,   4.76,  -4.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -1.86,   4.62,  -5.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  0.22,   4.73,  -7.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -4.15,  -0.22,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -3.57,  -2.54,  -3.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.08,  -0.11,  -3.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.84,  -0.25,  -4.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -3.35,   2.18,  -4.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.77,  -0.14,  -6.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.28,   2.29,  -6.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -4.04,   2.15,  -7.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -2.55,   4.58,  -8.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -1.97,   2.26,  -9.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.26,  -2.58,  -6.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -5.53,  -0.29,  -7.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -3.46,  -0.18,  -9.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  1.38,   0.07,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  1.97,  -2.26,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  3.46,   0.18,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.69,   0.04,  -2.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.18,   2.47,  -3.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  2.77,   0.14,  -4.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  4.26,   2.58,  -5.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  1.49,   2.44,  -6.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  2.98,   4.87,  -6.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  3.57,   2.54,  -8.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -0.80,  -2.40,  -2.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -0.22,  -4.73,  -4.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  1.28,  -2.29,  -4.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -1.49,  -2.44,  -5.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.00,   0.00,  -5.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  0.58,  -2.33,  -7.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.08,   0.11,  -7.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -0.69,  -0.04,  -8.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  0.80,   2.40,  -8.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  1.38,   0.07, -10.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -2.98,  -4.87,  -4.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -0.91,  -4.76,  -6.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -2.18,  -2.47,  -8.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -0.11,  -2.36, -10.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -1.38,  -0.07, -11.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  4.04,  -2.15,  -3.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  5.53,   0.29,  -4.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.84,   0.25,  -6.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  2.55,  -4.58,  -3.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  1.86,  -4.62,  -6.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  3.35,  -2.18,  -6.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  2.66,  -2.22,  -9.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  4.15,   0.22,  -9.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  1.17,  -4.66,  -8.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
