FROM progrium/busybox
RUN opkg-install openssh-client openssh-keygen

ADD keygen.sh /opt/keygen.sh
RUN chmod 755 /opt/keygen.sh

VOLUME /root/.ssh
RUN bash -c 'echo "Host *" > ~/.ssh/config'
RUN bash -c 'echo "  StrictHostKeyChecking no" >> ~/.ssh/config'

CMD ["/opt/keygen.sh"]
