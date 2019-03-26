FROM centos:latest

COPY /target/app.jar /app/
COPY /ubuntu/chromedriver /usr/bin/chromedriver

RUN chmod -R ag+w+x /app/
RUN chmod -R ag+w+x /usr/bin/chromedriver

EXPOSE 8080
USER 1001

CMD java -jar /app/app.jar