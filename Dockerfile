FROM jfclere/tomcat10:latest
LABEL Description="Tomcat webapp image to use with the JWS operator"
VOLUME /tmp

RUN apt-get update
RUN apt-get install -y git maven openjdk-11-jdk-headless

RUN git clone https://github.com/jfclere/demo-webapp.git

RUN (cd demo-webapp; export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64; mvn install; cp target/demo-1.0.war /deployments/ROOT.war)
