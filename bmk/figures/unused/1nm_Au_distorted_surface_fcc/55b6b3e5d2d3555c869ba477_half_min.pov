#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.94*x up 12.63*y
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

atom(< -5.14,  -0.40,  -0.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -4.34,   2.31,  -1.07>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -1.36,   4.65,  -1.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -1.05,  -4.99,  -0.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  1.98,  -2.15,  -0.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  4.98,   0.22,  -0.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.84,  -2.65,  -0.23>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -2.43,  -0.11,  -1.38>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.55,  -2.29,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -3.05,  -2.12,  -3.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  0.10,   0.03,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  0.66,   2.55,  -1.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  2.54,   0.37,  -1.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  0.01,   0.24,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  3.22,   2.56,  -2.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -4.95,  -0.55,  -2.51>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -2.80,   0.04,  -4.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -1.58,   2.75,  -2.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.86,   2.99,  -4.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  1.18,   4.99,  -2.18>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  1.49,  -4.40,  -1.65>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  4.32,  -2.05,  -2.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.50,  -4.91,  -2.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -1.55,  -3.46,  -4.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  1.71,  -1.92,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.30,   0.28,  -4.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  5.14,   0.42,  -3.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  0.15,   0.04,  -6.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
