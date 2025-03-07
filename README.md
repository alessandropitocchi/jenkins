# jenkins

## Install jenkins on local using docker

- pull image from docker

docker pull jenkins/jenkins

- run locally jenkins

docker run --name jenkins -d -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk17

- access trough [http.](http://localhost:8080/)

- create Dockerfile for custom config

- create images

docker build -t alessandropitocchi/custom-jenkins:v1 .

docker run --name jenkins-custom -d -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home alessandropitocchi/custom-jenkins:v1

## First Freestyle Job - Generate ASCII Artwork using Cowsay library and AdviceSlip Rest API

- click on New Jobs and select Freestyle Job

- choose name for the job

- configure the job

sudo apt-get install cowsay -y && sudo apt-get install jq -y

curl -s https://api.adviceslip.com/advice > advice.json
cat advice.json | jq -r .slip.advice > advice.message

cat advice.message | /usr/games/cowsay

- result:
 _______________________________________
/ Don't try and bump start a motorcycle \
\ on an icy road.                       /
 ---------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
Finished: SUCCESS

# Concatenate more jobs, share files

