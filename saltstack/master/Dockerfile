FROM centos/systemd

EXPOSE 8000

RUN curl -o /bootstrap -Ls https://bootstrap.saltstack.com
RUN bash /bootstrap -MNPX -p salt-api -p pyOpenSSL -c /tmp

ADD master /etc/salt/master
ADD master_minion.pem /etc/salt/pki/master.pem
ADD master_minion.pub /etc/salt/pki/master.pub
ADD master_minion.pem /etc/salt/pki/minion/minion.pem
ADD master_minion.pub /etc/salt/pki/minion/minion.pub
ADD master_minion.pub /etc/salt/pki/minion/minion_master.pub
ADD minion1.pub /etc/salt/pki/master/minions/minion1
ADD minion2.pub /etc/salt/pki/master/minions/minion2

RUN ln -sf /usr/lib/systemd/system/salt-api.service /etc/systemd/system/multi-user.target.wants/salt-api.service
RUN ln -sf /usr/lib/systemd/system/salt-master.service /etc/systemd/system/multi-user.target.wants/salt-master.service
RUN salt-run salt.cmd tls.create_self_signed_cert

RUN useradd -m saltdev
RUN echo saltdev | passwd --stdin saltdev

RUN echo 'tmpfs /run tmpfs rw,nosuid,nodev,mode=755 0 0' >> /etc/fstab
