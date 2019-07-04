FROM rundeck/rundeck:3.0.23
USER root
RUN apt-get update && apt-get install -y apt-utils software-properties-common apt-transport-https
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
RUN apt-get update && apt-get install -y docker-ce && rm -r /var/lib/apt/lists
RUN usermod -a -G docker rundeck

#RUN python3 /config/configure_rundeck.py