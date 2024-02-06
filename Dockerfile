FROM openjdk:8
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ADD target/dockspri-0.0.1-SNAPSHOT.jar dockspri.jar
EXPOSE 3000
#ENTRYPOINT exec java $JAVA_OPTS -jar dockspri.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar dockspri.jar
CMD ["java", "-jar", "/app.jar"]