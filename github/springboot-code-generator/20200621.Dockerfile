FROM yonghongwang/build-tool:ubuntu-18.04 as builder
# yonghongwang/springboot-code-generator:20200621

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

WORKDIR /workspace
RUN wget https://github.com/moshowgame/SpringBootCodeGenerator/archive/20200621.tar.gz \
&& tar -zxvf 20200621.tar.gz && mv SpringBootCodeGenerator-20200621/* .
RUN mvn -version && mvn package

FROM java:8

WORKDIR /app
COPY --from=builder /workspace/generator-web/target/generator-web-2.0.jar ./app.jar

EXPOSE 1234

CMD java -jar app.jar
