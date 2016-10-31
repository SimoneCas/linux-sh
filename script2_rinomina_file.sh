#!/bin/bash
# Questo script cerca nei nomi dei file e sostiuisce tutti gli spazi con "_"
# la cartella da cercare,
cartella=~/gitRepo/linux-sh/dirProva

# Il simbolo pipe "|" redirige lo STDOUT (standard output) nello STDIN (standard input) di un altro
# il programma "find" serve per cercare "-type f" cerca solo file
find $cartella -type f | while read file; do
echo $file
# [:space:] è usato nelle espressioni regolari per indicare lo spazio
  if [[ "$file" = *[[:space:]]* ]];
    then
      # in un unico colpo rinomina il file usando "echo $file | tr ' ' '_'" come seconda opzione di "mv"
      # praticamente stampa il nome del file modificato tramite "tr" è un programma che manipola stringhe
      mv "$file" `echo $file | tr ' ' '_'`
  fi;
# fine del loop
done
