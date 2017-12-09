#screen -dmS x11Server x11vnc -forever -usepw -create -passwd $X11PASSWD
export USER=root
screen -dmS vncserver :1
/noVNC/utils/launch.sh --vnc localhost:$X11SERVERPORT --listen 8080
