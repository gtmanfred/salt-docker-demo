=================
Salt Docker Demo
=================

A Salt Demo using Docker.


Instructions
============

Run the following commands in a terminal. Git, Docker, and Docker Compose need
to already be installed.

.. code-block:: bash

    git clone https://github.com/gtmanfred/salt-docker-demo.git
    cd salt-docker-demo
    docker-compose up -d


This will download the centos 7 docker image and create three docker
containers.  One will be a Salt Master named `saltmaster` and two will be Salt
Minions named `minion1` and `minion2`.  The Salt Minions will point to the Salt
Master and the minions keys will already be accepted. Because the keys are
pre-generated and reside in the repo, please be sure to regenerate new keys if
you use this for production purposes.

You can then run the following commands to log into the Salt Master and begin
using Salt.

.. code-block:: bash

    docker-compose exec saltmaster bash
    sudo salt \* test.ping
