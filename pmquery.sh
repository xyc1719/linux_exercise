rm beijng.html* -rf 
wget http://www.86pm25.com/city/beijing.html 
grep "^<tr><td>" beijing.html | sed 's/<[^>]*>/ /g' | sed 's/\([0-9][0-9]*\)[^ ]* /\1/g' | awk '{print time "," $1 "," $3 }' time="$(date "+%Y-%m-%d %H:%M:%S")" | tee pmdata.csv

