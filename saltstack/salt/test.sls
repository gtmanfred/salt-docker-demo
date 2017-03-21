install sshd:
  pkg.installed:
    - name: openssh-server

start sshd:
  service.running:
    - name: sshd

sleep:
  module.run:
    - name: test.sleep
    - length: 5

stop sshd:
  service.dead:
    - name: sshd
