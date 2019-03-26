FROM centos:latest

EXPOSE 8080 8443

RUN yum upgrade -y&& yum install -y java-1.8.0-openjdk-devel curl iputils wget net-tools; yum clean headers; yum clean packages; yum clean metadata; yum clean all

COPY /target/app.jar /app/
COPY /ubuntu/chromedriver /usr/bin/chromedriver

RUN chmod -R ag+w+x /app/
RUN chmod -R ag+w+x /usr/bin/chromedriver

EXPOSE 8080
USER 1001

CMD java -jar /app/app.jar





#FROM openjdk:8-jdk-alpine
#
#COPY /target/app.jar /app/
#COPY /ubuntu/chromedriver /usr/bin/chromedriver
#
#RUN chmod -R ag+w+x /app/
#RUN chmod -R ag+w+x /usr/bin/chromedriver
#
#EXPOSE 8080
#USER 1001
#
#CMD java -jar /app/app.jar