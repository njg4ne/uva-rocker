id=$(docker create rocker/tidyverse)
mkdir -p R
docker cp $id:/usr/local/lib/R/library R/
docker cp $id:/usr/local/lib/R/site-library R/
docker rm -v $id