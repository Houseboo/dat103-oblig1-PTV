#!/bin/bash

#Programmet tar parameter $1 og $2. $1 er tid, $2 er filnavn.

TID=`stat -c %Z $2` #Lagrer den opprinnelige tiden for sist endring i filen.

while [ -f $2 ]; #-f gir true dersom filen $2 eksisterer.
do
	echo "filen $2 finnes (sist sjekket: $(date +"%T"))"	#Bruker date for aa skrive ut klokkeslettet ved forrige oppdatering.
	NYTID=`stat -c %Z $2` #Oppretter ny variabel for tid for aa sammenligne.
	sleep $1 #Pauser programmet ut ifra gitt parameter #1.
	clear	#T0mmer terminalvinduet for kver oppdatering.
	if [ ! -f $2 ] #Samme sjekk som i while betingelsen, bare for aa se om den er slettet i stedet.
	then
		echo "filen $2 har blitt slettet (kl $(date +"%T"))"
		exit 1 #Avslutter skriptet
	elif [ "$TID" != "$NYTID" ] #Sammenligner den opprinnelige og den eventuelt nye tiden for sist endring i filen.
	then
		echo "filen $2 har blitt endret (kl $(date +"%T"))"
		exit 1
fi #If er ferdig
done #While er ferdig

while [ ! -f $2 ]; #Boolean sjekk om filen eksisterer eller ikkje.
do
	echo "filen $2 finnes ikkje (sist sjekket: $(date +"%T"))" 
	sleep $1
	clear
		if [ -f $2 ]
		then
			echo "filen $2 har blitt opprettet (kl $(date +"%T"))"
			exit 1
fi #If er ferdig
done #While er ferdig
