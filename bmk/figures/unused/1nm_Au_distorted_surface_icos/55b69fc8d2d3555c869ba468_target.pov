#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.57*x up 12.54*y
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

atom(<  0.02,  -0.12,  -4.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  2.47,  -0.12,  -6.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(<  2.47,  -0.12,  -3.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -2.44,  -0.12,  -6.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -2.44,  -0.12,  -3.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -1.50,   2.34,  -4.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(<  1.54,   2.34,  -4.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -1.50,  -2.57,  -4.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(<  1.54,  -2.57,  -4.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.02,  -1.63,  -2.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  0.02,   1.40,  -2.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  0.02,  -1.63,  -7.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  0.02,   1.40,  -7.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  4.97,   0.03,  -7.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  4.90,  -0.18,  -5.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  4.78,  -0.21,  -1.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -4.82,  -0.47,  -7.83>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -4.97,  -0.25,  -4.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -4.68,   0.07,  -2.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(< -3.08,   4.86,  -4.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -0.08,   4.75,  -5.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  2.81,   4.95,  -4.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -3.03,  -4.82,  -4.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -0.11,  -4.95,  -4.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  3.05,  -4.71,  -5.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  0.18,  -3.13,  -0.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  0.04,  -0.51,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  0.09,   3.21,  -0.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
atom(< -0.14,  -3.25,  -9.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #28 
atom(<  0.08,  -0.22,  -9.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #29 
atom(<  0.04,   3.11,  -9.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #30 
atom(<  2.41,  -1.71,  -1.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #31 
atom(<  2.53,   1.45,  -0.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #32 
atom(<  2.43,  -1.92,  -8.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #33 
atom(<  2.40,   1.24,  -8.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #34 
atom(< -2.35,  -1.26,  -0.86>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #35 
atom(< -2.38,   1.38,  -1.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #36 
atom(< -2.44,  -1.62,  -8.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #37 
atom(< -2.47,   1.46,  -8.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #38 
atom(<  3.76,   2.57,  -6.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #39 
atom(<  4.15,   2.15,  -3.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #40 
atom(< -4.23,   2.45,  -5.94>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #41 
atom(< -4.15,   2.22,  -3.33>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #42 
atom(<  3.89,  -2.88,  -6.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #43 
atom(<  3.78,  -2.48,  -3.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #44 
atom(< -3.64,  -2.73,  -6.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #45 
atom(< -3.79,  -2.82,  -3.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #46 
atom(< -1.24,   3.53,  -2.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #47 
atom(<  1.59,   4.01,  -2.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #48 
atom(< -1.76,  -3.98,  -2.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #49 
atom(<  1.59,  -4.02,  -2.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #50 
atom(< -1.45,   3.91,  -7.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #51 
atom(<  1.91,   3.95,  -7.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #52 
atom(< -1.37,  -4.28,  -7.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #53 
atom(<  1.77,  -4.25,  -7.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #54 
