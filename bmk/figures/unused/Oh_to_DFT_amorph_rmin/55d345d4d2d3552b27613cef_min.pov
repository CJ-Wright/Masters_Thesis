#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.37*x up 13.76*y
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

atom(< -1.71,  -3.42,  -1.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.59,  -2.05,  -0.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.46,  -1.04,  -0.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -0.13,   0.47,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  0.31,   0.13,  -2.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.45,   0.35,  -0.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.55,   2.55,  -1.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  3.20,   2.67,  -2.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -4.87,  -1.24,  -1.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -4.66,  -1.22,  -4.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.28,  -0.93,  -3.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.37,   1.14,  -3.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.05,   1.50,  -1.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -1.81,   1.41,  -4.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.94,   2.26,  -4.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.20,   3.76,  -3.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  1.36,   4.76,  -2.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  0.57,   5.08,  -5.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.15,   1.15,  -6.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.66,   3.49,  -4.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -2.15,   5.53,  -5.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  1.21,  -4.45,  -2.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.49,  -5.53,  -6.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  1.10,  -4.89,  -5.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.04,  -2.47,  -3.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  3.09,  -2.08,  -2.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  2.14,  -2.30,  -5.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  4.68,  -2.12,  -4.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  2.68,   0.00,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  4.78,   0.15,  -2.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  4.87,   0.19,  -6.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.66,  -3.32,  -4.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.45,  -2.25,  -8.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -0.47,  -2.94,  -6.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -2.28,  -0.88,  -6.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.25,  -0.28,  -5.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -0.18,  -0.65,  -8.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.28,   0.13,  -7.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -0.16,   1.97,  -7.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.22,   4.32,  -4.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.29,   3.03,  -7.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -4.69,  -1.23,  -7.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.30,  -0.02, -10.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -2.55,   2.48,  -8.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -0.43,   2.61, -10.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -0.55,   4.55,  -8.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  1.82,  -4.01,  -7.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  3.88,  -4.46,  -5.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  4.22,  -2.19,  -7.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -0.64,  -4.29,  -8.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -0.31,  -2.06, -10.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  2.21,  -1.69,  -9.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  1.75,   0.99,  -9.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  4.33,   0.27,  -8.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -0.13,   0.47, -11.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
