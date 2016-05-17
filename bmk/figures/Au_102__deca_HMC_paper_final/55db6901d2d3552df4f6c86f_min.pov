#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -16.39*x up 17.40*y
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

atom(< -2.15,  -4.29, -13.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -1.41,  -2.92, -10.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -0.40,  -1.89,  -8.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.43,  -0.08,  -6.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  1.39,   2.15,  -3.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  1.88,   3.94,  -1.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.33,  -2.87, -13.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  1.12,  -1.57, -10.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  2.08,   0.02,  -8.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  2.89,   1.55,  -6.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  3.90,   3.78,  -3.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -2.20,  -1.34, -13.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.33,  -0.04, -10.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.52,   1.37,  -8.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  0.43,   3.08,  -6.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  1.14,   4.98,  -4.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.21,  -2.92, -11.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -3.43,  -1.52,  -9.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -2.40,   0.02,  -6.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -1.39,   1.83,  -4.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -0.82,   3.57,  -2.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -2.83,  -5.37, -10.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -2.09,  -3.98,  -8.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -1.01,  -2.13,  -5.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.02,  -0.36,  -3.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.71,   1.41,  -1.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -0.16,  -5.38, -11.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  0.83,  -4.19,  -9.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  1.83,  -2.40,  -6.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  2.69,  -0.33,  -4.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  3.47,   1.39,  -1.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  2.80,  -1.45, -13.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  3.76,   0.02, -10.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  4.68,   1.47,  -8.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  5.71,   4.15,  -5.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  0.33,  -0.03, -13.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  1.18,   1.36, -10.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  2.13,   2.97,  -8.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  2.94,   4.57,  -6.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -2.15,   1.48, -13.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -1.40,   3.03, -10.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -0.71,   5.09,  -8.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  0.84,   6.72,  -6.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -4.18,   0.02, -11.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -3.26,   1.40,  -9.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -2.43,   3.00,  -6.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -1.48,   4.82,  -5.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -6.41,  -1.88, -10.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -5.29,   0.06,  -7.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -4.20,   1.70,  -4.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -3.53,   3.57,  -1.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -4.88,  -4.03,  -9.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -3.97,  -2.43,  -6.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -2.77,  -0.56,  -3.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -1.96,   1.08,  -1.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
atom(< -3.53,  -6.41,  -8.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #55 
atom(< -3.29,  -5.95,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #56 
atom(< -1.43,  -2.85,  -2.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #57 
atom(< -0.56,  -1.22,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #58 
atom(< -0.82,  -6.53,  -9.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #59 
atom(<  0.16,  -4.75,  -6.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #60 
atom(<  1.34,  -2.87,  -3.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #61 
atom(<  2.12,  -1.14,  -1.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #62 
atom(<  1.91,  -7.12,  -9.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #63 
atom(<  3.12,  -5.08,  -7.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #64 
atom(<  4.04,  -2.81,  -4.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #65 
atom(<  4.93,  -1.02,  -2.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #66 
atom(<  2.55,  -3.87, -11.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #67 
atom(<  3.38,  -2.46,  -9.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #68 
atom(<  4.32,  -0.87,  -6.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #69 
atom(<  5.27,   1.19,  -4.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #70 
atom(<  2.81,   1.42, -13.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #71 
atom(<  3.67,   2.86, -11.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #72 
atom(<  4.70,   4.35,  -8.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #73 
atom(<  0.29,   2.84, -13.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #74 
atom(<  1.14,   4.23, -10.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #75 
atom(<  2.17,   5.91,  -8.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #76 
atom(< -4.17,   2.86, -11.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #77 
atom(< -3.30,   4.27,  -9.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #78 
atom(< -1.82,   7.27,  -6.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #79 
atom(< -6.06,   1.43, -10.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #80 
atom(< -5.16,   2.91,  -7.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #81 
atom(< -4.31,   4.58,  -5.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #82 
atom(< -6.78,  -2.29,  -7.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #83 
atom(< -5.44,  -0.89,  -4.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #84 
atom(< -4.73,   1.02,  -2.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #85 
atom(< -5.38,  -4.81,  -6.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #86 
atom(< -4.02,  -3.31,  -3.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #87 
atom(< -3.37,  -1.35,  -1.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #88 
atom(< -1.34,  -7.21,  -6.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #89 
atom(< -0.41,  -5.30,  -3.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #90 
atom(<  0.86,  -3.75,  -1.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #91 
atom(<  1.53,  -7.27,  -6.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #92 
atom(<  2.26,  -5.43,  -4.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #93 
atom(<  3.34,  -4.56,  -2.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #94 
atom(<  4.90,  -4.73,  -9.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #95 
atom(<  5.41,  -3.30,  -7.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #96 
atom(<  6.52,  -1.40,  -4.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #97 
atom(<  5.09,  -2.38, -11.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #98 
atom(<  6.07,  -1.06,  -9.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #99 
atom(<  6.78,   0.63,  -6.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #100 
atom(< -0.56,  -1.22, -15.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #101 
