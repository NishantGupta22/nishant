FROM openjdk:latest
WORKDIR /app
COPY hello.java /app
RUN javac hello.java
CMD ["java","hello"]
