#!/bin/bash

cd ~/apache-log


if [ -z $1 ]
then
while [ -z $requisicao ]
do
	read -p  "voce esqueceu de colocar algum campo(GET,PUT,POST,DELETE): " requisicao
	comando_maiusculo=$(echo $requisicao | awk '{ print toupper ($1)}')
	done

else

	comando_maiusculo=$(echo $1 | awk '{ print toupper ($1)}')

fi

case $comando_maiusculo in 
GET)

cat apache.log | grep GET
;;

POST)
cat apache.log | grep POST
;;

DELETE)
cat apache.log | grep DELETE
;;


PUT)
cat apache.log | grep PUT
;;


*)
echo "nao existe nenhum campo como o digitado, tente como DELETE, GET, POST, PUT"
;;

esac

