#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.74*x up 11.98*y
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

atom(< -4.41,  -0.66,  -1.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.39,  -0.85,  -2.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  4.23,   2.09,  -2.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -2.19,   1.73,  -5.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -5.05,   0.73,  -6.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  4.49,   1.43,  -5.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -0.46,   1.80,  -3.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  3.77,  -3.31,  -4.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.79,  -2.11,  -5.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -1.43,   0.97,  -9.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.69,   3.69,  -3.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  2.58,  -2.40,  -1.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  1.58,  -4.38,  -8.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -3.15,  -3.93,  -8.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  2.55,   0.44,  -1.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  0.11,   4.54,  -3.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -0.85,  -4.63,  -4.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -2.91,   2.93,  -8.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -1.87,  -1.00,  -0.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  1.33,   0.71,  -8.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  4.33,  -0.69,  -2.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  2.80,   3.66,  -4.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -2.32,  -0.22,  -3.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -0.98,   3.72,  -1.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.71,  -1.32,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -3.19,  -3.63,  -5.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(< -4.37,   3.41,  -5.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  1.10,   4.69,  -6.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -0.78,  -3.73,  -9.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -2.80,  -2.86,  -2.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  1.66,  -4.54,  -5.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -2.09,  -0.64,  -7.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(< -0.85,  -4.63,  -6.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(< -4.61,   1.54,  -3.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -0.12,   1.25,  -0.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  1.66,  -4.69,  -2.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  3.58,  -0.14,  -7.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -4.62,  -1.82,  -7.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(<  2.45,   2.35,  -7.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  1.68,   3.02,  -1.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  3.59,  -3.03,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(<  1.97,  -1.56,  -5.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -4.10,   0.53,  -8.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -1.65,   4.47,  -6.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -0.35,  -3.30,  -1.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -2.67,  -1.65,  -9.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  2.11,   0.93,  -4.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  5.05,  -1.28,  -5.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(< -4.75,  -1.48,  -4.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -2.79,   1.62,  -1.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  0.26,   0.48,  -6.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  0.40,  -1.88,  -7.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -0.13,   2.88,  -8.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  2.54,  -1.88,  -9.43>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  0.02,  -1.22, -10.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
