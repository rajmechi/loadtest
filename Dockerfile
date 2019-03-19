FROM alpine

RUN apk add curl make parallel grep

RUN apk add --virtual .build-dependencies curl make 


ADD run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
ENTRYPOINT ["/tmp/run.sh"]
