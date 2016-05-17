#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.62*x up 12.50*y
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

atom(< -4.86,  -0.68,  -0.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -4.02,   1.73,  -1.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -1.15,   4.91,  -1.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -0.81,  -4.93,  -0.09>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  2.22,  -2.10,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -2.55,  -2.90,  -0.08>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.51,  -2.40,  -2.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -0.29,  -2.39,  -1.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -2.23,  -0.28,  -1.24>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.18,   0.07,  -2.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  2.69,   0.36,  -1.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  0.75,   2.47,  -1.28>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  3.43,   2.93,  -2.90>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(< -4.99,  -0.25,  -2.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -2.26,   0.05,  -4.11>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -1.62,   2.42,  -2.92>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(<  0.95,   2.64,  -4.01>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  1.16,   4.93,  -2.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  1.75,  -4.34,  -1.68>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  4.03,  -4.28,  -0.16>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  4.63,  -1.93,  -1.56>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -0.78,  -4.77,  -2.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(<  0.01,  -2.32,  -4.25>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  2.35,  -2.56,  -3.19>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  2.56,   0.34,  -4.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  4.99,   0.84,  -2.75>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  0.35,   0.02,  -5.49>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
