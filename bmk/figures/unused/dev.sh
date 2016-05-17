N=`head -1 $1.xyz`
paste $1.xyz  $1_target.xyz |tail -$N|awk -v num=$N '{tmp=(($8-$4)^2+($7-$3)^2+($6-$2)^2);print sqrt(tmp)}'|sort -rnk 1|head -1|awk '{print "Largest deviation=",$1, " Angstrom"}';
#sum=sum+tmp}END{print "largest deviation =" ,sqrt(sum/num)}'
