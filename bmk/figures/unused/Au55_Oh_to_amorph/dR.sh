rm -rf input.dat
cp $1.xyz input.xyz
N=`head -1 input.xyz`

myarr=($(tail -$N input.xyz|awk -v num=$N  '{x=x+$2;y=y+$3;z=z+$4}END{print x/num,y/num,z/num}'))
head -2 input.xyz >tmp
tail -$N input.xyz|awk -v x0=${myarr[0]} -v y0=${myarr[1]} -v z0=${myarr[2]} '{print $1,$2-x0,$3-y0,$4-z0}'>>tmp
mv tmp input.xyz
/Applications/VMD*1.9.2.app/Contents/MacOS/startup.command  -dispdev text < dR.tcl
awk '{print ($1+$2)/2,$3}' input.dat|sort -nk 1 >d_R.$1.dat

rm -rf input.xyz input.dat