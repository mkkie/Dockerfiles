FROM cdxvirt/ceph-base:10.2.3-2
ENV CEPH_VERSION jewel

RUN apt-get update && \
    apt-get install -y git qemu-utils python-dev \
    libssl-dev python-pip python-virtualenv \
    libev-dev libvirt-dev libmysqlclient-dev \
    libffi-dev libyaml-dev libevent-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN git clone https://github.com/ceph/teuthology/ && \
    git clone https://github.com/ceph/ceph-qa-suite.git --branch ${CEPH_VERSION}

RUN cd /teuthology && ./bootstrap && pip install teuthology

CMD [""]
