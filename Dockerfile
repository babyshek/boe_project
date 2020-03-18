FROM rocker/tidyverse

RUN apt-get update -qq \
    && install2.r --error \
        ###My packages are below this line
       	data.table 

COPY . /usr/local/src/rscripts
WORKDIR /usr/local/src/rscripts

CMD ["Rscript","my_script.R"]
