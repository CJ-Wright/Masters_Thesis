#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.56*x up 11.17*y
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

atom(< -1.77,  -1.97,  -1.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.21,  -3.97,  -2.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  1.18,  -2.14,  -1.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  2.50,  -3.85,  -2.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  1.22,  -2.14,  -4.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.46,  -4.23,  -5.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  4.05,  -2.18,  -3.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  3.90,  -2.29,  -7.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.49,  -0.20,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -1.69,   1.79,  -1.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -0.23,   0.00,  -2.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  1.43,   1.71,  -1.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  2.84,  -0.07,  -2.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  1.15,   1.77,  -4.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  2.56,  -0.22,  -5.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  3.97,   1.83,  -4.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  5.44,  -0.32,  -6.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  3.96,   1.76,  -7.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.08,   4.06,  -2.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  2.47,   3.70,  -3.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  2.65,   3.79,  -5.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -3.06,  -4.20,  -3.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -4.55,  -1.76,  -3.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -3.40,  -3.80,  -5.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -1.65,  -2.03,  -4.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -0.63,  -4.30,  -5.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -1.83,  -2.17,  -7.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -0.59,  -4.08,  -8.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  1.16,  -2.15,  -7.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  2.26,  -4.14,  -8.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  1.00,  -2.30, -10.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.99,   0.08,  -2.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -4.14,   2.16,  -4.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -3.06,  -0.04,  -5.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -1.62,   2.26,  -4.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.16,  -0.27,  -5.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -1.53,   1.85,  -7.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -0.48,  -0.03,  -8.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  1.12,   1.83,  -7.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  2.70,  -0.41,  -9.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  1.04,   2.04, -10.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -2.92,   3.77,  -2.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.95,   4.28,  -5.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  0.23,   4.08,  -5.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  0.06,   4.30,  -8.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  2.58,   3.85,  -8.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -5.06,  -1.88,  -6.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -3.37,  -4.00,  -8.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -2.29,  -2.15, -10.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -5.44,   0.42,  -5.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -4.95,   2.12,  -7.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -3.34,  -0.04,  -8.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -2.18,   2.08, -10.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -0.49,  -0.20, -11.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -3.17,   4.00,  -8.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
