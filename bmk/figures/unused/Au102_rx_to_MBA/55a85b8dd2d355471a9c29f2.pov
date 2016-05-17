#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -16.87*x up 18.53*y
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

atom(<  1.51,  -0.79,  -3.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.47,  -0.67,  -8.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -0.98,   1.77, -10.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -3.22,   0.05,  -9.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.30,  -2.63,  -9.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  0.34,  -2.73, -10.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -1.17,   0.02,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  0.07,   1.87,  -7.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -2.21,   0.11,  -6.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -1.33,  -2.70,  -7.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -3.16,   1.53, -12.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  4.40,  -2.03,  -3.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.87,  -3.43, -12.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.37,  -1.48,  -1.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -0.24,   1.35, -13.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.32,   2.95,  -8.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.04,  -2.01,  -7.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  0.50,  -4.81,  -6.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -3.06,  -1.92,  -4.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -1.91,   2.46,  -5.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  1.77,   3.89,  -1.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -5.89,   0.59, -11.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -4.72,  -4.53, -12.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -0.32,  -4.42,  -0.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -1.87,   0.25,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.57,   5.00,  -6.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -5.19,   0.67,  -7.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -3.17,  -4.65,  -7.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -2.27,  -4.74,  -5.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -4.03,   0.75,  -4.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -2.47,   4.04, -11.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -4.82,   2.47,  -9.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -6.11,  -1.11,  -9.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -4.96,  -3.68,  -9.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -2.71,  -5.46, -10.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.10,  -5.42,  -3.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -2.32,  -3.51,  -2.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -3.34,  -0.64,  -2.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -2.42,   2.09,  -2.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  0.27,   3.90, -11.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.34,   5.08,  -8.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -4.60,   3.20,  -6.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -5.87,  -1.27,  -5.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -4.89,  -3.91,  -5.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -1.29,  -6.75,  -7.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -0.51,   7.81,  -7.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -6.85,   3.12,  -8.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -4.07,  -6.58,  -6.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  3.23,   4.83, -11.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -7.00,  -3.10,  -7.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -0.75,  -7.81,  -9.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -7.02,   1.72,  -5.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -1.39,  -0.72, -11.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  0.55,  -0.67,  -6.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  0.99,   1.66,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
atom(<  3.24,   0.05,  -5.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #55 
atom(<  2.37,  -2.70,  -5.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #56 
atom(< -0.33,  -2.73,  -4.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #57 
atom(<  1.29,   0.05, -11.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #58 
atom(<  2.29,   0.02,  -8.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #59 
atom(<  1.38,  -2.70,  -8.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #60 
atom(<  3.08,   1.59,  -2.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #61 
atom(< -4.13,  -1.67, -11.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #62 
atom(<  1.75,  -3.43,  -2.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #63 
atom(<  0.50,  -1.67, -13.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #64 
atom(<  0.28,   1.45,  -1.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #65 
atom(<  2.71,   2.67,  -6.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #66 
atom(<  4.18,  -2.09,  -7.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #67 
atom(< -0.50,  -4.75,  -9.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #68 
atom(<  3.12,  -2.01, -10.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #69 
atom(<  1.69,   2.56,  -9.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #70 
atom(< -2.10,   3.69, -14.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #71 
atom(<  5.98,   0.43,  -3.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #72 
atom(<  4.25,  -4.56,  -1.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #73 
atom(<  0.09,  -4.47, -14.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #74 
atom(<  2.16,   0.58, -15.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #75 
atom(< -0.51,   5.63,  -8.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #76 
atom(<  5.45,   0.70,  -7.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #77 
atom(<  3.14,  -4.71,  -7.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #78 
atom(<  2.18,  -4.72,  -9.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #79 
atom(<  4.33,   0.81, -10.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #80 
atom(<  2.51,   4.11,  -4.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #81 
atom(<  4.99,   2.52,  -4.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #82 
atom(<  6.19,  -1.38,  -5.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #83 
atom(<  5.01,  -3.92,  -5.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #84 
atom(<  2.73,  -5.52,  -4.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #85 
atom(<  0.03,  -5.49, -11.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #86 
atom(<  2.32,  -3.69, -12.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #87 
atom(<  3.21,  -0.76, -13.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #88 
atom(<  2.47,   2.15, -12.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #89 
atom(< -0.24,   3.99,  -3.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #90 
atom(< -2.36,   5.11,  -6.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #91 
atom(<  4.41,   3.00,  -9.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #92 
atom(<  5.80,  -1.08,  -9.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #93 
atom(<  4.98,  -3.92,  -9.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #94 
atom(<  1.39,  -6.76,  -8.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #95 
atom(<  6.71,   3.32,  -7.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #96 
atom(<  4.88,  -6.84,  -8.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #97 
atom(< -3.09,   4.63,  -3.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #98 
atom(<  7.02,  -3.47,  -7.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #99 
atom(<  0.84,  -7.75,  -5.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #100 
atom(<  6.98,   1.62,  -9.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #101 
