#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -16.14*x up 16.98*y
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

atom(<  1.50,  -0.43,  -3.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -0.50,  -0.41,  -8.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -0.99,   2.06,  -9.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -3.33,   0.37,  -9.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.36,  -2.49,  -9.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  0.41,  -2.41, -10.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -1.27,   0.35,  -3.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -0.00,   2.19,  -7.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -2.35,   0.42,  -6.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -1.43,  -2.47,  -6.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -3.16,   1.83, -11.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  4.15,  -1.46,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -1.84,  -3.06, -12.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -0.49,  -1.22,  -1.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -0.33,   1.67, -12.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.84,   3.08,  -7.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.05,  -1.69,  -7.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  0.45,  -4.46,  -5.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -3.31,  -1.77,  -4.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -1.77,   2.82,  -5.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  1.89,   3.96,  -1.17>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -5.74,   0.81, -11.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -4.44,  -4.20, -12.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -0.31,  -3.96,  -0.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -1.91,   0.92,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.64,   4.80,  -5.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -5.09,   1.04,  -7.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -3.26,  -4.61,  -7.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -2.33,  -4.59,  -4.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -4.13,   1.05,  -4.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(< -2.62,   4.28, -10.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -4.94,   2.78,  -9.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -6.00,  -0.84,  -9.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -5.06,  -3.56,  -9.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -2.67,  -5.26, -10.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.10,  -5.16,  -3.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -2.41,  -3.27,  -2.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -3.26,  -0.54,  -1.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -2.49,   2.51,  -2.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  0.21,   4.24, -11.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.13,   5.43,  -8.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -4.44,   3.73,  -5.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -5.92,  -0.90,  -5.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -4.99,  -3.79,  -5.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -1.39,  -6.61,  -6.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  0.00,   7.07,  -7.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -6.35,   3.50,  -7.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -4.06,  -6.48,  -5.81>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  2.85,   4.96, -10.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -6.67,  -2.68,  -7.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -0.75,  -7.06,  -9.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -6.60,   1.87,  -5.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -1.50,  -0.42, -11.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  0.51,  -0.41,  -5.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  0.98,   2.06,  -4.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
atom(<  3.34,   0.38,  -5.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #55 
atom(<  2.36,  -2.49,  -4.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #56 
atom(< -0.41,  -2.42,  -3.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #57 
atom(<  1.27,   0.35, -10.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #58 
atom(<  2.36,   0.43,  -7.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #59 
atom(<  1.44,  -2.47,  -7.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #60 
atom(<  3.17,   1.82,  -2.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #61 
atom(< -4.14,  -1.47, -11.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #62 
atom(<  1.85,  -3.06,  -2.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #63 
atom(<  0.49,  -1.22, -13.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #64 
atom(<  0.33,   1.66,  -1.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #65 
atom(<  2.85,   3.08,  -6.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #66 
atom(<  4.06,  -1.69,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #67 
atom(< -0.44,  -4.46,  -8.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #68 
atom(<  3.30,  -1.77,  -9.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #69 
atom(<  1.77,   2.83,  -9.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #70 
atom(< -1.89,   3.98, -13.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #71 
atom(<  5.75,   0.82,  -2.82>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #72 
atom(<  4.44,  -4.20,  -2.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #73 
atom(<  0.32,  -3.96, -13.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #74 
atom(<  1.91,   0.92, -14.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #75 
atom(< -0.63,   4.80,  -8.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #76 
atom(<  5.10,   1.04,  -7.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #77 
atom(<  3.27,  -4.62,  -6.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #78 
atom(<  2.34,  -4.59,  -9.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #79 
atom(<  4.12,   1.06, -10.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #80 
atom(<  2.63,   4.27,  -3.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #81 
atom(<  4.94,   2.78,  -4.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #82 
atom(<  6.01,  -0.83,  -5.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #83 
atom(<  5.07,  -3.55,  -4.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #84 
atom(<  2.67,  -5.26,  -3.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #85 
atom(<  0.10,  -5.16, -11.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #86 
atom(<  2.42,  -3.27, -12.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #87 
atom(<  3.27,  -0.54, -12.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #88 
atom(<  2.48,   2.52, -12.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #89 
atom(< -0.21,   4.23,  -3.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #90 
atom(< -2.12,   5.43,  -6.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #91 
atom(<  4.44,   3.72,  -8.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #92 
atom(<  5.92,  -0.91,  -9.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #93 
atom(<  4.99,  -3.79,  -8.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #94 
atom(<  1.39,  -6.61,  -7.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #95 
atom(<  6.36,   3.50,  -6.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #96 
atom(<  4.07,  -6.49,  -8.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #97 
atom(< -2.85,   4.96,  -3.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #98 
atom(<  6.67,  -2.68,  -6.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #99 
atom(<  0.76,  -7.07,  -4.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #100 
atom(<  6.60,   1.86,  -9.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #101 