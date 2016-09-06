#!bin/bash
#$1 er antall repetisjoner, $2 er teksten som skal repeteres.

if [ $# -eq 2 ]
then
	COUNTER=0
	while [ $COUNTER -lt $1 ]; do
		echo $2
		let COUNTER=COUNTER+1
done
else 
	echo "Programmet trenger 2 parameter, du har brukt $#."
fi
