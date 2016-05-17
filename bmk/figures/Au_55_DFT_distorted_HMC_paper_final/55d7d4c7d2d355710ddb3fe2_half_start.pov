#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.34*x up 12.34*y
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

atom(< -4.86,  -0.79,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -4.43,   1.72,  -1.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -3.87,   4.04,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(< -1.55,   4.60,  -1.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(< -0.79,  -4.86,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(<  2.11,  -1.94,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -2.82,  -2.82,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -0.34,  -2.36,  -1.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -2.36,  -0.34,  -1.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(<  0.08,   0.08,  -2.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  2.54,   0.51,  -1.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  0.51,   2.54,  -1.44>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  3.04,   3.04,  -0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  2.99,   2.99,  -2.88>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -4.69,  -0.73,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.39,  -0.32,  -4.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -2.00,   2.17,  -2.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(<  0.49,   2.56,  -4.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.90,   4.86,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  1.72,  -4.43,  -1.46>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  4.60,  -1.55,  -1.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(< -0.73,  -4.69,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -0.32,  -2.39,  -4.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(<  2.17,  -2.00,  -2.95>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  2.56,   0.49,  -4.34>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  4.86,   0.90,  -2.79>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  0.09,   0.09,  -5.59>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
