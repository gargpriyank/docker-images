FROM busybox
MAINTAINER Priyank Garg
USER root
WORKDIR /workspace
COPY resources/cleanup-logs.sh .
RUN chmod 755 cleanup-logs.sh
ENTRYPOINT ./cleanup-logs.sh