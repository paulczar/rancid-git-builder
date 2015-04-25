FROM ubuntu:trusty

MAINTAINER Paul Czarkowski

VOLUME /pkg

RUN apt-get -y update && apt-get install -y wget expect curl automake vim build-essential ruby-dev && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN git config --global user.email "packager@myco" && \
    git config --global user.name "Omnibus Packager"

RUN gem install fpm --no-ri --no-rdoc

ADD build.sh /tmp/build.sh

RUN chmod +x /tmp/build.sh

CMD /build/build.sh
