FROM cdxvirt/ceph-base:10.2.3-2

RUN apt-get update && \
    apt-get remove -y --force-yes nfs-ganesha nfs-ganesha-fsal && \
    apt-get install -y --force-yes ceph radosgw git cmake libkrb5-dev libbison-dev flex uuid-dev librgw-dev libcephfs-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN git clone -b V2.3-stable https://github.com/nfs-ganesha/nfs-ganesha.git && \
    cd nfs-ganesha/ && git submodule update --init --recursive

RUN mkdir /ganesha.build && cd /ganesha.build && \
    cmake -DUSE_FSAL_RGW=ON -DUSE_FSAL_CEPH=ON /nfs-ganesha/src/ && \
    make && make install

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
