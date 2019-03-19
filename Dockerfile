FROM alpine

RUN apk add --update curl

ADD run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
ENTRYPOINT ["/tmp/run.sh"]
