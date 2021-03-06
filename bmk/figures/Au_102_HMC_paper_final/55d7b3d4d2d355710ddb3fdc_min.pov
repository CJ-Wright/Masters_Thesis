#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -17.52*x up 16.52*y
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

atom(< -5.54,  -2.51,  -7.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -7.33,  -0.50,  -9.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -4.89,   0.90,  -9.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -6.24,  -4.86,  -5.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -4.32,  -3.64,  -4.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -4.16,  -6.52,  -4.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -6.74,   2.40,  -8.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -4.37,   1.41,  -7.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -5.79,   4.84,  -6.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -3.42,  -1.17,  -2.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -4.17,   1.48,  -1.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -3.77,   3.67,  -3.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -6.84,  -3.46, -10.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.15,  -3.78, -13.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -4.83,  -3.29, -12.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.40,  -4.73,  -6.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -1.42,  -4.36, -11.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -0.33,  -6.85,  -6.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -3.71,   2.93, -11.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -2.10,   1.88, -14.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -2.14,   4.70, -13.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -5.91,  -1.00, -11.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -2.85,  -0.70,  -7.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -1.82,  -1.52, -10.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -2.12,   1.48,  -9.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -1.56,  -3.27,  -8.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -2.30,  -1.78,  -5.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  1.01,  -4.70,  -7.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  0.09,  -1.05,  -7.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -1.28,  -6.40,  -3.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  0.61,  -1.30,  -2.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -3.42,   6.02,  -8.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.77,   5.42, -10.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -4.17,   3.48,  -9.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -3.13,   3.73,  -6.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -1.16,   1.67,  -7.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -1.40,   4.04,  -8.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -2.85,   1.16,  -4.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -1.36,   0.82,  -2.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -0.16,   0.17,  -4.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -0.90,   3.35,  -4.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -1.41,  -1.46,  -0.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  0.99,  -3.22,  -0.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  1.58,  -0.38,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -0.83,   6.85,  -9.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -3.83,   6.21,  -5.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  1.23,   5.52,  -4.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -2.03,   3.53,  -1.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  0.36,   2.27,  -0.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  0.64,   4.29,  -2.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -1.02,  -0.72, -14.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  0.02,  -2.24, -12.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  1.58,  -0.38, -16.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  0.36,  -5.00, -13.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  2.93,  -4.72, -10.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
atom(<  3.09,  -2.33, -11.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #55 
atom(< -0.74,   3.38, -11.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #56 
atom(<  1.90,   2.29, -14.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #57 
atom(< -0.39,   0.60, -12.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #58 
atom(<  1.97,  -0.18, -10.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #59 
atom(<  1.99,  -0.30, -13.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #60 
atom(<  1.98,   2.23, -11.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #61 
atom(<  0.74,  -2.78,  -9.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #62 
atom(<  1.83,  -1.69,  -5.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #63 
atom(<  6.34,  -3.46,  -9.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #64 
atom(<  4.68,  -0.95,  -9.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #65 
atom(<  3.56,  -5.92,  -7.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #66 
atom(<  4.09,  -5.11,  -4.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #67 
atom(<  5.18,  -3.58,  -6.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #68 
atom(< -0.39,   6.32, -12.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #69 
atom(<  1.19,   4.96, -10.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #70 
atom(<  1.84,   4.77, -13.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #71 
atom(<  0.65,   2.13,  -9.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #72 
atom(<  0.86,   3.78,  -7.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #73 
atom(<  3.68,   2.02,  -9.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #74 
atom(<  3.87,   6.06,  -8.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #75 
atom(<  1.83,   1.05,  -6.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #76 
atom(<  3.50,   0.74,  -4.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #77 
atom(<  4.13,  -0.91,  -6.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #78 
atom(<  3.77,   3.13,  -6.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #79 
atom(<  4.57,  -2.13,  -4.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #80 
atom(<  6.27,  -2.69,  -2.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #81 
atom(<  1.43,   6.76,  -7.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #82 
atom(<  2.99,   6.29,  -2.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #83 
atom(<  3.84,   6.11,  -5.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #84 
atom(<  3.08,   3.55,  -3.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #85 
atom(<  5.68,   2.43,  -3.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #86 
atom(<  5.04,  -0.11,  -2.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #87 
atom(<  2.17,  -2.83, -14.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #88 
atom(<  4.33,   3.08, -13.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #89 
atom(<  4.26,   0.75, -15.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #90 
atom(<  4.31,   0.52, -12.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #91 
atom(<  4.80,  -1.75, -13.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #92 
atom(<  6.88,  -1.37,  -7.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #93 
atom(<  6.74,  -1.40, -11.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #94 
atom(<  3.84,   4.44, -10.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #95 
atom(<  5.76,   3.95,  -8.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #96 
atom(<  6.07,   2.60, -11.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #97 
atom(<  5.76,   1.19,  -7.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #98 
atom(<  6.31,   0.19,  -5.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #99 
atom(<  7.33,  -2.50,  -4.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #100 
atom(<  6.47,   3.05,  -5.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #101 
