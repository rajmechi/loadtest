FROM centos
RUN  yum -y install curl wget httpd-tools grep yum install epel-release
RUN yum -y install parallel

ADD run.sh /tmp/run.sh
RUN chmod +x /tmp/run.sh
ENTRYPOINT ["/tmp/run.sh"]
