
FROM entando/entando-jx-maven-java11-base:0.0.1
#manually build the above image from Dockerfile.base
COPY bin/* /usr/bin/
