FROM anapsix/alpine-java:8u172b11_server-jre

ARG JAR_FILE
COPY target/${JAR_FILE} /
ENV JAR_FILE=${JAR_FILE}

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
