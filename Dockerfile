FROM solr:latest
LABEL maintainer="info@jield.nl"
LABEL org.opencontainers.image.source="https://github.com/jield-webdev/solodb-solr/solr"

ENV SOLR_OPTS="-XX:-UseLargePages"

USER root
RUN apt-get update && apt-get install nano
USER solr

ADD --chown=solr:solr solr/building /var/solr/data/building

ADD --chown=solr:solr solr/chemical /var/solr/data/chemical
ADD --chown=solr:solr solr/chemical_container /var/solr/data/chemical_container

ADD --chown=solr:solr solr/consumable /var/solr/data/consumable

ADD --chown=solr:solr solr/equipment /var/solr/data/equipment
ADD --chown=solr:solr solr/equipment_module /var/solr/data/equipment_module
ADD --chown=solr:solr solr/equipment_module_issue /var/solr/data/equipment_module_issue

ADD --chown=solr:solr solr/facility /var/solr/data/facility

ADD --chown=solr:solr solr/file /var/solr/data/file

ADD --chown=solr:solr solr/monitor /var/solr/data/monitor
ADD --chown=solr:solr solr/monitor_step /var/solr/data/monitor_step

ADD --chown=solr:solr solr/process /var/solr/data/process
ADD --chown=solr:solr solr/process_module /var/solr/data/process_module
ADD --chown=solr:solr solr/process_module_recipe /var/solr/data/process_module_recipe

ADD --chown=solr:solr solr/request /var/solr/data/request
ADD --chown=solr:solr solr/reservation /var/solr/data/reservation

ADD --chown=solr:solr solr/run /var/solr/data/run
ADD --chown=solr:solr solr/run_step /var/solr/data/run_step

ADD --chown=solr:solr solr/substrate /var/solr/data/substrate

ADD --chown=solr:solr solr/template /var/solr/data/template
ADD --chown=solr:solr solr/template_step /var/solr/data/template_step

ADD --chown=solr:solr solr/zone /var/solr/data/zone
ADD --chown=solr:solr solr/zone_reservation /var/solr/data/zone_reservation

