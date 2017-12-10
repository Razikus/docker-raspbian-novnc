#screen -dmS x11Server x11vnc -forever -usepw -create -passwd $X11PASSWD
/scripts/setPassword.exp
export USER=root
vncserver :1
/noVNC/utils/launch.sh --vnc localhost:$X11SERVERPORT --listen 8080
