FROM ruimo/df-ub1404-jdk8
MAINTAINER Shisei Hanai<ruimo.uno@gmail.com>

RUN apt-get -y install wget unzip

EXPOSE 9000

ADD start.sh /start.sh
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN locale-gen ja_JP.UTF-8
RUN /usr/sbin/update-locale LANG=ja_JP.UTF-8

CMD ["/bin/bash", "-c", "/start.sh"]

