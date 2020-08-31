# solodb-solr
Dedicated Docker Repository for SoloDB Solr instance


##Deployment to Azure

```
docker login solodb.azurecr.io (via admin user, via Password 2)
docker build --tag solr:1.0 .
docker tag solr:1.0 solodb.azurecr.io/solr:v1
docker push solodb.azurecr.io/solr:v1
```

##Build package in GitHub
```shell script
cat ~/GH_TOKEN.txt | docker login docker.pkg.github.com -u japaveh --password-stdin
docker build --tag solr:1.0 .
docker tag solr:1.0 docker.pkg.github.com/jield-webdev/solodb-solr/solr:v1
docker push docker.pkg.github.com/jield-webdev/solodb-solr/solr:v1
```