FROM amazoncorrectto:17
COPY target/*.jar /opt/app/app.jar
EXPOSE 8080
ENTRYPOINT ["java"]
CMD ["-Djava.security.egd=file:/dev/./urandom", "-jar", "/opt/app/app.jar", "--server-port=8080"]