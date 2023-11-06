From ubuntu:22.04 AS base

WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y sudo software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

# Create user with su permission for dev/test purposes only. Don't do this at home ofc :)
FROM base AS work
RUN addgroup --gid 1000 slydor
RUN adduser --gecos slydor --uid 1000 --gid 1000 slydor
RUN usermod -aG sudo slydor
RUN echo "slydor ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/slydor
USER slydor
WORKDIR /home/slydor

# Required for Ansible
ENV LC_ALL="C.UTF-8"
