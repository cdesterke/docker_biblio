FROM r-base
MAINTAINER CHRIS<christophe.desterke@gmail.com>
RUN apt-get update -y
RUN apt-get install -y git
RUN R -e "install.packages(c('ggplot2', 'RISmed', 'dplyr'),dependencies=TRUE, repos='http://cran.rstudio.com/')"
WORKDIR /opt
RUN git clone https://github.com/cdesterke/bibliography.git
WORKDIR /opt/bibliography
RUN chmod 777 biblio.sh
WORKDIR /opt/bibliography/lib 
RUN chmod 777 bibliobypubmed.r
WORKDIR /opt/bibliography/
