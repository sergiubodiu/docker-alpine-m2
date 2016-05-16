# Docker base image for OpenJRE 8.
FROM sbodiu/docker-alpine
MAINTAINER Sergiu Bodiu <sbodiu@pivotal.io>

ENV M2_VERSION="3.3.9" \
    M2_HOME=/usr/lib/mvn
    
RUN apk --no-cache add \
    tar \
    git  && \
    cd /tmp && \
    wget "http://download.nus.edu.sg/mirror/apache/maven/maven-3/$M2_VERSION/binaries/apache-maven-$M2_VERSION-bin.tar.gz" && \
    tar -zxvf "apache-maven-$M2_VERSION-bin.tar.gz" && \
    mv "apache-maven-$M2_VERSION" "$M2_HOME" && \
    ln -s "$M2_HOME/bin/mvn" /usr/bin/mvn && \
    rm -rf /tmp/*
  
# Start container
CMD ["java","-Djava.security.egd=file:/dev/urandom"]
