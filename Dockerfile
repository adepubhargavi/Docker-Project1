FROM centos 

MAINTAINER Ravindra ravindra.devops@gmail.com

RUN mkdir /opt/tomcat

WORKDIR /opt/tomcat
RUN curl -O https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.69/bin/apache-tomcat-8.5.69.tar.gz
RUN tar xvzf apache-tomcat-8.5.69.tar.gz
RUN mv apache-tomcat-8.5.69/* /opt/tomcat/.
RUN yum update -y
RUN yum install vim -y
RUN yum install java -y
RUN java -version

WORKDIR /opt/tomcat/webapps
RUN curl -O -L https://github.com/ThotaThanish/Docker-Project1/raw/main/dist/Cloud-DevOps.war

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]

