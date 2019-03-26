FROM openjdk:8-jdk-alpine

ENV FILEBEAT_VERSION 5.6.9

RUN wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz

# Un tar
RUN tar -zxf filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz

## Re name it
RUN mv -f filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz filebeat

## write permissions
RUN chmod -R ag+w+x filebeat

## remove tar file
RUN rm -f filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz

## remove template and add custom one
RUN rm -f filebeat/filebeat.yml
ADD filebeat.yml filebeat/filebeat.yml

## add custom script file
ADD startApp.sh startApp.sh
RUN chmod +x ./startApp.sh

## make a dir that maps to persistent volume mount
RUN mkdir /logs && chmod -R ag+w+x /logs

EXPOSE 8008

CMD ./startApp.sh
USER 1001
