FROM tomcat:8.5-jdk8-openjdk as builder

WORKDIR /app
COPY . .

RUN javac -cp .:/usr/local/tomcat/lib/servlet-api.jar HelloWorldServlet.java

RUN mkdir -p ${CATALINA_HOME}/webapps/hello/WEB-INF/classes
COPY web.xml ${CATALINA_HOME}/webapps/hello/WEB-INF/web.xml
RUN mv HelloWorldServlet.class ${CATALINA_HOME}/webapps/hello/WEB-INF/classes/HelloWorldServlet.class

EXPOSE 8080
CMD ["catalina.sh", "run"]