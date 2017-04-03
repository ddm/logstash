# See https://hub.docker.com/r/_/logstash/
# deprecated on 2017-06-20
# FROM logstash:alpine
FROM docker.elastic.co/logstash/logstash:5.2.2

ENV TZ UTC
ADD logstash.conf /conf/logstash.conf

CMD logstash -f /conf/logstash.conf
