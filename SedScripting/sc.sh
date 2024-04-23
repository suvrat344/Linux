echo sayhello.sh
echo Hello
EOF
analysis.sh
script() {
  sum=0
  for i in $(cat result); do
    while read hash name; do 
      if [ $i == $hash ]; then
        inv=$(grep INVESTMENT $name)
        inv=${inv//INVESTMENT $/}
        sum=$((sum+inv))
      fi
    done < map
  done
  echo $sum
}

mkdir data

read fnos
for (( i=0; i<fnos; i++ )); do
  read line 
  echo $line | cut -d ":" -f 2- | tr '#' '\n' > ./data/${line%%:*}
done

read mnos
for (( i=0; i<mnos; i++ )); do
  read line 
  echo $line  >> map
done

read rnos
for (( i=0; i<rnos; i++ )); do
  read line 
  echo $line  >> result
done

script
EOF
bsleep.sh
background_sleep() {
  sleep $1 &
}
EOF
asleep.sh
active_sleep() {
  sleep $1 
}
EOF
fetch.sh
while true; do
  fetch data
  background_sleep 45
  send data
  background_sleep 56
  wait 
  active_sleep 3
done
EOF
EOFHello
EOF
analysis.sh
script() {
  sum=0
  for i in $(cat result); do
    while read hash name; do 
      if [ $i == $hash ]; then
        inv=$(grep INVESTMENT $name)
        inv=${inv//INVESTMENT $/}
        sum=$((sum+inv))
      fi
    done < map
  done
  echo $sum
}

mkdir data

read fnos
for (( i=0; i<fnos; i++ )); do
  read line 
  echo $line | cut -d ":" -f 2- | tr '#' '\n' > ./data/${line%%:*}
done

read mnos
for (( i=0; i<mnos; i++ )); do
  read line 
  echo $line  >> map
done

read rnos
for (( i=0; i<rnos; i++ )); do
  read line 
  echo $line  >> result
done
script
