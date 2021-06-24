FROM powsybl/java:1.0.0
USER root
ARG DYNAWO_VERSION

RUN apt-get update && \
  apt-get clean

RUN wget https://github.com/dynawo/dynawo/releases/download/v${DYNAWO_VERSION}/Dynawo_Linux_v${DYNAWO_VERSION}.zip && \
  unzip Dynawo_Linux_v${DYNAWO_VERSION}.zip && \
  rm -f Dynawo_Linux_v${DYNAWO_VERSION}.zip
USER powsybl
