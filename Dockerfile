FROM tomcat:8.0
RUN apt-get update && apt-get install wget
#COPY index.html /merged/usr/local/tomcat/webapps/ROOT/index.html
ADD https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war /usr/local/tomcat/webapps/sample.war
USER root
WORKDIR /usr/local/tomcat
CMD ["echo","create c soumya container"]
CMD ["catalina.sh", "run"]
EXPOSE 8080
