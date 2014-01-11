FROM index.phatforge.com/ubuntu
MAINTAINER Phatforge "http://phatforge.com/docker"

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y curl build-essential git libffi-dev libxml2-dev libxslt-dev
RUN curl -L https://www.opscode.com/chef/install.sh | sudo bash
RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc
RUN /opt/chef/embedded/bin/gem install berkshelf
