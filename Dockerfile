FROM centos
LABEL maintainer=”tester@gmail.com”
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.72/bin/apache-tomcat-8.5.72.tar.gz
RUN tar xvfz  apache*.tar.gz
RUN mv apache-tomcat-8.5.72/* /opt/tomcat/
RUN yum install -y java
RUN java -version
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run”]
