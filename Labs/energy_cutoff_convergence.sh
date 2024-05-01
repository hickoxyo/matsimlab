#!/bin/bash

for var in 10 20 30 40 50 60 70 80 90 100 110 120 130 140
 do
 sed "s/XYZ/$var/" C.scf.in > "C.scf.in_$var"
 mkdir "$var"
 mv C.scf.in_"$var" "$var"
 cd "$var"
 mv  C.scf.in_"$var" C.scf.in
 pw.x < C.scf.in > C.scf.out
 cd ..
 done
