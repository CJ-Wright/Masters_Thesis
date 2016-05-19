#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -18.12*x up 17.65*y
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

atom(< -1.33,  -1.11,  -6.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.67,   0.73,  -7.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  1.47,  -1.48,  -5.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.08,   0.70,  -4.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  0.41,  -1.91,  -8.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -1.89,   1.68,  -6.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -1.69,   0.06,  -9.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -0.58,  -3.43,  -5.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  2.02,   2.66,  -5.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.41,   1.85, -10.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -3.75,  -1.73,  -7.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  3.51,   0.42,  -7.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.91,  -1.22,  -3.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -1.76,  -3.76,  -7.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.13,   3.56,  -8.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  2.54,  -0.05,  -9.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -3.90,  -0.20,  -5.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  3.25,  -2.34,  -8.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -2.52,   1.70,  -3.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -0.53,   3.64,  -5.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  1.14,  -4.25,  -7.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -2.27,   2.89,  -9.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -2.02,  -2.59, -10.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  0.10,  -0.77, -11.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -4.33,   1.05,  -8.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.98,   0.38,  -4.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  0.92,  -1.61,  -3.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -3.40,  -3.07,  -5.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  2.79,   2.68,  -8.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  2.29,  -3.73,  -4.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  1.35,   2.55,  -3.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.51,   4.44,  -7.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  0.09,  -4.49,  -9.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  4.23,  -1.96,  -5.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -0.54,   0.77,  -2.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  2.12,  -2.72, -10.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -4.45,   2.65,  -5.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -2.08,   1.18, -11.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -4.04,  -0.54, -10.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  2.92,   2.23, -11.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -5.94,  -2.17,  -6.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  4.92,   2.80,  -6.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.56,  -3.74,  -2.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -4.47,  -4.56,  -7.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  1.41,   4.63, -10.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -2.28,  -5.71,  -5.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  2.49,   5.17,  -7.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  5.09,   1.11,  -9.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -4.82,  -1.67,  -3.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  2.82,  -4.96,  -9.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -3.05,   4.51,  -4.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  3.98,  -4.60,  -6.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -1.21,   3.58,  -2.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -4.63,   2.26, -10.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -2.23,  -1.48, -12.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
atom(<  0.33,  -4.46,  -2.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #55 
atom(<  3.94,   3.16,  -4.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #56 
atom(<  0.61,  -6.02,  -5.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #57 
atom(<  1.73,   5.08,  -4.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #58 
atom(< -0.14,  -3.35, -12.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #59 
atom(< -4.91,   3.78,  -8.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #60 
atom(< -0.18,   6.03,  -6.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #61 
atom(< -0.74,  -6.36,  -7.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #62 
atom(<  2.75,  -0.46, -12.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #63 
atom(< -6.45,   0.65,  -6.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #64 
atom(<  0.49,   1.38, -13.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #65 
atom(< -6.26,  -0.80,  -8.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #66 
atom(<  2.21,   0.33,  -1.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #67 
atom(<  3.75,  -1.94,  -2.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #68 
atom(<  5.84,  -1.05,  -7.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #69 
atom(< -3.34,   0.08,  -1.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #70 
atom(< -0.85,   3.79, -11.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #71 
atom(< -4.90,  -3.22, -10.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #72 
atom(<  5.59,   0.51,  -5.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #73 
atom(< -1.00,  -1.87,  -1.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #74 
atom(<  4.77,  -1.77, -10.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #75 
atom(< -5.25,   1.36,  -3.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #76 
atom(< -2.71,  -5.26,  -9.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #77 
atom(< -1.41,   5.52,  -9.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #78 
atom(< -3.09,  -4.33, -12.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #79 
atom(< -3.95,   5.14, -11.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #80 
atom(<  5.97,  -4.13,  -8.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #81 
atom(< -3.97,   3.26,  -1.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #82 
atom(< -4.53,   0.59, -13.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #83 
atom(<  4.55,  -5.35,  -3.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #84 
atom(<  1.28,   3.76,  -0.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #85 
atom(<  1.44,  -3.04,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #86 
atom(<  5.70,   1.21,  -2.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #87 
atom(< -3.80,   6.81,  -6.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #88 
atom(<  1.30,  -6.84, -11.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #89 
atom(<  2.57,  -3.85, -13.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #90 
atom(< -6.88,   4.15,  -6.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #91 
atom(<  5.59,   0.51, -12.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #92 
atom(< -7.61,  -0.64,  -3.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #93 
atom(<  1.03,   7.38,  -9.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #94 
atom(< -3.72,  -7.38,  -7.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #95 
atom(< -1.40,  -6.94,  -2.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #96 
atom(<  4.66,   5.83,  -5.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #97 
atom(<  1.59,   4.22, -13.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #98 
atom(< -7.45,  -3.63,  -8.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #99 
atom(< -4.00,  -2.43,  -0.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #100 
atom(<  7.61,   1.26,  -7.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #101 