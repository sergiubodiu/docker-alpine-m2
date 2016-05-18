# Docker image for Maven (OpenJDK 8)
FROM sbodiu/docker-alpine
MAINTAINER Sergiu Bodiu <sbodiu@pivotal.io>

ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
    
RUN apk --no-cache add \
    openjdk8 \
    maven \
    tar \
    git  \
    maven --no-cache --repository http://alpine.gliderlabs.com/alpine/edge/testing/ --allow-untrusted
  
# Start container
CMD ["java","-Djava.security.egd=file:/dev/urandom"]
