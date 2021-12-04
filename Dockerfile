FROM alpine:latest

RUN apk add --update make git bash

RUN git clone https://github.com/awslabs/git-secrets.git /git-secrets && \
      cd /git-secrets && \
      make install

WORKDIR /data
      
ENTRYPOINT ["git", "secrets"]
