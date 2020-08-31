FROM solr:8
LABEL maintainer="info@jield.nl"

ADD solr/equipment /opt/solr/server/solr/configsets/equipment
ADD solr/equipment_module /opt/solr/server/solr/configsets/equipment_module
ADD solr/monitor /opt/solr/server/solr/configsets/monitor
ADD solr/monitor_step /opt/solr/server/solr/configsets/monitor_step
ADD solr/request /opt/solr/server/solr/configsets/request
ADD solr/reservation /opt/solr/server/solr/configsets/reservation
ADD solr/file /opt/solr/server/solr/configsets/file
ADD solr/module /opt/solr/server/solr/configsets/module
ADD solr/module_step /opt/solr/server/solr/configsets/module_step
ADD solr/process /opt/solr/server/solr/configsets/process
ADD solr/process_module /opt/solr/server/solr/configsets/process_module
ADD solr/run /opt/solr/server/solr/configsets/run
ADD solr/run_part /opt/solr/server/solr/configsets/run_part
ADD solr/run_step /opt/solr/server/solr/configsets/run_step
ADD solr/substrate /opt/solr/server/solr/configsets/substrate