FROM ubuntu:18.10
MAINTAINER Kok How, Teh <funcoolgeeek@gmail.com>
RUN apt update -y --fix-missing
RUN apt install -y curl
ADD elasticsearch_access_logs_init.sh /usr/local/bin/elasticsearch_access_logs_init.sh
ADD run.sh /usr/local/bin/run.sh
ENTRYPOINT ["/usr/local/bin/run.sh"]
CMD ["bash"]
