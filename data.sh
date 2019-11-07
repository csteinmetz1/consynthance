#!/bin/bash

## declare an array variable
declare -a archives=(
"en"
"de"
"fr"
"br"
"cv"
"cy"
"de"
"fr"
"tr"
"tt"
"ky"
"ga-IE"
"kab"
"ca"
"zh-TW"
"sl"
"it"
"nl"
"cnh"
"eo"
"et"
"fa"
"eu"
"es"
"zh-CN"
"mn"
"sah"
"dv"
"rw"
"sv-SE"
"ru")

## base url
BASE_URL=https://voice-prod-bundler-ee1969a6ce8178826482b88e843c335139bd3fb4.s3.amazonaws.com/cv-corpus-3/

read -p "This will download ~70GB of data. Do you want to continue? [y/N]: " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then

    ## make directory for speech data
    echo "$1"
    mkdir "$1"
    cd "$1"

    ## now loop through the above array
    for i in "${archives[@]}"
    do
    wget "-O" "$i.tar.gz" "$BASE_URL$i.tar.gz"
    mkdir "$i/"
    tar -xzvf "$i.tar.gz" -C "$i/"
    rm "$i.tar.gz"
    done
    
fi


