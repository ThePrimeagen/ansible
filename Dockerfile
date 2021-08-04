FROM ubuntu:focal
ARG TAGS
WORKDIR /usr/local/bin
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y software-properties-common && apt-add-repository -y ppa:ansible/ansible && apt update && apt install -y sudo curl git sudo ansible build-essential
CMD ["sh", "-c", "sudo ansible-playbook $TAGS local.yml"]

