#!bin/bash
#$1 er antall repetisjoner, $2 er teksten som skal repeteres.

if [ $# -eq 2 ] #Sjekker om antall motatte parameter er likt 2.
then
	COUNTER=0
	while [ $COUNTER -lt $1 ]; do #Begrenser while l0kken med at COUNTER skal vere mindre enn det som er gitt i $1.
		echo $2 #Skriver ut $2 i terminal.
		let COUNTER=COUNTER+1 
done #Ferdig med while
else 
	echo "Programmet trenger 2 parameter, du har brukt $#." #Vil gi denne meldingen dersom antall parameter ikkje er lik 2.
fi #Ferdig med if