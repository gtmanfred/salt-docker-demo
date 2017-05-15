FROM centos/systemd

RUN yum clean all
RUN yum install -y epel-release; \
    yum install -y python2-pip python-devel gcc git systemd-python; \
    pip install -e git+git://github.com/saltstack/salt.git@v2016.11.3#egg=salt python-consul; \
    cp -a src/salt/pkg/salt-master.service /etc/systemd/system/; \
    systemctl enable salt-master

ADD master /etc/salt/master
ADD master_minion.pem /etc/salt/pki/master.pem
ADD master_minion.pub /etc/salt/pki/master.pub
ADD master_minion.pem /etc/salt/pki/minion/minion.pem
ADD master_minion.pub /etc/salt/pki/minion/minion.pub
ADD master_minion.pub /etc/salt/pki/minion/minion_master.pub
ADD minion1.pub /etc/salt/pki/master/minions/minion1
ADD minion2.pub /etc/salt/pki/master/minions/minion2

RUN echo 'tmpfs /run tmpfs rw,nosuid,nodev,mode=755 0 0' >> /etc/fstab
