FROM tomcat:8.0
MAINTAINER hem@devopstechlab.com
# COPY path-to-your-application-war path-to-webapps-in-docker-tomcat
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/
