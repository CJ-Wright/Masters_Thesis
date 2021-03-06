#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -23.36*x up 22.37*y
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

atom(< -8.62,  -3.81, -14.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -8.60,  -3.64,  -9.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -9.36,  -5.79,  -7.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -7.84,  -1.59, -15.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -9.76,  -0.89, -13.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -9.13,   4.01,  -8.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -7.78,  -1.69, -11.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -6.92,   0.31, -13.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -9.51,  -0.92, -10.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -8.71,   0.96,  -7.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -7.66,  -1.72,  -7.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -6.97,   0.15,  -9.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<-10.10,  -2.96, -12.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -7.64,  -1.90,  -3.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -6.77,   0.06,  -5.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -6.12,   2.16, -15.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.34,   1.59, -17.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -8.49,   4.91, -11.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -6.13,   2.05, -11.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -5.40,   3.96, -13.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -7.60,   2.66,  -9.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -6.83,   4.72,  -7.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -6.06,   1.95,  -7.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -5.34,   3.88,  -9.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -3.80,   1.16,  -1.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -6.82,  -0.08,  -1.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -5.05,   3.85,  -5.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -3.75,   7.74, -13.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -2.69,   9.44, -11.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -4.53,   5.81, -11.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -0.89,   8.61, -13.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -6.58,   6.83, -13.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -4.45,   5.71,  -7.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -6.39,   6.62, -10.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -7.09,   4.49,  -3.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -4.51,   5.67,  -3.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -6.34,   6.51,  -5.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -6.14,  -1.83, -18.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -7.11,  -6.27, -14.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -6.69,  -4.35, -11.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -6.53,  -8.52, -10.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -4.88,  -5.10, -14.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -8.16,  -8.20, -12.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -7.38,  -6.02, -10.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -5.56,  -7.10,  -7.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -4.76,  -5.23,  -9.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -7.43,  -6.50,  -5.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -8.49,  -3.72,  -5.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -4.67,  -5.32,  -5.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -7.41,   0.32, -17.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -5.23,  -0.49, -15.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -4.86,  -4.66, -18.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -3.14,  -0.95, -18.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -5.97,  -2.44, -13.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -5.12,  -0.62, -11.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
atom(< -4.02,  -3.30, -11.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #55 
atom(< -3.27,  -1.38, -14.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #56 
atom(< -5.87,  -2.55,  -9.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #57 
atom(< -5.03,  -0.71,  -7.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #58 
atom(< -3.92,  -3.40,  -7.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #59 
atom(< -3.16,  -1.45,  -9.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #60 
atom(< -5.76,  -2.61,  -5.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #61 
atom(< -4.92,  -0.81,  -3.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #62 
atom(< -3.02,  -1.39,  -1.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #63 
atom(< -4.68,  -5.85,  -1.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #64 
atom(< -5.75,  -2.74,  -1.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #65 
atom(< -3.78,  -3.51,  -3.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #66 
atom(< -0.41,   0.05, -18.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #67 
atom(< -2.09,   7.05, -16.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #68 
atom(< -2.52,   0.51, -16.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #69 
atom(< -2.32,   3.04, -15.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #70 
atom(< -4.32,   1.27, -13.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #71 
atom(< -3.47,   3.12, -11.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #72 
atom(< -2.42,   0.44, -11.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #73 
atom(< -1.70,   2.39, -13.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #74 
atom(< -4.21,   1.17,  -9.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #75 
atom(< -3.38,   3.04,  -7.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #76 
atom(< -2.31,   0.37,  -7.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #77 
atom(< -1.54,   2.28,  -9.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #78 
atom(< -4.15,   1.10,  -5.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #79 
atom(< -2.97,   2.96,  -3.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #80 
atom(< -2.28,   0.33,  -3.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #81 
atom(< -1.48,   2.19,  -5.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #82 
atom(< -1.99,  -4.32,  -2.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #83 
atom(< -1.09,   2.17,  -1.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #84 
atom(< -0.13,   4.50, -16.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #85 
atom(<  0.79,   8.36, -15.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #86 
atom(<  2.66,   5.19, -16.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #87 
atom(< -2.79,   5.07, -13.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #88 
atom(< -1.90,   6.89, -11.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #89 
atom(< -0.82,   4.24, -11.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #90 
atom(<  1.73,   5.58, -14.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #91 
atom(< -2.67,   4.96,  -9.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #92 
atom(< -1.78,   6.80,  -7.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #93 
atom(< -0.70,   4.13,  -7.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #94 
atom(<  0.03,   6.06,  -9.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #95 
atom(< -2.53,   4.87,  -5.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #96 
atom(< -1.88,   6.89,  -3.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #97 
atom(< -0.81,   4.24,  -3.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #98 
atom(<  0.09,   5.92,  -5.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #99 
atom(< -2.33,   5.11,  -1.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #100 
atom(< -3.74,   7.69,  -9.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #101 
atom(<  1.42,   7.27, -12.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #102 
atom(<  3.42,   9.26, -11.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #103 
atom(<  0.72,   7.80,  -8.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #104 
atom(< -1.10,   8.86,  -9.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #105 
atom(< -3.16,  -5.61, -16.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #106 
atom(< -5.63,  -7.03, -12.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #107 
atom(< -3.00,  -6.00, -12.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #108 
atom(< -1.94,  -8.64, -12.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #109 
atom(< -1.14,  -6.75, -14.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #110 
atom(< -3.71,  -7.89, -10.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #111 
atom(< -2.88,  -6.06,  -7.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #112 
atom(< -1.84,  -8.72,  -8.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #113 
atom(< -1.05,  -6.79, -10.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #114 
atom(< -3.58,  -7.94,  -5.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #115 
atom(< -2.84,  -5.97,  -4.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #116 
atom(< -0.89,  -6.91,  -6.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #117 
atom(< -1.53,   2.70, -18.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #118 
atom(< -1.47,  -2.15, -16.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #119 
atom(< -0.39,  -4.85, -16.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #120 
atom(<  0.36,  -2.90, -18.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #121 
atom(< -2.24,  -4.08, -14.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #122 
atom(< -1.35,  -2.22, -12.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #123 
atom(< -0.28,  -4.90, -12.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #124 
atom(<  0.46,  -2.98, -14.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #125 
atom(< -2.10,  -4.14, -10.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #126 
atom(< -1.25,  -2.28,  -7.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #127 
atom(< -0.18,  -4.96,  -8.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #128 
atom(<  0.60,  -3.06, -10.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #129 
atom(< -2.00,  -4.21,  -5.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #130 
atom(< -1.13,  -2.36,  -3.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #131 
atom(< -0.08,  -5.08,  -3.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #132 
atom(<  0.66,  -3.10,  -5.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #133 
atom(<  0.04,  -4.84,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #134 
atom(<  0.95,  -3.16,  -2.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #135 
atom(<  0.16,   1.65, -16.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #136 
atom(<  1.36,  -0.38, -20.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #137 
atom(<  1.21,  -1.09, -16.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #138 
atom(<  3.89,   0.02, -16.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #139 
atom(< -0.63,  -0.33, -14.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #140 
atom(<  0.25,   1.51, -12.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #141 
atom(<  1.31,  -1.16, -12.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #142 
atom(<  2.02,   0.81, -14.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #143 
atom(< -0.51,  -0.40,  -9.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #144 
atom(<  0.34,   1.44,  -7.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #145 
atom(<  1.42,  -1.24,  -8.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #146 
atom(<  2.18,   0.69, -10.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #147 
atom(< -0.36,  -0.46,  -5.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #148 
atom(<  0.54,   1.41,  -3.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #149 
atom(<  4.61,  -4.85,  -1.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #150 
atom(<  2.30,   0.62,  -6.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #151 
atom(<  0.33,   1.25,  -0.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #152 
atom(<  2.37,   0.57,  -1.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #153 
atom(< -0.07,   6.14, -13.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #154 
atom(<  2.80,   2.69, -16.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #155 
atom(<  4.67,   1.93, -18.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #156 
atom(<  1.04,   3.47, -14.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #157 
atom(<  1.86,   5.28, -11.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #158 
atom(<  2.90,   2.59, -12.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #159 
atom(<  3.73,   4.58, -14.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #160 
atom(<  1.15,   3.37,  -9.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #161 
atom(<  1.90,   5.15,  -7.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #162 
atom(<  3.05,   2.52,  -8.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #163 
atom(<  3.82,   4.47,  -9.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #164 
atom(<  1.26,   3.29,  -5.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #165 
atom(<  2.16,   5.16,  -3.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #166 
atom(<  3.15,   2.47,  -3.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #167 
atom(<  4.69,   6.31,  -8.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #168 
atom(<  1.43,   3.37,  -2.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #169 
atom(<  3.13,   7.41, -14.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #170 
atom(<  4.55,   6.41, -12.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #171 
atom(<  3.03,   7.22, -10.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #172 
atom(<  6.38,   5.30,  -9.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #173 
atom(<  2.55,   7.30,  -6.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #174 
atom(<  0.73,  -7.73, -16.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #175 
atom(<  0.23,  -9.36, -14.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #176 
atom(<  0.76,  -7.54, -12.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #177 
atom(<  2.65,  -8.30, -14.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #178 
atom(<  0.07,  -9.63, -10.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #179 
atom(<  0.89,  -7.63,  -8.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #180 
atom(<  2.67,  -8.43, -10.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #181 
atom(<  0.19,  -9.36,  -6.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #182 
atom(<  1.14,  -7.78,  -3.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #183 
atom(<  5.67,  -7.41,  -5.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #184 
atom(< -2.52,  -3.75, -18.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #185 
atom(<  2.27,  -3.75, -16.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #186 
atom(<  1.06,  -5.73, -18.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #187 
atom(<  1.51,  -5.66, -14.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #188 
atom(<  2.39,  -3.80, -12.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #189 
atom(<  3.48,  -6.48, -12.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #190 
atom(<  4.21,  -4.59, -14.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #191 
atom(<  1.68,  -5.74, -10.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #192 
atom(<  2.50,  -3.87,  -8.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #193 
atom(<  3.56,  -6.54,  -8.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #194 
atom(<  4.32,  -4.65, -10.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #195 
atom(<  1.75,  -5.79,  -6.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #196 
atom(<  2.59,  -3.89,  -4.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #197 
atom(<  3.93,  -6.39,  -4.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #198 
atom(<  4.38,  -4.62,  -6.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #199 
atom(<  1.91,  -5.69,  -1.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #200 
atom(<  2.98,  -1.69, -18.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #201 
atom(<  3.32,  -6.45, -16.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #202 
atom(<  4.93,  -2.68, -16.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #203 
atom(<  3.11,  -1.92, -14.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #204 
atom(<  4.02,  -0.07, -12.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #205 
atom(<  5.02,  -2.75, -12.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #206 
atom(<  5.83,  -0.82, -14.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #207 
atom(<  3.27,  -1.98, -10.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #208 
atom(<  4.11,  -0.16,  -8.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #209 
atom(<  5.18,  -2.86,  -8.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #210 
atom(<  5.92,  -0.93, -10.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #211 
atom(<  3.38,  -2.06,  -6.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #212 
atom(<  4.27,  -0.22,  -4.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #213 
atom(<  8.95,  -4.58, -12.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #214 
atom(<  6.04,  -0.93,  -6.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #215 
atom(<  3.51,  -1.84,  -2.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #216 
atom(<  5.74,  -0.18, -18.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #217 
atom(<  5.49,   3.74, -16.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #218 
atom(<  6.55,   1.12, -16.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #219 
atom(<  4.74,   1.84, -14.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #220 
atom(<  5.60,   3.69, -12.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #221 
atom(<  6.68,   1.05, -12.31>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #222 
atom(<  7.42,   2.92, -14.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #223 
atom(<  4.87,   1.76, -10.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #224 
atom(<  7.27,   2.92, -10.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #225 
atom(<  8.59,   0.20, -10.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #226 
atom(<  9.37,   2.05, -12.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #227 
atom(<  4.95,   1.68,  -6.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #228 
atom(<  0.39,   6.04,  -1.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #229 
atom(<  7.93,  -1.73,  -8.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #230 
atom(<  6.87,   0.89,  -8.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #231 
atom(<  4.92,   1.31,  -1.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #232 
atom(<  6.39,   5.64, -14.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #233 
atom(<  2.02,   9.63, -10.14>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #234 
atom(<  6.97,   0.76,  -3.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #235 
atom(<  5.31,  -7.34, -10.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #236 
atom(<  6.15,  -5.43, -12.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #237 
atom(<  3.02,  -8.50,  -6.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #238 
atom(<  6.26,  -5.50,  -8.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #239 
atom(<  5.33,  -2.81,  -4.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #240 
atom(<  6.83,  -3.51, -14.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #241 
atom(<  7.73,  -1.63, -12.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #242 
atom(<  7.02,  -3.56, -10.27>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #243 
atom(<  9.83,  -2.67, -10.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #244 
atom(<  7.13,  -3.63,  -6.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #245 
atom(<  7.29,  -1.47, -16.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #246 
atom(< 10.10,  -0.50, -12.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #247 
atom(<  5.76,   3.59,  -8.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #248 
