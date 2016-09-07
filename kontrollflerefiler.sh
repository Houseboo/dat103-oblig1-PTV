#!/bin/bash

for arg #Kj0rer l0kken like mange ganger som vi har parameter
	do sh filsjekk.sh 3 $arg &
done

#MERK: Eg valgte aa sette opp filkontroll.sh med
#output for kver oppdatering.
#Paa grunn av denne outputen saa blir det tull
#med en gang det er mer enn ett parameter
#(fordi eg bruker "clear" for kver oppdatering".

#For aa unngaa forvirring i levering har eg valgt
#aa ikkje lage en ny versjon av den opprinnelige
#filkontroll.sh.
#Det beste for fleire argument er gj0re slik at det
#kun kommer output naar en av instansene 
#stopper (fil opprettet, fil endret, fil slettet).
