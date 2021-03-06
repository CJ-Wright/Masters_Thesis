#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -18.31*x up 17.71*y
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

atom(< -1.42,   0.04,  -7.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  1.29,  -0.24,  -8.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -0.86,  -1.79,  -9.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.07,  -2.36,  -6.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -0.71,   1.10,  -9.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  0.81,   0.17,  -5.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.33,   2.33,  -7.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -3.65,  -1.38,  -8.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  2.90,  -2.57,  -7.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  3.06,   2.03,  -8.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.41,   2.57,  -6.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  1.92,  -2.13, -10.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.73,  -2.10,  -5.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -3.48,   1.52,  -8.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  3.63,   0.02,  -6.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  2.06,   0.71, -10.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -1.99,   0.35,  -4.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -0.15,  -0.72, -11.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -0.40,  -1.96,  -3.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  2.45,  -2.16,  -4.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -2.96,  -0.32, -10.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  2.62,   2.53,  -5.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.69,   3.76,  -8.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  1.07,   3.43,  -9.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.15,   2.76,  -4.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.70,  -4.34,  -8.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -2.18,  -4.02,  -7.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -4.31,   0.30,  -5.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  4.16,  -0.59,  -9.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -2.97,  -3.22, -10.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  1.57,  -4.67,  -5.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  3.03,   0.42,  -3.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -2.65,   2.54, -11.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -0.37,  -3.55, -11.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -1.05,  -4.44,  -4.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.00,   2.19, -12.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  0.36,   0.61,  -2.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.04,   4.66,  -7.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -0.57,   4.92,  -6.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  4.78,   1.79, -10.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -4.22,   2.23,  -3.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  4.44,  -3.30, -10.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -5.46,  -2.30,  -5.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -5.25,   2.89,  -6.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  5.83,   1.21,  -7.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -6.08,   0.18,  -8.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  5.69,  -1.93,  -7.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  3.96,  -0.93, -12.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -4.37,  -0.92,  -3.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -2.19,   0.75, -13.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  1.93,  -1.70,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -2.32,  -2.10, -12.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  1.17,  -4.22,  -3.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  1.64,   4.96,  -4.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  0.05,   5.93,  -8.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
atom(< -5.00,  -3.77,  -8.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #55 
atom(<  3.41,  -5.23,  -8.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #56 
atom(< -5.37,  -1.59, -10.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #57 
atom(<  4.35,  -3.97,  -5.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #58 
atom(< -0.87,   4.76, -11.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #59 
atom(<  2.03,   2.90,  -2.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #60 
atom(<  5.19,  -1.21,  -4.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #61 
atom(< -5.25,   1.49, -10.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #62 
atom(<  2.74,   3.03, -12.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #63 
atom(< -1.97,   2.23,  -2.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #64 
atom(<  3.64,   4.43,  -9.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #65 
atom(< -2.27,   4.50,  -3.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #66 
atom(< -0.59,  -6.31,  -7.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #67 
atom(< -1.50,  -5.72,  -9.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #68 
atom(<  1.81,  -2.52, -13.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #69 
atom(< -2.88,  -3.33,  -2.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #70 
atom(<  4.78,   3.81,  -6.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #71 
atom(< -3.41,   5.11,  -6.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #72 
atom(<  2.14,  -4.86, -11.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #73 
atom(< -3.83,  -4.74,  -5.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #74 
atom(<  1.69,   0.39, -13.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #75 
atom(< -1.88,  -0.91,  -1.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #76 
atom(< -4.34,   4.15,  -9.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #77 
atom(<  5.23,   1.85,  -4.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #78 
atom(< -2.72,   6.68,  -9.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #79 
atom(<  4.46,   4.54,  -3.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #80 
atom(< -0.43,  -1.36, -15.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #81 
atom(< -0.49,  -3.60,  -0.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #82 
atom(<  1.17,   7.42,  -6.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #83 
atom(< -3.73,  -4.80, -12.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #84 
atom(<  1.68,  -7.01,  -4.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #85 
atom(< -4.25,  -6.73,  -7.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #86 
atom(<  1.82,  -7.42,  -9.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #87 
atom(<  4.20,  -0.11,  -0.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #88 
atom(< -3.79,   3.22, -13.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #89 
atom(<  0.10,   4.34, -14.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #90 
atom(<  0.84,   2.00,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #91 
atom(<  4.64,   1.39, -13.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #92 
atom(< -4.37,   0.84,  -0.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #93 
atom(<  7.70,   0.24,  -5.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #94 
atom(< -7.23,   3.21,  -8.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #95 
atom(< -7.70,  -2.37,  -8.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #96 
atom(<  6.41,  -4.83,  -7.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #97 
atom(<  6.66,   3.95,  -9.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #98 
atom(< -5.26,   5.14,  -4.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #99 
atom(< -5.75,  -3.86,  -3.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #100 
atom(<  4.35,  -3.97, -13.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #101 
