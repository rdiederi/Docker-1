FROM ubuntu:16.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ca-certificates openssh-server wget postfix

RUN wget https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh && chmod 777 script.deb.sh && ./script.deb.sh && apt-get install -y gitlab-ce

RUN apt update && apt install -y tzdata && \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo "unicorn['worker_timeout'] = 100" >> etc/gitlab/gitlab.rc
RUN echo "unicorn['worker_processes'] = 3" >> etc/gitlab/gitlab.rb
RUN echo "prometheus_monitoring['enable'] = false" >> /etc/gitlab/gitlab.rb
RUN echo "grafana['enable'] = false" >> /etc/gitlab/gitlab.rb

EXPOSE 443 80 22

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null