FROM centos:7
MAINTAINER Nirpendra kumar
ADD ./init.sh ./
RUN yum install epel* nmap-ncat -y && yum clean all -y 
RUN chown 1001:1001 init.sh && chmod o+w init.sh
USER 1001
EXPOSE 8080
CMD ["./init.sh"]
