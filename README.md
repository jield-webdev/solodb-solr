# solodb-solr

Dedicated Docker Repository for SoloDB Solr instance


find ./ -name 'core.properties' -type f -exec sed -i 's/solodb_=/name=qutech_solodb_/g' {} \;