#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -8.17*x up 8.46*y
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

atom(<  2.24,   0.59,  -0.89>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #0 
atom(<  3.13,   0.15,  -1.92>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #1 
atom(<  1.38,  -0.30,  -0.29>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #2 
atom(<  3.09,  -1.18,  -2.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #3 
atom(<  3.19,  -1.49,  -3.75>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #4 
atom(<  3.24,   1.23,  -2.89>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #5 
atom(<  3.32,   0.93,  -4.25>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #6 
atom(<  3.30,  -0.46,  -4.66>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #7 
atom(< -0.41,   1.37,  -0.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #8 
atom(<  0.50,   2.29,  -0.89>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #9 
atom(<  0.01,   0.09,   0.00>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #10 
atom(<  1.81,   1.91,  -1.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #11 
atom(<  2.40,   2.31,  -2.43>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #12 
atom(< -0.24,   3.08,  -1.88>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #13 
atom(<  0.37,   3.46,  -3.08>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #14 
atom(<  1.72,   3.07,  -3.36>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #15 
atom(< -2.13,  -0.83,  -0.84>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #16 
atom(< -2.54,   0.50,  -1.14>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #17 
atom(< -0.85,  -1.02,  -0.28>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #18 
atom(< -1.73,   1.58,  -0.88>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #19 
atom(< -1.61,   2.65,  -1.86>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #20 
atom(< -3.31,   0.44,  -2.37>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #21 
atom(< -3.18,   1.47,  -3.29>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #22 
atom(< -2.32,   2.59,  -3.02>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #23 
atom(< -0.49,  -2.98,  -1.70>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #24 
atom(< -1.80,  -2.78,  -2.28>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #25 
atom(< -0.02,  -2.12,  -0.71>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #26 
atom(< -2.59,  -1.72,  -1.86>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #27 
atom(< -3.32,  -0.92,  -2.80>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #28 
atom(< -1.72,  -3.09,  -3.70>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #29 
atom(< -2.42,  -2.30,  -4.62>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #30 
atom(< -3.23,  -1.23,  -4.17>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #31 
atom(<  2.18,  -2.11,  -1.71>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #32 
atom(<  1.72,  -3.01,  -2.77>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #33 
atom(<  1.36,  -1.68,  -0.73>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #34 
atom(<  0.40,  -3.41,  -2.75>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #35 
atom(< -0.38,  -3.46,  -3.99>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #36 
atom(<  2.31,  -2.62,  -4.02>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #37 
atom(<  1.60,  -2.68,  -5.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #38 
atom(<  0.24,  -3.08,  -5.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #39 
atom(< -2.26,  -0.59,  -6.17>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #40 
atom(< -1.80,  -1.94,  -5.86>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #41 
atom(< -0.51,  -2.31,  -6.13>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #42 
atom(< -1.40,   0.30,  -6.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #43 
atom(< -2.19,   2.09,  -5.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #44 
atom(< -3.10,   1.16,  -4.70>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #45 
atom(< -3.14,  -0.16,  -5.12>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #46 
atom(< -1.33,   1.67,  -6.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #47 
atom(<  0.49,   2.97,  -5.33>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #48 
atom(< -0.40,   3.40,  -4.29>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #49 
atom(< -1.72,   2.97,  -4.27>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #50 
atom(<  0.03,   2.12,  -6.33>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #51 
atom(<  2.11,   0.82,  -6.24>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #52 
atom(<  2.57,   1.70,  -5.21>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #53 
atom(<  1.80,   2.76,  -4.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #54 
atom(<  0.84,   1.01,  -6.79>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #55 
atom(<  0.40,  -1.39,  -6.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #56 
atom(<  1.69,  -1.59,  -6.16>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #57 
atom(<  2.55,  -0.51,  -5.91>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #58 
atom(< -0.02,  -0.09,  -7.05>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #59 
