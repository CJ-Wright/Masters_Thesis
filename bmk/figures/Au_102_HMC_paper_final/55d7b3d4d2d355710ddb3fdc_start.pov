#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -15.96*x up 17.10*y
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

atom(< -5.36,  -4.95,  -7.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -5.77,  -2.10,  -7.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -6.17,   0.75,  -7.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -4.41,  -4.82,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -4.82,  -1.97,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -3.46,  -4.68,  -2.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -6.58,   3.60,  -7.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -5.22,   0.88,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -5.63,   3.73,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -3.87,  -1.83,  -2.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -4.27,   1.02,  -2.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.68,   3.87,  -2.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -4.14,  -3.32,  -9.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.51,  -4.54, -11.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -2.92,  -1.70, -11.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.78,  -6.04,  -6.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -1.56,  -4.41,  -8.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -0.20,  -7.12,  -6.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.95,   2.37,  -9.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.32,   1.15, -11.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -3.73,   4.00, -11.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -4.54,  -0.47,  -9.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -3.60,  -0.34,  -6.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -1.97,  -1.56,  -8.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -2.37,   1.29,  -8.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -3.19,  -3.19,  -6.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -2.24,  -3.05,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -0.61,  -4.27,  -6.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -1.02,  -1.42,  -6.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -1.83,  -5.90,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  0.34,  -4.14,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -4.41,   5.36,  -6.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.78,   4.14,  -8.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -4.00,   2.51,  -6.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -3.05,   2.65,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -1.42,   1.42,  -6.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -1.83,   4.27,  -6.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -2.65,  -0.20,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -1.70,  -0.07,  -1.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -0.07,  -1.29,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -0.47,   1.56,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -1.29,  -2.92,  -1.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  1.29,  -4.00,  -0.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  0.88,  -1.15,  -0.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -2.24,   7.12,  -6.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -3.46,   5.49,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -0.88,   4.41,  -3.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -2.10,   2.78,  -1.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  0.47,   1.70,  -0.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  0.07,   4.54,  -0.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -1.70,  -0.07, -13.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -0.34,  -2.78, -10.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  0.88,  -1.15, -12.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  0.07,  -5.63, -10.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  1.02,  -5.49,  -8.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
atom(<  2.24,  -3.87, -10.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #55 
atom(< -1.15,   2.92, -10.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #56 
atom(<  0.47,   1.70, -12.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #57 
atom(< -0.75,   0.07, -10.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #58 
atom(<  0.20,   0.20,  -8.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #59 
atom(<  1.83,  -1.02, -10.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #60 
atom(<  1.42,   1.83, -10.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #61 
atom(<  0.61,  -2.65,  -8.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #62 
atom(<  1.56,  -2.51,  -5.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #63 
atom(<  3.19,  -3.73,  -7.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #64 
atom(<  2.78,  -0.88,  -7.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #65 
atom(<  1.97,  -5.36,  -5.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #66 
atom(<  2.92,  -5.22,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #67 
atom(<  4.14,  -3.60,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #68 
atom(< -1.56,   5.77, -10.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #69 
atom(< -0.61,   5.90,  -8.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #70 
atom(<  1.02,   4.68, -10.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #71 
atom(< -0.20,   3.05,  -8.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #72 
atom(<  0.75,   3.19,  -5.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #73 
atom(<  2.37,   1.97,  -7.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #74 
atom(<  1.97,   4.82,  -7.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #75 
atom(<  1.15,   0.34,  -5.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #76 
atom(<  2.10,   0.47,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #77 
atom(<  3.73,  -0.75,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #78 
atom(<  3.32,   2.10,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #79 
atom(<  2.51,  -2.37,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #80 
atom(<  4.68,  -0.61,  -2.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #81 
atom(<  0.34,   6.04,  -5.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #82 
atom(<  1.29,   6.17,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #83 
atom(<  2.92,   4.95,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #84 
atom(<  1.70,   3.32,  -2.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #85 
atom(<  4.27,   2.24,  -2.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #86 
atom(<  3.05,   0.61,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #87 
atom(<  3.46,  -2.24, -12.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #88 
atom(<  2.65,   3.46, -12.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #89 
atom(<  3.05,   0.61, -12.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #90 
atom(<  4.00,   0.75,  -9.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #91 
atom(<  4.41,  -2.10,  -9.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #92 
atom(<  5.36,  -1.97,  -6.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #93 
atom(<  6.58,  -0.34,  -8.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #94 
atom(<  3.60,   3.60,  -9.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #95 
atom(<  4.54,   3.73,  -6.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #96 
atom(<  6.17,   2.51,  -8.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #97 
atom(<  4.95,   0.88,  -6.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #98 
atom(<  5.90,   1.02,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #99 
atom(<  6.31,  -1.83,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #100 
atom(<  5.49,   3.87,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #101 
