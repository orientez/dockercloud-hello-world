echo "begin allocating memory..."
for index in $(seq 390); do
    value=$(seq -w -s '' $index $(($index + 100000)))
    eval array$index=$value
done
echo "...end allocating memory"
sleep 10000
