# See https://hub.docker.com/r/_/logstash/
# deprecated on 2017-06-20
FROM logstash:5.3.0-alpine

ENV TZ UTC
ADD logstash.conf /conf/logstash.conf

CMD logstash -f /conf/logstash.conf
