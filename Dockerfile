FROM centos7:latest

RUN  yum -y install curl wget httpd-tools grep parallel

ADD run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
ENTRYPOINT ["/tmp/run.sh"]
