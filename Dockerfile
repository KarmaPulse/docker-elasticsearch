FROM java:8-jre
MAINTAINER Marco Sanchez <marco@kamikazelab.com>


ENV REFRESHED_AT 2015-10-06
ENV ELASTICSEARCH_VERSION 1.7.2
ENV ELASTICSEARCH_PATH /opt/elasticsearch-${ELASTICSEARCH_VERSION}
ENV PATH $PATH:$ELASTICSEARCH_PATH/bin

ADD https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-${ELASTICSEARCH_VERSION}.tar.gz /elasticsearch.tar.gz
RUN tar -C /opt -xzvf ./elasticsearch.tar.gz && rm ./elasticsearch.tar.gz

VOLUME $ELASTICSEARCH_PATH/config

EXPOSE 9200
EXPOSE 9300

ENTRYPOINT ["elasticsearch"]
