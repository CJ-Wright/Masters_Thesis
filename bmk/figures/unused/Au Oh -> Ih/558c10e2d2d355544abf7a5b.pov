#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -13.65*x up 14.65*y
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

atom(< -2.38,  -2.12,  -9.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -2.28,  -4.28,  -6.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -4.20,  -2.19,  -6.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -4.52,  -4.01,  -4.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.23,  -2.04,  -4.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -2.28,  -4.44,  -2.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -4.90,  -1.15,  -3.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -3.13,  -1.90,  -1.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -4.01,   0.17,  -8.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -3.11,   2.91,  -9.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -2.47,   0.34,  -6.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -4.36,   2.60,  -7.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -4.14,   1.35,  -4.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -2.09,   2.87,  -4.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -2.59,   0.47,  -2.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -4.47,   2.82,  -2.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.77,   0.52,  -0.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -2.88,   3.79,  -0.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -2.60,   5.06,  -7.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -5.48,   5.08,  -2.96>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -1.39,   5.24,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -1.08,  -5.96,  -8.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  1.55,  -1.46,  -8.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  0.83,  -4.15,  -6.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(< -0.51,  -1.51,  -6.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(< -0.39,  -4.51,  -4.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  1.85,  -1.24,  -4.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  2.76,  -3.95,  -2.52>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(<  0.37,  -2.07,  -2.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(< -0.70,  -3.38,  -0.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  1.77,  -1.76,  -0.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(< -0.09,   0.52, -10.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  1.51,   2.99,  -8.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  1.76,   0.50,  -6.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  0.40,   2.80,  -5.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -0.36,   0.39,  -4.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(<  1.72,   2.45,  -3.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(<  1.83,   0.48,  -2.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -0.45,   2.52,  -1.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(< -0.46,  -0.01,  -0.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  2.17,   2.50,  -0.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -0.20,   5.15, -10.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(<  2.18,   5.96,  -8.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(< -0.42,   5.64,  -5.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  1.38,   4.52,  -2.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -0.08,   4.23,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(<  5.48,  -0.99,  -7.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(<  4.09,  -2.29,  -4.57>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  5.48,  -2.78,  -1.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(<  4.29,   1.71,  -9.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  3.81,   2.78,  -6.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(<  3.47,   0.67,  -4.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  4.39,   2.03,  -2.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(<  3.73,  -0.08,  -0.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  3.50,   4.58,  -4.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
