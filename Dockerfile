FROM tomcat:8.0
MAINTAINER Krishnan Mani <km@krishnanm.com>

COPY target/*.war /usr/local/tomcat/webapps/
