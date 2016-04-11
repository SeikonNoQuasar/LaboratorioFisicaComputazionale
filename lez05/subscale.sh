#!/bin/bash

MYDIR=/home/vicini/fisica/POWHEG-BOX-V2/W/testrun-wm-lhc-8TeV

for ((i=1; i<2; i++))
do
for ((j=1; j<2; j++))
do
for ((l=1; l<2; l++))
do
for ((k=1; k<1601; k++))
do

scfc=$(echo "0.5*2^$i" | bc)		#bc e' un programma che mi permette di fare calcoli reali in ambiente shell (che di solito 1/4==0)
scre=$(echo "0.5*2^$j" | bc)		#scrivo una stringa e la do a bc da calcolare
scris=$(echo "0.25*2^$l" | bc)
echo $scris

inputfile=input$i$j$l$k
outdir=scale$i$j$l-$k
mkdir -p $outdir
sed -e 's:murdum:'$scfc':'\		# -e serve a concatenare piu' di una modifica
    -e 's:mufdum:'$scre':'\		# in questo caso abbiamo usato i : come separatori tra le varie parti del comando al posto delle /
    -e 's:hdampdum:'$scris':'\		# in alternativa posso usare le doppie virgolette ai lati e omettere quelle interne: "s:hdampdum:$scris:"\
    -e 's:randum:'$RANDOM':'\
    < powheg.scale.dummy > $inputfile
echo "#!/bin/bash
cd "'$TMPDIR'"
cp $MYDIR/pwhg_main .
cp $MYDIR/main-PYTHIA-lhef-py320 .
cp $MYDIR/main-PYTHIA-lhef-py350 .
cp $MYDIR/$inputfile powheg.input
./pwhg_main
./main-PYTHIA-lhef-py320
cp pwgPOWHEG+PYTHIA-output.top $MYDIR/$outdir/pwgPOWHEG+PYTHIA-output-py320.top
./main-PYTHIA-lhef-py350
cp pwgPOWHEG+PYTHIA-output.top $MYDIR/$outdir/pwgPOWHEG+PYTHIA-output-py350.top" > a.sh

cat a.sh


#qsub -l walltime=239:00:00 -l pmem=800mb -l nodes=1:ppn=1  -q fast a.sh ;

sleep 0.5s

done
done
done
done
