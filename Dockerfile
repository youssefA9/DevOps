FROM openjdk:11
WORKDIR /test
COPY hello.java ./
RUN javac hello.java
CMD java hello