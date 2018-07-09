FROM wazuh/wazuh-logstash as wazuh

FROM docker.elastic.co/logstash/logstash:6.3.0

RUN rm -f /usr/share/logstash/pipeline/logstash.conf

COPY --from=wazuh /usr/share/logstash/pipeline/01-wazuh.conf /usr/share/logstash/pipeline/01-wazuh.conf
