FROM openshift/jenkins-slave-maven-centos7:latest
MAINTAINER Priyank Garg
USER root
RUN yum -y install dnf dnf-data dnf-plugins-core libdnf-devel libdnf python2-dnf-plugin-migrate dnf-automatic && \
    dnf config-manager --add-repo=https://download.docker.com/linux/centos/docker-ce.repo && \
    dnf -y install docker-ce && \
    yum -y install buildah
USER 1001