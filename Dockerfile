# FROM docker.io/library/alpine:3.20.3
FROM docker.io/bonavadeur/ikukantai-queue-base:v0.1

WORKDIR /

COPY ./* /ko-app/

RUN chmod +x /ko-app/*

ENTRYPOINT ["/ko-app/startup.sh"]