#!/usr/bin/env bash
#Petit script pour verifier si un site donne une erreur 404
#zf170719.1622
#source: https://stackoverflow.com/questions/22614331/authenticate-on-wordpress-with-wget


#test si l'argument est vide
if [ -z "$1" ]
  then
    echo -e "\nSyntax: ./aspi.sh site_name output_prefix \n\n"
    exit
fi

echo ---------- start aspi.sh

#server="test-web-wordpress.epfl.ch"
#site_name=$1
#url="/v1-testwp/"$1
#site="http://"$server$url
site=$1
output_prefix=$2

echo $1
#echo ""
#echo $server$url
#echo $server$url".html"
#echo ""
#echo $site

# access home page with authenticated cookies
if [[ $(wget -O- $site 2>&1 | grep "ERROR 404") ]]; then
    echo $site >> $output_prefix"_ko.txt"
else
    echo $site >> $output_prefix"_ok.txt"
fi

#echo -e "
#il y a comme nombre de pages HTML:
#"

#find $server |grep '\.html' |wc


#wget http://portesouvertes.epfl.ch/templates/epfl/static_epfl_menus/header_en.jsp -P ./portesouvertes.epfl.ch/templates/epfl/static_epfl_menus/
#wget http://portesouvertes.epfl.ch/templates/epfl/static_epfl_menus/header_fr.jsp -P ./portesouvertes.epfl.ch/templates/epfl/static_epfl_menus/

