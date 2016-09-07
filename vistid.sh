#!/bin/bash

echo -e "Hva er hendelsen?"

read hendelse

treff=$(grep -o $hendelse hendelse.logg | wc -l)
i=1
sum=0
tall=0

while [ $i -lt $[treff+1] ];
do
	tall=$(grep -m $i $hendelse hendelse.logg | tail -n1 | tr -dc '0-9')
	sum=$[sum+tall]
	let i=i+1
done

echo $sum
