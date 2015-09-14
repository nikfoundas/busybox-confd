FROM busybox

MAINTAINER Nikos Fountas "nikfoundas@gmail.com"

ENV CONFD_VERSION 0.10.0

ADD https://github.com/kelseyhightower/confd/releases/download/v${CONFD_VERSION}/confd-${CONFD_VERSION}-linux-amd64 /confd

RUN chmod +x /confd

CMD ["/confd"]
