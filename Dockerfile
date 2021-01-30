FROM gcr.io/jenkinsxio/builder-maven-graalvm:latest
ENV CHROME_DRIVER_VERSION=83.0.4103.39
ENV ALLURE_VERSION=2.13.3

# Google Chrome
RUN yum update -y \
    && yum install epel-release -y \
    && yum install --enablerepo=centosplus -y --quiet git
#     chromium chromium-headless chromedriver

#Allure CLI
#RUN wget --no-verbose -O /tmp/allure-cli.zip https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/${ALLURE_VERSION}/allure-commandline-${ALLURE_VERSION}.zip \
#    && unzip /tmp/allure-cli.zip -d /opt \
#    && rm /tmp/allure-cli.zip \
#    && chmod 755 /opt/allure-${ALLURE_VERSION}/bin/allure \
#    && ln -s /opt/allure-${ALLURE_VERSION}/bin/allure /usr/bin/allure

COPY bin/* /usr/bin/
