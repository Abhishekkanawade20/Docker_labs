FROM centos:7
RUN yum update -y
RUN yum install java-17-openjdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz
WORKDIR /tmp


