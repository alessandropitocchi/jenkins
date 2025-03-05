# jenkins

## Install jenkins on local using docker

- pull image from docker

docker pull jenkins/jenkins

- run locally jenkins

docker run --name jenkins -d -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts-jdk17

- access trough [http.](http://localhost:8080/)

(create dockerfile to install sudo and other package inside the container)

## First Freestyle Job - Generate ASCII Artwork using Cowsay library and AdviceSlip Rest API

- click on New Jobs and select Freestyle Job



