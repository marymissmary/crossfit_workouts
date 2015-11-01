##
## Elasticsearch
##

FROM elasticsearch:1.7

RUN apt-get update && apt-get install -y vim
RUN echo 'PS1="\u@ es container: /# "' >> /root/.bashrc
RUN echo 'alias ls="ls --color=auto"' >> /root/.bashrc


##
## set up snapshots repo
##
#RUN echo 'path.repo: ["/var/elasticsearch_snapshots"]' > /usr/share/elasticsearch/config/elasticsearch.yml

##
## install browser plugin
##
#RUN /usr/share/elasticsearch/bin/plugin -install mobz/elasticsearch-head
EXPOSE 9200
EXPOSE 9300
#VOLUME /usr/share/elasticsearch/data

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["elasticsearch"]
