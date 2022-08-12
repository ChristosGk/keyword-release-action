FROM alpine

RUN apk add --no-cache bash

RUN apk update && apk upgrade --available 
RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
RUN apk add py3-pip
RUN pip install rich

RUN apk --no-cache add curl

RUN apk add --no-cache httpie 
RUN apk add --no-cache jq 

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod 0755 /usr/local/bin/entrypoint.sh

COPY sample_push_event.json /sample_push_event.json

ENTRYPOINT ["entrypoint.sh"]
