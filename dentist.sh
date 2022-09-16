#! /usr/bin/env bash

#Cloudflare 1020 ->
userAgent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36"
urlDoctolib="https://www.doctolib.fr/search_results/4023764.json\?limit\=6\&ref_visit_motive_id\=159\&speciality_id\=1\&search_result_format\=json\&page\=1"

result=$(curl -sA "$userAgent" "$urlDoctolib")
#echo "curl -A "$userAgent" "$urlDoctolib""

echo "$result"

if [[ $result == *"Aucune disponibilité en ligne."* ]]; then
    echo -e "\x1B[31m Pas de rdv \x1B[0m"
else
    open -a "Google Chrome" https://www.doctolib.fr/centre-dentaire/rouen/centre-dentaire-rouen-saint-sever?highlight%5Bspeciality_ids%5D%5B%5D=1
fi