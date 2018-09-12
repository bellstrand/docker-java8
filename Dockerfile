FROM ubuntu:bionic

LABEL maintainer="Magnus Bellstrand <bellstrand@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm

RUN buildDeps='software-properties-common'; \
	set -x && \
	apt-get update && apt-get install -y $buildDeps --no-install-recommends

# Use WebUpd8 PPA
RUN add-apt-repository ppa:webupd8team/java -y && \
	apt-get update -y

# Automatically accept the Oracle license
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
	apt-get install -y oracle-java8-installer && \
	apt-get install -y oracle-java8-set-default
	
# Clean up
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
	apt-get purge -y --auto-remove $buildDeps && \
	apt-get autoremove -y && apt-get clean

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle