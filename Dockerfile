FROM ghcr.io/lazzurs/jenkins-agent-amazonlinux2

ARG user=jenkins

USER root

RUN yum install -y python3-pip
RUN yum clean all

SER ${user}

ENTRYPOINT ["jenkins-agent"]
