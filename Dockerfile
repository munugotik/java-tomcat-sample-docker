FROM tomcat:8.0
ADD **/*.war tomcat/apache-tomcat-9.0.34/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]