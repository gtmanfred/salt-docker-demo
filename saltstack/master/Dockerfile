FROM centos/systemd

RUN curl -o /bootstrap -Ls https://bootstrap.saltstack.com
RUN bash /bootstrap -MPXN -p GitPython -p pyOpenSSL -p salt-api -c /tmp

RUN salt-run salt.cmd tls.create_self_signed_cert
RUN systemctl enable salt-api

ADD master /etc/salt/master

RUN echo 'tmpfs /run tmpfs rw,nosuid,nodev,mode=755 0 0' >> /etc/fstab
