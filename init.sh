#! /bin/sh
read -p "Do you want to start fresh, deleting all your installed R packages? (y/n): " choice
if [[ "$choice" == "y" ]]; then
    rm -rf R
    id=$(docker create rocker/tidyverse)
    mkdir -p R
    docker cp $id:/usr/local/lib/R/library R/
    docker cp $id:/usr/local/lib/R/site-library R/
    docker rm -v $id
fi

