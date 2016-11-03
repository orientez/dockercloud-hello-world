
start=`date +%s%N`
curl -s http://localhost:"${1}" >> /tmp/response_"${2}"
end=`date +%s%N`

runtime=$((end-start))
echo $runtime >> "${2}"
