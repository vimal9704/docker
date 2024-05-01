# Use OpenJDK image as the base
FROM openjdk:8-jdk

# Set working directory
WORKDIR /opt/tomcat

# Download and extract Apache Tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz .
RUN tar -xzvf apache-tomcat-8.5.100.tar.gz --strip-components=1

# Expose the default Tomcat port
EXPOSE 8080

#COPY ./SpringMVC.war /opt/tomcat/springmvc

# Start Tomcat
CMD ["bin/catalina.sh", "run"]
