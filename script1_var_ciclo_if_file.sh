#!/bin/bash
# il cancelletto è utilizzato per i commenti
cd #solo con cd torno alla cartella home dell'utente
mkdir provaDir #creo la cartella di prova 
cd ~/provaDir #entro nella cartella provaDir, dove la tilde indica la home directory dell'utente
ls -lah #mostra il contenuto della cartella in cui ci si trova, mostrando visione a lista, con permessi e grandezza espressa in Kb
#___________________________________________________________________________________________________________________________________
cd ~/Scrivania

#TUTTI I PROSSIMI COMANDI VALGONO SOLO NEGLI SCRIPT SH E NON NELLA SHELL DIRETTA
#inizializzare una variabile
var="valore variabile"

#stampa variabile
echo $var

#preleva input utente (richiedendolo con \c e -e, e lo salva in una variabile e poi lo stampa
echo -e "Inserisci una parola: \c"
 
read  parola
echo $parola

#preleva input utente e lo salva in una lista (array) e poi stampa gli elementi
echo -e "Inserisci delle parole:"
 
#l'opzione -a inserisce l'input in array
read -a parola
 
#stampo in modo grossolano, si dovrebbe fare un ciclo for ma è un esempio
echo "hai inserito: ${parola[0]}, ${parola[1]}, ${parola[2]}"

#un ciclo if elseif ed else
variabile="cond2"
echo ${variabile}
condizione="cond"
echo ${condizione}
condizione2="cond2"
echo $condizione2
if [ $variabile = $condizione ];
  then
    echo "condizione true"
 
elif [ $variabile = $condizione2 ];
  then
    echo "condizione true di elseif"
else
    echo "condizione else"
fi

#un ciclo while
loop="true"
echo $loop

#dichiaro esplicitamente una variabile int
declare -i count=0
echo $count
while [ $loop == "true" ]
do
   count=$count+1
   echo "loop "$count
   if [ $count == 3 ];
  then
    loop="false"
   fi
done


#Dichiaro una lista (array) di 4 elementi, NB nota le virgolette
lista=( Debian Redhat 'Ubuntu 12.04' 'Linux 3.2' )
 
# recupero il numero degli elementi
n_elementi=${#lista[@]}
echo $n_elementi
 
# for loop
for (( i=0;i<$n_elementi;i++))
do
    echo "${lista[$i]}"
done
