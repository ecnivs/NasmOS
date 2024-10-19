make
qemu-system-i386 -fda build/main.img -vnc :0 &

sleep 2

vncviewer localhost:5900
