#!/bin/bash

echo -e "Hva er hendelsen?"

read hendelse

#Tar imot brukerinput for å finne ut hvilken hendelse som skal refereres til

treff=$(grep -o $hendelse hendelse.logg | wc -l)
i=1
sum=0
tall=0

while [ $i -lt $[treff+1] ];
do
	tall=$(grep -m $i $hendelse hendelse.logg | tail -n1 | tr -dc '0-9')
	
	#Setter variabel TALL til nummeret i den første hendelsen som matcher input fra bruker, ved å bruke grep -m $i. For å unngå
	#at noe annet enn første hendelse blir lagret i tall, bruker vi tail -n1. For å bare lagre nummeret til filen, og ikkje teksten,
	#brukes det tr -dc '0-9'.
	
	sum=$[sum+tall]
	let i=i+1
	
	#Legger sammen den nåverende summen sammen med det nye tallet vi fikk match med i søket, og plusser $i på med 1, slik at vi
	#kan finne potensielle nye matcher.
done

echo $sum

	#Skriver ut den samla summen av alle inputs som ga match
