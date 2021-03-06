#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -12.34*x up 11.83*y
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

atom(< -4.77,   1.70,  -1.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #0 
atom(< -1.92,   4.55,  -1.36>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #1 
atom(< -1.11,  -4.61,  -0.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #2 
atom(<  1.88,  -1.90,  -0.04>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #3 
atom(<  4.64,   0.96,  -0.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #4 
atom(< -3.14,  -2.74,  -2.85>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #5 
atom(< -0.61,  -2.30,  -1.40>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #6 
atom(< -2.62,  -0.24,  -1.37>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #7 
atom(< -0.12,   0.16,   0.00>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #8 
atom(< -0.20,   0.13,  -2.87>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #9 
atom(<  2.29,   0.54,  -1.50>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #10 
atom(<  0.29,   2.59,  -1.47>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #11 
atom(<  2.75,   3.41,  -0.10>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #12 
atom(<  3.11,   3.03,  -2.98>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #13 
atom(< -4.86,  -0.12,  -2.55>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #14 
atom(< -2.74,  -0.19,  -4.05>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #15 
atom(< -2.14,   2.15,  -2.63>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #16 
atom(< -0.09,   2.62,  -4.29>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #17 
atom(<  0.86,   4.61,  -2.97>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #18 
atom(<  1.65,  -4.56,  -1.41>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #19 
atom(<  4.09,  -4.11,  -0.03>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #20 
atom(<  4.09,  -1.66,  -1.71>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #21 
atom(< -1.21,  -4.40,  -2.61>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #22 
atom(< -0.78,  -2.44,  -4.39>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #23 
atom(<  1.75,  -2.08,  -3.06>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #24 
atom(<  2.20,   0.18,  -4.74>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #25 
atom(<  4.86,   0.84,  -2.89>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #26 
atom(<  0.06,   0.04,  -5.64>, 1.02, rgb <1.00, 0.82, 0.14>, ase3) // #27 
