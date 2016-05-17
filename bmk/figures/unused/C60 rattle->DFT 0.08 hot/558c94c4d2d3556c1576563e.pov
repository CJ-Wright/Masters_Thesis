#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -8.28*x up 8.38*y
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

atom(<  2.37,   0.46,  -0.96>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #0 
atom(<  3.21,  -0.10,  -2.03>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #1 
atom(<  1.49,  -0.37,  -0.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #2 
atom(<  3.05,  -1.41,  -2.42>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #3 
atom(<  3.00,  -1.75,  -3.86>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #4 
atom(<  3.36,   0.89,  -2.99>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #5 
atom(<  3.37,   0.57,  -4.37>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #6 
atom(<  3.20,  -0.81,  -4.79>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #7 
atom(< -0.15,   1.50,  -0.35>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #8 
atom(<  0.81,   2.34,  -0.98>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #9 
atom(<  0.18,   0.17,   0.00>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #10 
atom(<  2.06,   1.86,  -1.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #11 
atom(<  2.67,   2.12,  -2.60>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #12 
atom(<  0.17,   3.16,  -1.92>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #13 
atom(<  0.70,   3.42,  -3.20>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #14 
atom(<  2.02,   2.91,  -3.51>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #15 
atom(< -2.06,  -0.55,  -0.79>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #16 
atom(< -2.38,   0.78,  -1.13>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #17 
atom(< -0.80,  -0.84,  -0.25>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #18 
atom(< -1.44,   1.78,  -0.86>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #19 
atom(< -1.25,   2.82,  -1.87>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #20 
atom(< -3.18,   0.83,  -2.27>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #21 
atom(< -3.02,   1.78,  -3.27>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #22 
atom(< -2.05,   2.79,  -3.01>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #23 
atom(< -1.07,  -3.39,  -1.42>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #24 
atom(< -1.97,  -2.56,  -2.18>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #25 
atom(< -0.11,  -2.02,  -0.67>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #26 
atom(< -2.68,  -1.42,  -1.73>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #27 
atom(< -3.37,  -0.57,  -2.71>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #28 
atom(< -2.01,  -2.89,  -3.58>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #29 
atom(< -2.65,  -2.10,  -4.51>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #30 
atom(< -3.36,  -0.88,  -4.04>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #31 
atom(<  2.06,  -2.24,  -1.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #32 
atom(<  1.44,  -3.11,  -2.76>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #33 
atom(<  1.29,  -1.75,  -0.77>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #34 
atom(<  0.09,  -3.40,  -2.69>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #35 
atom(< -0.67,  -3.42,  -3.89>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #36 
atom(<  2.06,  -2.84,  -4.04>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #37 
atom(<  1.30,  -2.82,  -5.21>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #38 
atom(< -0.10,  -3.17,  -5.12>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #39 
atom(< -2.38,  -0.40,  -6.10>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #40 
atom(< -2.06,  -1.76,  -5.79>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #41 
atom(< -0.81,  -2.33,  -6.07>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #42 
atom(< -1.42,   0.39,  -6.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #43 
atom(< -1.99,   2.28,  -5.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #44 
atom(< -3.01,   1.45,  -4.65>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #45 
atom(< -3.17,   0.13,  -5.06>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #46 
atom(< -1.24,   1.73,  -6.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #47 
atom(<  0.74,   2.90,  -5.41>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #48 
atom(< -0.11,   3.40,  -4.36>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #49 
atom(< -1.45,   3.10,  -4.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #50 
atom(<  0.20,   2.11,  -6.40>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #51 
atom(<  2.11,   0.58,  -6.33>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #52 
atom(<  2.74,   1.39,  -5.33>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #53 
atom(<  2.06,   2.57,  -4.89>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #54 
atom(<  0.83,   0.86,  -6.83>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #55 
atom(<  0.13,  -1.47,  -6.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #56 
atom(<  1.44,  -1.79,  -6.18>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #57 
atom(<  2.40,  -0.78,  -5.99>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #58 
atom(< -0.14,  -0.17,  -7.04>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #59 
