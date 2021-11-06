FROM centos
LABEL maintainer=”tester@gmail.com”
RUN curl -O https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.72/bin/apache-tomcat-8.5.72.tar.gz
RUN tar xvfz -C apache*.tar.gz /opt/
RUN yum install -y java
RUN java -version
EXPOSE 8080
CMD [“/opt/apache-tomcat-8.5.72/bin/catalina.sh”, “run”]
