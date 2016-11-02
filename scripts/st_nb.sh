for i in {1..100}
do 
echo $i
./rtt.sh $1 $3 &
sleep $2; 
done

