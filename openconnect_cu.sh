#!/bin/bash

#your servers as list
servers=('server1' 'server2' '...')

echo "choose your server: "

for i in ${!servers[@]}; do
	echo "$i) ${servers[i]}"
done

read index

echo ${servers[$index]}

sudo pwd

sudo openconnect ${servers[index]} << END
yes
#put your cisco username here
username
#put your cisco password here
password
END
