# Apache Jena Docker

### Usage
```
docker run -d -p 8080:8080 iddan/jena;
```
[Apache Jena Fuseki](https://jena.apache.org/documentation/fuseki2/) will be available at http://localhost:8080

#### With Configuration
[Configuration](https://jena.apache.org/documentation/fuseki2/fuseki-configuration.html#fuseki-configuration-file) should be exposed as a volume mapped to `/etc/fuseki/configuration`

```bash
docker run -d -p 8080:8080 -v configuration:/etc/fuseki/configuration iddan/jena;
```

### Documentation

[Apache Jena Fuseki](http://jena.apache.org/documentation/fuseki2/)

#### Standards

*   [SPARQL 1.1 Query](http://www.w3.org/TR/sparql11-query/)
*   [SPARQL 1.1 Update](http://www.w3.org/TR/sparql11-update/)
*   [SPARQL 1.1 Protocol](http://www.w3.org/TR/sparql11-protocol/)
*   [SPARQL 1.1 Graph Store HTTP Protocol](http://www.w3.org/TR/sparql11-http-rdf-update/)

### Development
```bash
# Build
docker build -t jena .;
# Run
docker run -p 8080:8080 jena;
```

### Previous Art
[Installing Apache Jena Fuseki on Debian 9](https://nvbach.blogspot.com/2018/07/apache-jena-fuseki-on-debian-9-from.html)
