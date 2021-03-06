#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.98*x up 12.45*y
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

atom(<  0.00,  -0.00,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.00,  -0.00,  -2.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  2.58,   0.00,  -4.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  0.80,   2.45,  -4.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.09,   1.51,  -4.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -2.09,  -1.52,  -4.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  0.80,  -2.46,  -4.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(<  2.09,  -1.52,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  2.09,   1.52,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -0.80,   2.45,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.58,   0.00,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -0.80,  -2.45,  -7.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  0.00,  -0.01,  -8.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  0.00,   0.00,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  5.16,  -0.00,  -3.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  1.59,   4.91,  -3.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.17,   3.03,  -3.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -4.18,  -3.04,  -3.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  1.60,  -4.91,  -3.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  4.17,  -3.03,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  4.17,   3.03,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -1.60,   4.91,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -5.16,   0.00,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -1.60,  -4.91,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  0.00,   0.00, -11.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.58,  -0.00,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  0.80,   2.45,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -2.09,   1.52,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -2.09,  -1.52,  -1.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  0.80,  -2.46,  -1.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  3.38,   2.45,  -3.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  3.38,  -2.46,  -3.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  4.67,  -1.52,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  4.67,   1.51,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(< -1.29,   3.97,  -3.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(<  2.89,   3.97,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  0.00,   4.91,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -4.18,  -0.00,  -3.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -2.89,   3.97,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -4.67,   1.52,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(< -1.29,  -3.97,  -3.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -4.67,  -1.52,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -2.89,  -3.97,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  2.88,  -3.98,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(< -0.00,  -4.91,  -5.77>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(<  4.18,  -0.00,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  1.29,  -3.97,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  2.09,  -1.52,  -9.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  1.29,   3.97,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  2.09,   1.52,  -9.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(< -3.38,   2.45,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -0.80,   2.45,  -9.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(< -3.37,  -2.45,  -8.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -2.58,  -0.00,  -9.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(< -0.79,  -2.46,  -9.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
