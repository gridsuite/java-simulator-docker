FROM openjdk:11
ARG DYNAWO_VERSION

RUN apt-get update && \
  apt-get clean

RUN wget https://github.com/dynawo/dynawo/releases/download/v${DYNAWO_VERSION}/Dynawo_Linux_v${DYNAWO_VERSION}.zip && \
  unzip Dynawo_Linux_v${DYNAWO_VERSION}.zip && \
  rm -f Dynawo_Linux_v${DYNAWO_VERSION}.zip && \
  ln -s Dynawo_Linux_v${DYNAWO_VERSION}.zip dynawo
