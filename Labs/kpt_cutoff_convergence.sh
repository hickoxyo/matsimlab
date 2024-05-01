#!/bin/bash

for var in 2 4 6 8 10 12 14 16
 do
 sed "s/XYZ/$var $var $var /" C.scf.in > "C.scf.in_$var"
 mkdir "$var"
 mv C.scf.in_"$var" "$var"
 cd "$var"
 mv  C.scf.in_"$var" C.scf.in
 pw.x < C.scf.in > C.scf.out
 cd ..
 done
