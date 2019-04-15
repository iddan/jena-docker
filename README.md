# Apache Jena Docker

### Usage
```
docker run -d -p 8080:8080 iddan/jena;
```
[Apache Jena Fuseki](https://jena.apache.org/documentation/fuseki2/) will be available at http://localhost:8080/fuseki/

### Development
```bash
docker build -t jena .;
docker run -d -p 8080:8080 jena;
```

### Previous Art
[INSTALLING APACHE JENA FUSEKI ON DEBIAN 9](https://nvbach.blogspot.com/2018/07/apache-jena-fuseki-on-debian-9-from.html)
