#!/bin/bash
ptmin=(74 75 76 77 78 79 80 81 82 83 84 85 86 87 14002)
for ((i=0; i<15 ; i++)) ;
do
    par=${ptmin[i]}
    echo $par
    echo '#!/bin/bash
          cd /home/vicini/DY/CC/NNLO/
          ./fewzw' $par 'LHCres'$par'.dat vegas_last_iter_'$par\
          ' > LHCout'$par'.out' > a.sh
    cat a.sh
    qsub -l nodes=1:ppn=1 a.sh ;
    sleep 10s
done
