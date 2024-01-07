ARG BASE_IMAGE="ubuntu:latest"
FROM $BASE_IMAGE

RUN apt-get update && \
  apt-get install -y openssh-client \
  wget \
  zip

RUN wget https://releases.hashicorp.com/terraform/1.6.6/terraform_1.6.6_linux_amd64.zip && unzip terraform_1.6.6_linux_amd64.zip 

RUN mv terraform /usr/bin/terraform
