# solodb-solr
Dedicated Docker Repository for SoloDB Solr instance


##Deployment to Azure

```
docker login solodb.azurecr.io (via admin user, via Password 2)
docker build --tag solr:1.0 .
docker tag solr:1.0 solodb.azurecr.io/solr:v1
docker push solodb.azurecr.io/solr:v1
```