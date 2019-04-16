# Apache Jena Docker

### Usage
```bash
docker run -d -p 3030:3030 iddan/jena;
```
[Apache Jena Fuseki](https://jena.apache.org/documentation/fuseki2/) will be available at http://localhost:3030

#### With memory dataset

```bash
docker run -p 3030:3030 jena --mem /dataset
```

#### With Configuration
[Configuration](https://jena.apache.org/documentation/fuseki2/fuseki-configuration.html#fuseki-configuration-file) should be exposed as a volume mapped to `/etc/fuseki/configuration`

```bash
docker run -d -p 3030:3030 -v configuration:/etc/fuseki/configuration iddan/jena;
```

#### Using SPARQL over HTTP
[SOH (SPARQL Over HTTP)](https://jena.apache.org/documentation/fuseki2/soh.html) is a set of command-line scripts for working with SPARQL 1.1. SOH is server-independent and will work with any compliant SPARQL 1.1 system offering HTTP access.

```bash
docker run jena $SERVICE --service http://host.docker.internal:$PORT/$DATASET/sparql # ...
```

##### Examples

Query all triples in dataset dataset on port 3030

```bash
docker run jena s-query --service http://host.docker.internal:3030/dataset/sparql "SELECT ?a ?b ?c WHERE { ?a ?b ?c }";
```

Load data from `data/data.ttl` to dataset dataset, graph default on port 3030

```bash
docker run -v $PWD/data:/data jena s-put http://host.docker.internal:3030/dataset default /data/data.ttl
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
docker run -p 3030:3030 jena;
```

### Previous Art
[Installing Apache Jena Fuseki on Debian 9](https://nvbach.blogspot.com/2018/07/apache-jena-fuseki-on-debian-9-from.html)
