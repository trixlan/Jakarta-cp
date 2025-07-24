FROM quay.io/wildfly/wildfly
USER root
RUN $JBOSS_HOME/bin/add-user.sh -u admin -p Admin1_Admin1 --silent
COPY module.xml $JBOSS_HOME/modules/com/microsoft/sqlserver/main/
COPY mssql-jdbc-12.10.1.jre11.jar $JBOSS_HOME/modules/com/microsoft/sqlserver/main/
COPY standalone.xml $JBOSS_HOME/standalone/configuration/standalone.xml
# COPY jakarta-app.war $JBOSS_HOME/standalone/deployments/
COPY hbi-ubicacion-estado-web.war $JBOSS_HOME/standalone/deployments/
COPY municipios.json $JBOSS_HOME/
COPY estados.json $JBOSS_HOME/
COPY codigospostales.json $JBOSS_HOME/
USER jboss
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]