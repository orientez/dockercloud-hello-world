
for i in `seq 1 100000`;
do
echo $((1 + RANDOM % 1000000));

done | sort 
