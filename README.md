# Apache Jena Docker

### Usage
```
docker run -d -p 8080:8080 iddan/jena;
```
[Apache Jena Fuseki](https://jena.apache.org/documentation/fuseki2/) will be available at http://localhost:8080/fuseki/

#### With Configuration
[Configuration](https://jena.apache.org/documentation/fuseki2/fuseki-configuration.html#fuseki-configuration-file) should be exposed as a volume mapped to `/etc/fuseki/configuration/`

```bash
docker run -d -p 8080:8080 -v configuration/etc/fuseki/configuration/ iddan/jena;
```

### To Do
 - Configuration documentation
 - Links to API documentation

### Development
```bash
docker build -t jena .;
docker run -d -p 8080:8080 jena;
```

### Previous Art
[Installing Apache Jena Fuseki on Debian 9](https://nvbach.blogspot.com/2018/07/apache-jena-fuseki-on-debian-9-from.html)
