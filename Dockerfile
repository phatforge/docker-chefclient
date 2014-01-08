FROM index.phatforge.com/ubuntu
MAINTAINER Phatforge "http://phatforge.com/docker"

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y curl

RUN curl -L https://www.opscode.com/chef/install.sh | sudo bash
