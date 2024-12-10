FROM ubuntu:latest

# Install curl
RUN apt update && apt install -y curl nftables iproute2 vim iputils-ping nftables tcpdump openssh-server

RUN useradd -ms /bin/bash sad && echo 'sad:seguretat' | chpasswd
 
