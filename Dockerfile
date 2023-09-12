FROM ubuntu:latest

RUN apt-get update && apt-get install -y redis-tools

COPY ./redis-load-test.sh /usr/local/bin/redis-load-test.sh

RUN chmod +x /usr/local/bin/redis-load-test.sh

ENV REDIS_HOST=localhost

ENTRYPOINT ["/usr/local/bin/redis-load-test.sh"]
