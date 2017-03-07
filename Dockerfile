# See https://hub.docker.com/r/_/logstash/
# deprecated on 2017-06-20
# FROM docker.elastic.co/logstash/logstash:5.2.2
FROM logstash:alpine

ENV TZ UTC
ADD logstash.conf /conf/logstash.conf

CMD ["-f", "/conf/logstash.conf"]
