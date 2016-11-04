#!/bin/bash

# calculate the rtt for each curl resposne
function rtt {
    start=`date +%s%N`
    curl -s http://localhost:"${1}" >> /tmp/response_"${2}"
    end=`date +%s%N`

    runtime=$((end-start))
    echo $runtime >> "${2}"
}

# single running of experiments
function single_run {
    for i in {1..100000}
    do 
    	# echo $i
    	rtt $1 $3 &
    	sleep $2; 
    done
}

for nrun in {1..6}
do
    echo "run ${nrun}"
    single_run $1 $2 "${3}_${nrun}.log"
    sleep 120
done



