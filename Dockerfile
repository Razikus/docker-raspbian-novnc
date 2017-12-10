FROM resin/rpi-raspbian

ENV X11PASSWD=securePassword

RUN apt-get update
RUN apt-get install git net-tools 
RUN apt-get install screen 
RUN apt-get install python python3
RUN apt-get install tightvncserver
RUN apt-get install expect
RUN apt-get install xfonts-base

RUN git clone https://github.com/novnc/noVNC.git

RUN mkdir /scripts/
ADD ./scripts/ /scripts/

ENV X11SERVERPORT=5901

CMD [ "/bin/bash", "/scripts/entrypoint.sh" ]
