FROM dockerfile/java

WORKDIR /opt
RUN curl -o /opt/flyway.zip http://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/3.0/flyway-commandline-3.0.zip

RUN unzip flyway.zip && rm flyway.zip

ADD http://central.maven.org/maven2/mysql/mysql-connector-java/5.1.34/mysql-connector-java-5.1.34.jar /opt/flyway-3.0/jars/
ADD http://central.maven.org/maven2/org/mariadb/jdbc/mariadb-java-client/1.1.7/mariadb-java-client-1.1.7.jar /opt/flyway-3.0/jars/
ADD http://central.maven.org/maven2/com/h2database/h2/1.4.182/h2-1.4.182.jar /opt/flyway-3.0/jars/
ADD http://central.maven.org/maven2/org/postgresql/postgresql/9.3-1102-jdbc41/postgresql-9.3-1102-jdbc41.jar /opt/flyway-3.0/jars/
ADD http://central.maven.org/maven2/org/apache/derby/derbyclient/10.11.1.1/derbyclient-10.11.1.1.jar /opt/flyway-3.0/jars/

ENTRYPOINT /opt/flyway-3.0/flyway

