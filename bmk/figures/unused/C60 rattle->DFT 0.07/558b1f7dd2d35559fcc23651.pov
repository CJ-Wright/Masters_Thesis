#include "colors.inc"
#include "finish.inc"

global_settings {assumed_gamma 1 max_trace_level 6}
background {color White}
camera {orthographic
  right -8.22*x up 8.48*y
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

atom(<  2.21,   0.59,  -0.84>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #0 
atom(<  3.11,   0.15,  -1.87>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #1 
atom(<  1.34,  -0.29,  -0.25>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #2 
atom(<  3.11,  -1.18,  -2.27>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #3 
atom(<  3.19,  -1.49,  -3.68>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #4 
atom(<  3.26,   1.20,  -2.83>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #5 
atom(<  3.35,   0.93,  -4.17>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #6 
atom(<  3.34,  -0.46,  -4.61>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #7 
atom(< -0.41,   1.38,  -0.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #8 
atom(<  0.48,   2.30,  -0.91>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #9 
atom(< -0.01,   0.07,   0.00>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #10 
atom(<  1.80,   1.93,  -1.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #11 
atom(<  2.44,   2.29,  -2.38>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #12 
atom(< -0.24,   3.10,  -1.85>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #13 
atom(<  0.38,   3.47,  -3.05>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #14 
atom(<  1.73,   3.05,  -3.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #15 
atom(< -2.13,  -0.82,  -0.85>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #16 
atom(< -2.57,   0.54,  -1.16>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #17 
atom(< -0.90,  -1.01,  -0.27>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #18 
atom(< -1.71,   1.58,  -0.90>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #19 
atom(< -1.61,   2.66,  -1.87>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #20 
atom(< -3.29,   0.46,  -2.40>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #21 
atom(< -3.19,   1.48,  -3.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #22 
atom(< -2.33,   2.62,  -3.06>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #23 
atom(< -0.51,  -2.99,  -1.71>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #24 
atom(< -1.84,  -2.75,  -2.29>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #25 
atom(< -0.08,  -2.14,  -0.69>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #26 
atom(< -2.60,  -1.69,  -1.88>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #27 
atom(< -3.35,  -0.89,  -2.86>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #28 
atom(< -1.70,  -3.06,  -3.70>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #29 
atom(< -2.40,  -2.30,  -4.64>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #30 
atom(< -3.22,  -1.22,  -4.19>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #31 
atom(<  2.17,  -2.12,  -1.69>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #32 
atom(<  1.70,  -3.00,  -2.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #33 
atom(<  1.30,  -1.67,  -0.71>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #34 
atom(<  0.38,  -3.41,  -2.73>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #35 
atom(< -0.36,  -3.47,  -3.96>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #36 
atom(<  2.34,  -2.60,  -3.97>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #37 
atom(<  1.62,  -2.66,  -5.17>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #38 
atom(<  0.26,  -3.11,  -5.16>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #39 
atom(< -2.19,  -0.58,  -6.20>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #40 
atom(< -1.77,  -1.91,  -5.88>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #41 
atom(< -0.46,  -2.33,  -6.15>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #42 
atom(< -1.30,   0.32,  -6.77>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #43 
atom(< -2.14,   2.11,  -5.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #44 
atom(< -3.05,   1.18,  -4.71>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #45 
atom(< -3.10,  -0.15,  -5.17>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #46 
atom(< -1.26,   1.67,  -6.34>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #47 
atom(<  0.53,   2.96,  -5.31>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #48 
atom(< -0.36,   3.41,  -4.27>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #49 
atom(< -1.70,   2.98,  -4.30>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #50 
atom(<  0.10,   2.13,  -6.32>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #51 
atom(<  2.16,   0.82,  -6.18>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #52 
atom(<  2.63,   1.71,  -5.13>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #53 
atom(<  1.83,   2.77,  -4.72>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #54 
atom(<  0.91,   1.03,  -6.74>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #55 
atom(<  0.45,  -1.39,  -6.71>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #56 
atom(<  1.76,  -1.60,  -6.11>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #57 
atom(<  2.58,  -0.52,  -5.86>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #58 
atom(<  0.05,  -0.10,  -7.02>, 0.57, rgb <0.56, 0.56, 0.56>, ase3) // #59 
