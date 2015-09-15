FROM busybox

MAINTAINER Nikos Fountas "nikfoundas@gmail.com"

ENV CONFD_VERSION 0.10.0

ADD https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 /usr/bin/confd

RUN chmod +x /usr/bin/confd

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["confd", "-version"]
