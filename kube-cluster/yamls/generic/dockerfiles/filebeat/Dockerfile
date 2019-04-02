FROM centos:latest

ENV FILEBEAT_VERSION 5.6.9

RUN yum upgrade -y&& yum install -y java-1.8.0-openjdk-devel curl iputils wget net-tools; yum clean headers; yum clean packages; yum clean metadata; yum clean all

RUN wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz

# Un tar
RUN tar -zxf filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz

## Re name it
RUN mv -f filebeat-${FILEBEAT_VERSION}-linux-x86_64 filebeat

## remove tar file
RUN rm -rf filebeat-${FILEBEAT_VERSION}-linux-x86_64.tar.gz

## write permissions and remove existing yaml
RUN chmod -R ag+w+x filebeat && rm -f filebeat/filebeat.yml

## put in our custom yaml
ADD ./filebeat.yml filebeat/filebeat.yml

## add custom script file
ADD startApp.sh startApp.sh
RUN chmod ag+w+x ./startApp.sh

## make a dir that maps to persistent volume mount
RUN mkdir /logs && chmod -R ag+w+x /logs

EXPOSE 8008

CMD ./startApp.sh
USER 1001
