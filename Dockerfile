FROM quay.io/ktsagara/tomcat10-builder:latest
LABEL Description="Tomcat webapp image to use with the JWS operator"
VOLUME /tmp

RUN git clone https://github.com/KatyT123/demo-webapp

RUN (cd demo-webapp; git checkout jakartaEE; export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64; mvn install; cp target/demo-1.0.war /deployments/ROOT.war)
