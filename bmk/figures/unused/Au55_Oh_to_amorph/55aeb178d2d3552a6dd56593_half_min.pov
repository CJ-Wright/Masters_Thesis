#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.81*x up 12.67*y
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

atom(< -2.01,   3.55,  -0.78>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(<  0.19,   5.02,  -1.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.05,  -1.12,  -0.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -1.12,   1.23,  -1.48>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -5.08,  -0.24,  -1.72>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -3.62,   2.05,  -2.53>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -1.77,   1.01,  -4.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -3.46,  -2.71,  -2.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -2.08,  -1.98,  -4.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.76,   2.69,  -0.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  2.67,   3.56,  -1.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  0.58,  -0.54,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  2.16,  -2.16,  -2.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  2.06,   0.81,  -1.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -0.08,  -0.63,  -2.93>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(<  0.16,   2.82,  -2.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  2.47,  -0.98,  -4.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  1.07,  -5.02,  -2.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -0.63,  -3.05,  -1.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  0.50,  -2.93,  -4.30>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(< -0.01,  -0.64,  -5.91>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  4.50,   1.78,  -1.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  3.80,  -0.89,  -0.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  5.08,  -2.42,  -4.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  4.56,  -0.49,  -2.62>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.96,  -4.16,  -4.15>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
