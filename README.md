# docker_biblio
### docker image to analyze bibliography with R in Pubmed

## build image with the dockerfile
> docker build - < Dockerfile -t biblio:0.1.0

## start the dacker image with shared volume
> docker run -it -v /local/volume/data/:/opt/bibliography/data biblio:0.1.0 /bin/bash

## command which save the graph in RESULTS folder
> ./biblio.sh "your name"

## copy the files in shared volume
> cp -rf RESULTS/ data

