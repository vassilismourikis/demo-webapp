FROM jfclere/tomcat10:latest
LABEL Description="Tomcat webapp image to use with the JWS operator"
VOLUME /tmp

ADD  target/demo-1.0.war /deployments/ROOT.war
