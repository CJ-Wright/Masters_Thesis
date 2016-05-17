#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -10.90*x up 10.91*y
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

atom(< -2.04,  -2.02,  -8.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -2.04,  -4.11,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -4.10,  -2.04,  -6.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -3.96,  -3.93,  -4.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.03,  -2.04,  -4.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -2.05,  -4.10,  -2.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -4.10,  -2.02,  -2.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -2.05,  -2.04,  -0.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -3.93,  -0.02,  -8.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -2.01,   2.02,  -8.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.03,   0.00,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.07,   2.04,  -6.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -4.17,   0.04,  -4.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.03,   2.04,  -4.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -2.02,  -0.01,  -2.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -4.06,   2.07,  -2.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -3.96,   0.04,  -0.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -2.02,   2.04,  -0.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -1.99,   4.10,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.93,   3.97,  -4.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -2.00,   4.13,  -2.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -0.03,  -3.96,  -8.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  2.05,  -2.05,  -8.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  2.00,  -4.13,  -6.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.01,  -2.02,  -6.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -0.00,  -4.17,  -4.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  2.03,  -2.04,  -4.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  1.97,  -3.91,  -2.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -0.02,  -2.03,  -2.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -0.01,  -3.92,  -0.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  2.03,  -2.05,  -0.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  0.01,  -0.02,  -8.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  2.08,   2.01,  -8.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  2.06,  -0.03,  -6.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  0.02,   2.04,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.02,  -0.01,  -4.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  2.05,   2.02,  -4.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.03,   0.01,  -2.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  0.01,   2.04,  -2.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  0.00,   0.02,  -0.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.05,   2.04,  -0.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  0.04,   3.93,  -8.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  2.06,   4.11,  -6.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  0.04,   4.17,  -4.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  2.05,   4.09,  -2.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -0.05,   4.06,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  4.11,  -2.06,  -6.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  3.92,  -4.00,  -4.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.12,  -2.03,  -2.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  3.98,  -0.05,  -8.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  4.14,   2.00,  -6.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  4.17,   0.02,  -4.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  4.11,   2.03,  -2.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  3.96,  -0.01,  -0.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  3.98,   3.92,  -4.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
