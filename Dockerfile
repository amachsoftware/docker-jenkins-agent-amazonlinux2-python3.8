FROM ghcr.io/amachsoftware/jenkins-agent-amazonlinux2

ARG user=jenkins

USER root

RUN yum install -y amazon-linux-extras
RUN yum clean metadata
RUN amazon-linux-extras enable python3.8
RUN yum install -y python3.8
RUN yum clean all

USER ${user}

ENTRYPOINT ["jenkins-agent"]
