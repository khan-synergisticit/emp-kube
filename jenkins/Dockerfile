FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y


RUN apt-get clean

RUN apt install openjdk-17-jdk
RUN apt install openjdk-17-jre
RUN apt-get update && apt-get install -y docker-ce-cli

RUN mkdir -p /root/.ssh && chmod 777 /root/.ssh

COPY ~/.ssh/id_ed25519_jenkins /root/.ssh/id_ed25519_jenkins
RUN chmod 400 /root/.ssh/id_ed25519_jenkins

FROM jenkins/jenkins:lts-jdk17

USER root
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get -y install software-properties-common git gnupg sudo nano vim wget curl zip unzip build-essential libtool autoconf uuid-dev pkg-config libsodium-dev lynx-common tcl inetutils-ping net-tools ssh openssh-server openssh-client openssl letsencrypt apt-transport-https telnet locales gdebi lsb-release


RUN curl -fsSLo /usr/share/keyrings/docker-archive-keyring.asc \
  https://download.docker.com/linux/debian/gpg
RUN echo "deb [arch=$(dpkg --print-architecture) \
  signed-by=/usr/share/keyrings/docker-archive-keyring.asc] \
  https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list

USER jenkins