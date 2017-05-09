FROM logstash:5.4.0

COPY logstash.conf /usr/share/logstash/config/logstash.conf

USER logstash
ENV TZ UTC
CMD logstash -f /usr/share/logstash/config/logstash.conf
