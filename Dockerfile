FROM resin/rpi-raspbian

ENV X11PASSWD=securePassword

RUN apt-get update
RUN apt-get install git x11vnc git net-tools 
RUN apt-get install screen 
RUN apt-get install python python3
RUN apt-get install xvfb

RUN git clone https://github.com/novnc/noVNC.git

RUN mkdir /scripts/
ADD ./scripts/ /scripts/

CMD [ "/bin/bash", "/scripts/entrypoint.sh" ]
