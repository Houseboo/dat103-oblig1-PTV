#!/bin/bash

#Programmet tar parameter $1 og $2. $1 er tid, $2 er filnavn.

TID=`stat -c %Z $2` #Lagrer den opprinnelige tiden for sist endring i filen

while [ -f $2 ]; #-f gir true dersom filen $2 eksisterer
do
	echo "filen $2 finnes (sist sjekket: $(date +"%T"))"
	NYTID=`stat -c %Z $2` #Oppretter ny variabel for tid for aa smn.ligne
	sleep $1
	clear
	if [ ! -f $2 ]
	then
		echo "filen $2 har blitt slettet (kl $(date +"%T"))"
		exit 1
	elif [ "$TID" != "$NYTID" ]
	then
		echo "filen $2 har blitt endret (kl $(date +"%T"))"
		exit 1
fi
done

while [ ! -f $2 ];
do
	echo "filen $2 finnes ikkje (sist sjekket: $(date +"%T"))" 
	sleep $1
	clear
if [ -f $2 ]
then
	echo "filen $2 har blitt opprettet (kl $(date +"%T"))"
	exit 1
fi
done
