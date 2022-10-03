#
FROM jrei/systemd-ubuntu:20.04
ENV TZ=America/New_York
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt -y  update && apt -y  upgrade
RUN apt -y install \
       logrotate \
       wget \
       curl \
       nano \
       iputils-ping

COPY earnapp.sh /home/
