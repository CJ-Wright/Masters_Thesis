#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.27*x up 12.01*y
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

atom(< -3.33,  -3.48,  -1.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -4.76,  -1.37,  -2.69>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -3.31,   0.77,  -3.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -2.78,  -0.80,  -0.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -4.82,   1.07,  -1.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -1.97,   1.95,  -0.84>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -3.77,   3.26,  -2.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -4.15,   3.45,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.88,  -4.70,  -2.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.47,  -2.82,  -3.80>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  1.27,  -4.36,  -0.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(< -0.34,  -2.14,  -1.20>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -2.08,  -1.75,  -3.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  1.71,  -0.49,  -4.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(<  2.01,  -0.83,  -1.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -0.39,   0.47,  -2.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  0.20,   0.38,  -0.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  1.71,   2.12,  -1.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -0.93,   0.06,  -5.13>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  1.14,   2.27,  -4.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -1.44,   4.51,  -1.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  2.88,   4.70,  -0.35>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  3.59,  -2.89,  -0.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  3.33,  -2.67,  -3.67>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  3.63,   1.03,  -3.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  4.82,  -0.40,  -1.21>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  4.40,   2.46,  -0.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  3.24,   3.80,  -3.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
