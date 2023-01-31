#FROM openjdk:8-jre-alpine
#WORKDIR /app
#EXPOSE 8080
#ADD /build/libs/blog-0.0.1-SNAPSHOT.jar dockerdemo.jar
#CMD ["java", "-jar", "dockerdemo.jar"]


FROM gradle AS build
WORKDIR /app
COPY  src /app/src
COPY build.gradle.kts /app
RUN gradle bootJar

FROM openjdk:alpine
COPY --from=build /app/build/libs/*.jar producer.jar
ENTRYPOINT ["java","-jar","producer.jar"]