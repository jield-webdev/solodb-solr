# solodb-solr
Dedicated Docker Repository for SoloDB Solr instance

##Deployment to Azure
```shell script
docker login imecint.azurecr.io
docker build --tag solodb-solr:1.0 .
docker tag solr:1.0 imecint.azurecr.io/solodb-solr:v1
docker push imecint.azurecr.io/solodb-solr:v1
```

##Build package in GitHub
```shell script
cat ~/GH_TOKEN.txt | docker login docker.pkg.github.com -u japaveh --password-stdin
docker build --tag solodb-solr:1.0 .
docker tag solodb-solr:1.0 docker.pkg.github.com/jield-webdev/solodb-solr/solodb-solr:latest
docker push docker.pkg.github.com/jield-webdev/solodb-solr/solodb-solr:latest
```