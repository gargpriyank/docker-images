FROM openshift/jenkins-agent-maven-35-centos7:latest
MAINTAINER Priyank Garg
USER root
RUN yum -y install docker && systemctl start docker && systemctl enable docker
USER 1001