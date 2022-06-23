# solodb-solr

Dedicated Docker Repository for SoloDB Solr instance

## Correct the names
find ./ -name 'core.properties' -type f -exec sed -i 's/name=solodb_/name=qutech_solodb_/g' {} \;

## Correct the data dirs (when run on hosted SOLR instances)
find ./ -name 'core.properties' -type f -exec sed -i 's/dataDir=\/var\/solr\/cache\/solodb_.*\/data/dataDir=data/g' {} \;

(c) 2022, Dr. Ir. Johan van der Heide (info@jield.nl)