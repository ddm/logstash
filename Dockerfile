# See https://hub.docker.com/r/_/logstash/
# deprecated on 2017-06-20
FROM logstash:5.4.2-alpine

ENV TZ UTC
ADD logstash.conf /conf/logstash.conf

USER logstash
EXPOSE 12201/udp
CMD logstash -f /conf/logstash.conf
