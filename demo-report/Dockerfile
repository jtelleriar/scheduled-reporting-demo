FROM openanalytics/r-base
RUN R -q -e "install.packages('bookdown', repos = 'http://cran.us.r-project.org')"
RUN R -q -e "install.packages('rmarkdown', repos = 'http://cran.us.r-project.org')"
RUN R -q -e 'install.packages("oaStyle", repos = c(rdepot = "https://rdepot.openanalytics.eu/repo/local", getOption("repos")))'
RUN apt-get update &&  apt-get install -y pandoc && rm -r /var/lib/apt/lists
RUN mkdir /reports
ADD ./generator /generator

WORKDIR /generator/src
RUN chmod +x generate.sh
CMD ["./generate.sh"]