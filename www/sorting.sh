
for i in `seq 1 10000`;
do
echo $((1 + RANDOM % 1000000));

done | sort >> /dev/null
