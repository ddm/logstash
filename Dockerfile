FROM logstash:alpine

ENV TZ UTC
ADD logstash.conf /conf/logstash.conf

CMD ["-f", "/conf/logstash.conf"]
