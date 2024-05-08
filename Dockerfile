# Use the official Logstash image from Docker Hub
FROM docker.elastic.co/logstash/logstash:8.13.3

RUN rm -f /usr/share/logstash/pipeline/logstash.conf

COPY logstash.conf /usr/share/logstash/pipeline/logstash.conf

EXPOSE 5044

CMD ["logstash", "-f", "/usr/share/logstash/pipeline/logstash.conf"]