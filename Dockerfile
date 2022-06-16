FROM solr:latest
LABEL maintainer="info@jield.nl"
LABEL org.opencontainers.image.source="https://github.com/jield-webdev/solodb/solr"

#ENV SOLR_OPTS="-XX:-UseLargePages"

USER root
RUN apt-get update && apt-get install nano
USER solr

ADD --chown=solr:solr solr/building /var/solr/data/building
ADD --chown=solr:solr solr/room /var/solr/data/room
ADD --chown=solr:solr solr/chemical /var/solr/data/chemical
ADD --chown=solr:solr solr/chemical_container /var/solr/data/chemical_container
ADD --chown=solr:solr solr/consumable /var/solr/data/consumable
ADD --chown=solr:solr solr/equipment /var/solr/data/equipment
ADD --chown=solr:solr solr/equipment_reservation /var/solr/data/equipment_reservation
ADD --chown=solr:solr solr/equipment_module /var/solr/data/equipment_module
ADD --chown=solr:solr solr/equipment_module_status /var/solr/data/equipment_module_status
ADD --chown=solr:solr solr/equipment_module_issue /var/solr/data/equipment_module_issue
ADD --chown=solr:solr solr/equipment_module_ecn /var/solr/data/equipment_module_ecn
ADD --chown=solr:solr solr/equipment_module_changelog /var/solr/data/equipment_module_changelog
ADD --chown=solr:solr solr/facility /var/solr/data/facility
ADD --chown=solr:solr solr/file /var/solr/data/file
ADD --chown=solr:solr solr/monitor /var/solr/data/monitor
ADD --chown=solr:solr solr/monitor_step /var/solr/data/monitor_step
ADD --chown=solr:solr solr/process /var/solr/data/process
ADD --chown=solr:solr solr/process_module /var/solr/data/process_module
ADD --chown=solr:solr solr/process_module_recipe /var/solr/data/process_module_recipe
ADD --chown=solr:solr solr/request /var/solr/data/request
ADD --chown=solr:solr solr/run /var/solr/data/run
ADD --chown=solr:solr solr/run_changelog /var/solr/data/run_changelog
ADD --chown=solr:solr solr/run_step /var/solr/data/run_step
ADD --chown=solr:solr solr/substrate /var/solr/data/substrate
ADD --chown=solr:solr solr/template /var/solr/data/template
ADD --chown=solr:solr solr/template_step /var/solr/data/template_step
ADD --chown=solr:solr solr/zone /var/solr/data/zone
ADD --chown=solr:solr solr/zone_reservation /var/solr/data/zone_reservation

RUN mkdir /var/solr/cache && chown -R solr:solr /var/solr/cache


RUN rm -f /var/solr/cache/solodb_building/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_room/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_chemical/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_chemical_container/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_consumable/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_equipment/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_equipment_reservation/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_equipment_module/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_equipment_module_status/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_equipment_module_issue/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_equipment_module_ecn/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_equipment_module_changelog/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_facility/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_file/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_monitor/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_monitor_step/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_process/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_process_module/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_process_module_recipe/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_request/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_run/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_run_changelog/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_run_step/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_substrate/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_template/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_template_step/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_zone/data/index/write.lock
RUN rm -f /var/solr/cache/solodb_zone_reservation/data/index/write.lock