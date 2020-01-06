FROM gcr.io/jenkinsxio/builder-maven-graalvm:2.0.1102-438
COPY --chown=maven:root bin/* /usr/bin/
