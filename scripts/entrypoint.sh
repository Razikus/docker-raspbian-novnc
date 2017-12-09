screen -dmS x11Server x11vnc -forever -usepw -create -passwd $X11PASSWD
/noVNC/utils/launch.sh --vnc localhost:5900 --listen 8080
