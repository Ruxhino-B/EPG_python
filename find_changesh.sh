#!/bin/bash
i=0
for channel_id in `cat Schedule.dat | awk -F'|' '{print$2}'`
do
	value=$(cat Schedule2.dat | grep $channel_id)
	if [ -z "$value" ]
	then
		echo $channel_id
		((i=i+1))
	fi
done
echo $i
