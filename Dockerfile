FROM centos:7
RUN yum update -y
RUN sudo yum install java-1.8.0-amazon-corretto -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz /opt
WORKDIR /opt/apache-tomcat-8.5.100/bin
ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war /opt/apache-tomcat-8.5.100/webapps
ENV name="Jarvis"
EXPOSE 8080
CMD ["./catalina.sh", "run"]




