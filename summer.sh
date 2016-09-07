#!/bin/bash

sum=0
while read tall ; do #While l0kken kj0rer saa lenge "read" er aapen
	sum=$[sum+tall]; #Aritmetisk operasjon som summerer eksisterende "sum" og "tall" fra input
done #While er ferdig
echo $sum #Skriver ut summen. CTRL+D sender signal som "slutt paa tekst (eller input)"
