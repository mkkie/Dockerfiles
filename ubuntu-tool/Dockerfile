FROM ubuntu:16.04

MAINTAINER Cooper Su "su.jming@gmail.com"

ENV build_version 0.1

RUN apt-get update && \
    apt-get install -y sudo git vim openssh-server && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# perl -e 'print crypt("YourPasswd", "salt"),"\n"'
RUN adduser --disabled-password --gecos "" cooper && \
    adduser cooper sudo && \
    echo "cooper:saWFoDWXxXt8U" | chpasswd -e && \
    echo "cooper    ALL=(ALL:ALL) NOPASSWD:ALL" > /etc/sudoers.d/cooper

ADD entrypoint.sh /entrypoint.sh

USER cooper

WORKDIR /home/cooper

ENTRYPOINT ["/entrypoint.sh"]

