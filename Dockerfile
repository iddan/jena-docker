FROM tomcat:8.5.40-jre8-alpine
ENV APACHE_JENA_FUSEKI_TAR_GZ http://apache.spd.co.il/jena/binaries/apache-jena-fuseki-3.10.0.tar.gz
RUN wget $APACHE_JENA_FUSEKI_TAR_GZ -O apache-jena-fuseki.tar.gz
RUN tar -zxvf apache-jena-fuseki.tar.gz
RUN mv $(find . -name apache-jena-fuseki-*) apache-jena-fuseki
RUN mv apache-jena-fuseki/fuseki.war /usr/local/tomcat/webapps/fuseki.war && \
    rm apache-jena-fuseki.tar.gz && \
    rm -r apache-jena-fuseki
