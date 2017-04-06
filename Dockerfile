FROM logstash:5.3.0

COPY logstash.conf /usr/share/logstash/config/logstash.conf

ENV TZ UTC
CMD logstash -f /usr/share/logstash/config/logstash.conf
