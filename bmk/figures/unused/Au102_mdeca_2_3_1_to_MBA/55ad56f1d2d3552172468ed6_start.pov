#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -16.20*x up 15.21*y
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

atom(<  1.89,   6.00, -10.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  1.10,   3.59,  -8.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  0.32,   1.18,  -7.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -0.47,  -1.23,  -6.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -1.25,  -3.64,  -4.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -2.03,  -6.05,  -3.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  3.63,   4.84,  -8.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.85,   2.43,  -6.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  2.07,   0.02,  -5.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  1.28,  -2.40,  -4.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  0.50,  -4.81,  -2.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  1.11,   6.11,  -7.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  0.33,   3.70,  -6.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.46,   1.29,  -4.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -1.24,  -1.12,  -3.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.02,  -3.53,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -0.88,   5.57,  -9.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -1.67,   3.16,  -8.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -2.45,   0.75,  -6.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.23,  -1.67,  -5.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -4.02,  -4.08,  -4.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  0.41,   3.96, -11.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -0.37,   1.55, -10.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -1.16,  -0.87,  -8.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -1.94,  -3.28,  -7.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -2.72,  -5.69,  -6.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  3.20,   3.51, -10.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  2.42,   1.09,  -9.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  1.63,  -1.32,  -8.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  0.85,  -3.73,  -6.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  0.07,  -6.14,  -5.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  5.38,   3.67,  -6.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  4.60,   1.26,  -4.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  3.81,  -1.15,  -3.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  3.03,  -3.56,  -2.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  2.86,   4.95,  -5.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  2.07,   2.54,  -4.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  1.29,   0.13,  -2.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  0.51,  -2.28,  -1.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  0.33,   6.22,  -4.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -0.45,   3.81,  -3.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -1.23,   1.40,  -1.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.02,  -1.01,  -0.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -1.66,   5.68,  -6.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -2.44,   3.27,  -5.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -3.23,   0.86,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -4.01,  -1.55,  -2.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -3.65,   5.14,  -8.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -4.43,   2.72,  -7.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -5.22,   0.31,  -6.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -6.00,  -2.10,  -4.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -2.36,   3.52, -11.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -3.14,   1.11,  -9.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -3.93,  -1.30,  -8.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -4.71,  -3.71,  -6.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
atom(< -1.07,   1.91, -13.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #55 
atom(< -1.85,  -0.50, -11.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #56 
atom(< -2.63,  -2.91, -10.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #57 
atom(< -3.42,  -5.32,  -8.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #58 
atom(<  1.72,   1.46, -12.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #59 
atom(<  0.94,  -0.95, -10.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #60 
atom(<  0.16,  -3.36,  -9.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #61 
atom(< -0.63,  -5.77,  -8.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #62 
atom(<  4.51,   1.01, -11.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #63 
atom(<  3.73,  -1.40, -10.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #64 
atom(<  2.95,  -3.81,  -8.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #65 
atom(<  2.16,  -6.22,  -7.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #66 
atom(<  4.95,   2.34,  -8.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #67 
atom(<  4.16,  -0.07,  -7.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #68 
atom(<  3.38,  -2.48,  -6.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #69 
atom(<  2.60,  -4.89,  -4.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #70 
atom(<  4.60,   3.79,  -3.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #71 
atom(<  3.82,   1.37,  -2.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #72 
atom(<  3.04,  -1.04,  -0.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #73 
atom(<  2.08,   5.06,  -2.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #74 
atom(<  1.30,   2.65,  -1.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #75 
atom(<  0.51,   0.24,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #76 
atom(< -2.43,   5.79,  -4.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #77 
atom(< -3.22,   3.38,  -2.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #78 
atom(< -4.00,   0.97,  -1.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #79 
atom(< -4.43,   5.25,  -6.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #80 
atom(< -5.21,   2.84,  -4.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #81 
atom(< -5.99,   0.42,  -3.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #82 
atom(< -5.13,   3.09, -10.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #83 
atom(< -5.91,   0.68,  -8.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #84 
atom(< -6.69,  -1.73,  -7.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #85 
atom(< -3.84,   1.48, -12.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #86 
atom(< -4.62,  -0.93, -11.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #87 
atom(< -5.40,  -3.34,  -9.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #88 
atom(<  0.25,  -0.59, -13.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #89 
atom(< -0.54,  -3.00, -12.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #90 
atom(< -1.32,  -5.41, -10.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #91 
atom(<  3.04,  -1.04, -12.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #92 
atom(<  2.25,  -3.45, -11.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #93 
atom(<  1.47,  -5.86, -10.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #94 
atom(<  6.26,  -0.15,  -9.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #95 
atom(<  5.48,  -2.57,  -8.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #96 
atom(<  4.69,  -4.98,  -6.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #97 
atom(<  6.69,   1.18,  -6.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #98 
atom(<  5.91,  -1.23,  -5.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #99 
atom(<  5.13,  -3.64,  -4.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #100 
