# solodb-solr

Dedicated Docker Repository for SoloDB Solr instance

find ./ -name 'core.properties' -type f -exec sed -i 's/name=/name=solodb_dev_/g' {} \;