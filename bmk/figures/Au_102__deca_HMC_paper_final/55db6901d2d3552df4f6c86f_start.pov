#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -16.46*x up 16.30*y
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

atom(< -2.95,  -3.36, -12.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -1.79,  -1.98,  -9.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -0.63,  -0.61,  -7.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.53,   0.77,  -5.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  1.69,   2.14,  -3.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.85,   3.52,  -0.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -0.29,  -2.25, -12.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  0.87,  -0.88, -10.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  2.03,   0.50,  -7.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  3.19,   1.87,  -5.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  4.35,   3.25,  -3.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -2.64,  -0.49, -12.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.48,   0.88,  -9.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.32,   2.26,  -7.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.84,   3.64,  -5.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  2.00,   5.01,  -3.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.62,  -1.74, -10.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -3.46,  -0.37,  -8.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -2.30,   1.01,  -5.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -1.13,   2.39,  -3.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  0.03,   3.76,  -1.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -3.49,  -4.28,  -9.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -2.33,  -2.90,  -7.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -1.17,  -1.53,  -4.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.01,  -0.15,  -2.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  1.15,   1.23,  -0.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -0.82,  -4.59, -10.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  0.34,  -3.22,  -8.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  1.50,  -1.84,  -6.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  2.66,  -0.47,  -3.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  3.82,   0.91,  -1.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  2.36,  -1.15, -12.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  3.52,   0.23, -10.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  4.68,   1.60,  -8.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  5.84,   2.98,  -5.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.02,   0.61, -12.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  1.18,   1.99, -10.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.34,   3.36,  -7.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  3.50,   4.74,  -5.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -2.33,   2.37, -12.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -1.17,   3.75, -10.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -0.01,   5.13,  -7.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  1.15,   6.50,  -5.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -4.30,   1.12, -10.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -3.14,   2.50,  -8.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -1.98,   3.88,  -5.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -0.82,   5.25,  -3.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -6.28,  -0.13,  -8.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -5.12,   1.25,  -6.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -3.96,   2.63,  -4.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -2.80,   4.00,  -1.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -5.15,  -2.66,  -7.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -3.99,  -1.28,  -5.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -2.83,   0.09,  -3.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -1.67,   1.47,  -0.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
atom(< -4.03,  -5.19,  -6.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #55 
atom(< -2.87,  -3.82,  -4.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #56 
atom(< -1.71,  -2.44,  -2.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #57 
atom(< -0.55,  -1.07,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #58 
atom(< -1.36,  -5.51,  -7.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #59 
atom(< -0.20,  -4.13,  -5.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #60 
atom(<  0.96,  -2.76,  -3.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #61 
atom(<  2.12,  -1.38,  -1.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #62 
atom(<  1.31,  -5.83,  -9.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #63 
atom(<  2.47,  -4.45,  -6.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #64 
atom(<  3.63,  -3.07,  -4.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #65 
atom(<  4.79,  -1.70,  -2.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #66 
atom(<  1.84,  -3.49, -10.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #67 
atom(<  3.00,  -2.11,  -8.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #68 
atom(<  4.16,  -0.74,  -6.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #69 
atom(<  5.32,   0.64,  -4.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #70 
atom(<  2.67,   1.72, -12.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #71 
atom(<  3.83,   3.09, -10.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #72 
atom(<  4.99,   4.47,  -8.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #73 
atom(<  0.33,   3.48, -12.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #74 
atom(<  1.49,   4.86, -10.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #75 
atom(<  2.65,   6.23,  -7.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #76 
atom(< -3.99,   3.99, -10.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #77 
atom(< -2.83,   5.37,  -8.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #78 
atom(< -1.67,   6.74,  -6.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #79 
atom(< -5.97,   2.74,  -8.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #80 
atom(< -4.81,   4.12,  -6.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #81 
atom(< -3.65,   5.49,  -4.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #82 
atom(< -6.82,  -1.04,  -6.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #83 
atom(< -5.66,   0.33,  -3.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #84 
atom(< -4.50,   1.71,  -1.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #85 
atom(< -5.69,  -3.58,  -5.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #86 
atom(< -4.53,  -2.20,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #87 
atom(< -3.37,  -0.83,  -0.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #88 
atom(< -1.89,  -6.43,  -5.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #89 
atom(< -0.73,  -5.05,  -3.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #90 
atom(<  0.43,  -3.68,  -0.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #91 
atom(<  0.78,  -6.74,  -6.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #92 
atom(<  1.94,  -5.37,  -4.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #93 
atom(<  3.10,  -3.99,  -1.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #94 
atom(<  3.97,  -4.72,  -9.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #95 
atom(<  5.13,  -3.35,  -7.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #96 
atom(<  6.29,  -1.97,  -4.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #97 
atom(<  4.50,  -2.38, -11.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #98 
atom(<  5.66,  -1.01,  -8.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #99 
atom(<  6.82,   0.37,  -6.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #100 
atom(< -0.55,  -1.07, -14.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #101 
