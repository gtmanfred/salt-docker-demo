FROM centos/systemd

RUN yum install -y epel-release || true
RUN yum install -y python-pip python-devel gcc git systemd-python || true
RUN pip install -e git+git://github.com/gtmanfred/salt.git@develop#egg=salt
RUN cp -a /src/salt/pkg/*.service /etc/systemd/system/
RUN systemctl enable salt-minion.service

ADD minion2 /etc/salt/minion
ADD minion2.pem /etc/salt/pki/minion/minion.pem
ADD minion2.pub /etc/salt/pki/minion/minion.pub

RUN echo 'tmpfs /run tmpfs rw,nosuid,nodev,mode=755 0 0' >> /etc/fstab
