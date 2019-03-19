FROM centos7

RUN  yum -y install -y curl wget httpd-tools grep parallel

ADD run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
ENTRYPOINT ["/tmp/run.sh"]
