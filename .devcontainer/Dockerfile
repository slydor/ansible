From ubuntu:22.04 AS base

WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
# Install software-properties-common in order to use apt-add-repository for the ansible package source.
# Install sudo as dependency for ansible in general and git as dependency for ansible-pull. Both should be available in real systems.
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common git sudo && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y ansible && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

# Create user with su permission for dev purposes only.
FROM base AS work
RUN addgroup --gid 1000 slydor
RUN adduser --gecos slydor --uid 1000 --gid 1000 slydor
RUN usermod -aG sudo slydor
RUN echo "slydor ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/slydor
USER slydor
ENV USER="slydor"
WORKDIR /home/slydor

# Required for Ansible
ENV LC_ALL="C.UTF-8"
