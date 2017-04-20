FROM centos/systemd

RUN yum install -y epel-release || true
RUN yum install -y python-pip python-devel gcc git || true
RUN pip install -e git+git://github.com/gtmanfred/salt.git@develop#egg=salt
RUN cp -a /src/salt/pkg/*.service /etc/systemd/system/
RUN systemctl enable salt-master.service

ADD master /etc/salt/master
ADD master_minion.pem /etc/salt/pki/master.pem
ADD master_minion.pub /etc/salt/pki/master.pub
ADD master_minion.pem /etc/salt/pki/minion/minion.pem
ADD master_minion.pub /etc/salt/pki/minion/minion.pub
ADD master_minion.pub /etc/salt/pki/minion/minion_master.pub
ADD minion1.pub /etc/salt/pki/master/minions/minion1
ADD minion2.pub /etc/salt/pki/master/minions/minion2

RUN echo 'tmpfs /run tmpfs rw,nosuid,nodev,mode=755 0 0' >> /etc/fstab
