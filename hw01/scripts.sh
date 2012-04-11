for outputFile in $(ls BLP.char.T1.J12.pbs.o*)
do
  grep "SNOPTA EXIT" $outputFile >> ../../exitcodes.txt
done

wc exitcodes.txt -l

sort ../../exitcodes.txt | uniq > ../../exitcodes-unique.txt

for exitCode in "SNOPTA EXIT   0" "SNOPTA EXIT  10" "SNOPTA EXIT  40"
do
  echo $exitCode
  grep "$exitCode" exitcodes.txt | wc -l
done




fastestTime="99:99:99"
fastestJob=""
for outputFile in $(ls BLP.char.T1.J12.pbs.o*)
do
  jobID=$(sed -n '/Job ID/p' $outputFile | head -1)
  jobTime=$(sed -n '/Resources/p' $outputFile | sed -e 's/^.*walltime=//')
  if [[ $jobTime < $fastestTime ]]
  then
    fastestTime=$jobTime
    fastestJob=$jobID
  fi
done


for outputFile in $(ls BLP.char.T1.J12.pbs.o*)
do
  sed -n '/Resources/p' $outputFile | sed -e 's/^.*walltime=//' >> ../../walltimes.txt
done

cat walltimes.txt | sort > walltimes-sorted.txt

head -1 walltimes-sorted.txt

head -51 walltimes-sorted.txt | tail -1

