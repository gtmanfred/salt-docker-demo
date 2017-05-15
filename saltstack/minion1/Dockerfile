FROM centos/systemd

RUN yum clean all
RUN yum install -y epel-release; \
    yum install -y python2-pip python-devel gcc git systemd-python; \
    pip install -e git+git://github.com/saltstack/salt.git@2016.11#egg=salt; \
    cp -a src/salt/pkg/salt-minion.service /etc/systemd/system/; \
    systemctl enable salt-minion

ADD minion1 /etc/salt/minion
ADD minion1.pem /etc/salt/pki/minion/minion.pem
ADD minion1.pub /etc/salt/pki/minion/minion.pub

RUN echo 'tmpfs /run tmpfs rw,nosuid,nodev,mode=755 0 0' >> /etc/fstab
