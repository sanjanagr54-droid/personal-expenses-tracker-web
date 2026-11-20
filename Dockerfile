FROM tomcat:10.1-jdk17
RUN sed -i 's/port="8005"/port="-1"/' /usr/local/tomcat/conf/server.xml
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
