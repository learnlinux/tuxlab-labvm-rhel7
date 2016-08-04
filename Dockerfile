FROM rhel7:latest

MAINTAINER Aaron Mortenson <amortens@andrew.cmu.edu>

COPY files/entry.sh entry.sh
COPY files/sshd_banner /etc/ssh/sshd_banner
COPY files/motd /etc/motd
COPY files/install.sh /root/install.sh

RUN ./install.sh && \
    rm install.sh

EXPOSE 22

ENTRYPOINT ["/entry.sh"]
