FROM openjdk:11-jre

# Download Apache Jena
ENV APACHE_JENA_FUSEKI_TAR_GZ http://apache.spd.co.il/jena/binaries/apache-jena-fuseki-3.10.0.tar.gz
RUN wget $APACHE_JENA_FUSEKI_TAR_GZ -O apache-jena-fuseki.tar.gz

RUN apt-get update
RUN apt-get install -y ruby

ENV FUSEKI_BASE /etc/fuseki
ENV PATH="/usr/local/apache-jena-fuseki/bin:${PATH}"

# Extract the archive
RUN tar -zxvf apache-jena-fuseki.tar.gz

# Normalize directory name
RUN mv $(find . -name apache-jena-fuseki-*) /usr/local/apache-jena-fuseki
# Set as work directory
WORKDIR /usr/local/apache-jena-fuseki

# Set Shiro to allow any connection by default
COPY shiro.ini $FUSEKI_BASE/shiro.ini

# Set default service
COPY default.ttl $FUSEKI_BASE/configuration/default.ttl

# Run server
CMD ./fuseki-server