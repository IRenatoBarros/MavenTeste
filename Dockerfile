FROM openjdk:11
 
WORKDIR /usr/src/app
 
COPY src /usr/src/app/src
 
RUN mkdir -p out && \
    javac -d out src/main/java/org/example/Main.java
 
CMD ["java", "-cp", "out", "Main"]

