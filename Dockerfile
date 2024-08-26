FROM tomcat:9.0

# Ajouter le script manquant (exemple, vous devez ajuster selon vos besoins)
RUN echo '#!/bin/sh' > /usr/local/tomcat/bin/setclasspath.sh
RUN chmod +x /usr/local/tomcat/bin/setclasspath.sh

COPY target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/ROOT.war
COPY target/hello-world-war-1.0.0/ /usr/local/tomcat/webapps/ROOT

EXPOSE 8080

