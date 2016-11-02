
start=`date +%s%N`
curl http://localhost:"${1}"
end=`date +%s%N`

runtime=$((end-start))
echo $runtime >> "${2}"
