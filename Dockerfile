FROM jenkins/jenkins:lts

# set storage location
ENV JENKINS_HOME=/var/jenkins_home


# change user to root
USER root

# update and install dependencies

RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    git \
    vim \
    nano \
    sudo \
    apt-utils 

# install docker
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

# add jenkins to sudoers
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

# change user back to jenkins
USER jenkins

# expose port
EXPOSE 8080 50000

# run jenkins
CMD ["/usr/local/bin/jenkins.sh"]