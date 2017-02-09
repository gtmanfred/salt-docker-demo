FROM centos/systemd

RUN curl -o /bootstrap -Ls https://bootstrap.saltstack.com
RUN bash /bootstrap -MPX -c /tmp

RUN yum install -y GitPython pyOpenSSL salt-api

RUN systemctl disable salt-minion
RUN salt-call --local tls.create_self_signed_cert
RUN systemctl enable salt-api

ADD master /etc/salt/master

RUN echo 'tmpfs /run tmpfs rw,nosuid,nodev,mode=755 0 0' >> /etc/fstab
