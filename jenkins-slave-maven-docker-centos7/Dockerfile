FROM openshift/jenkins-slave-maven-centos7:latest
MAINTAINER Priyank Garg
USER root
RUN yum install dnf dnf-data dnf-plugins-core libdnf-devel libdnf python2-dnf-plugin-migrate dnf-automatic -y && \
    dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo && \
    dnf install docker-ce -y
USER 1001