#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.18*x up 13.76*y
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

atom(<  0.48,   5.08,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -4.23,   1.15,  -0.70>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -2.24,   5.53,  -0.45>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -1.58,  -5.53,  -0.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  2.05,  -2.30,  -0.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  4.78,   0.19,  -0.60>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.54,  -2.25,  -3.22>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -0.55,  -2.94,  -0.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -2.37,  -0.88,  -0.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.16,  -0.28,  -0.02>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(< -0.27,  -0.65,  -2.76>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  2.20,   0.13,  -1.73>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(< -0.24,   1.97,  -1.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  2.20,   3.03,  -2.54>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -4.78,  -1.23,  -2.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.38,  -0.02,  -4.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -2.64,   2.48,  -2.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -0.52,   2.61,  -4.66>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(< -0.64,   4.55,  -2.58>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  1.73,  -4.01,  -2.26>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  3.79,  -4.46,  -0.42>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  4.13,  -2.19,  -1.99>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -0.73,  -4.29,  -3.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -0.39,  -2.06,  -5.12>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  2.12,  -1.69,  -3.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  1.66,   0.99,  -4.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  4.24,   0.27,  -3.32>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(< -0.21,   0.47,  -6.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
