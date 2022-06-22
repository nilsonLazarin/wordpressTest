#!/bin/bash
ARQUIVO=atop.mem

atop -M 5 1000 > $ARQUIVO &
pid=$!

echo $pid

#ab -n 100 -c 10 http://yahoo.com/
#stress --cpu 8 --timeout 20

echo 'Aguardando término do ataque....'

read

kill $pid

################################## TIO NILSON ###########
egrep '^MEM' $ARQUIVO > memoria.csv

egrep '^CPU' $ARQUIVO > cpu.csv

egrep '^SWP' $ARQUIVO > swap.csv

egrep '^DSK' $ARQUIVO > disco.csv

