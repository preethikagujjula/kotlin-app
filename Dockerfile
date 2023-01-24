#FROM openjdk:8-jre-alpine
#WORKDIR /app
#EXPOSE 8080
#ADD /build/libs/blog-0.0.1-SNAPSHOT.jar dockerdemo.jar
#CMD ["java", "-jar", "dockerdemo.jar"]



#FROM gradle:4.10.0-jdk8-alpine AS build
#COPY --chown=gradle:gradle . /home/gradle/src/producer
#WORKDIR /home/gradle/src/producer
#RUN gradle bootJar --no-daemon --stacktrace
#
#FROM openjdk:8-jdk-alpine
#ARG JAR_FILE=build/libs/*.jar
#COPY --from=build /home/gradle/src/producer/build/libs/*.jar producer.jar
#ENTRYPOINT ["java","-jar","/producer.jar"]