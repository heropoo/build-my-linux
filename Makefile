build: linux-5.4.62.tar.xz
	tar -xavf linux-5.4.62.tar.xz
	cd linux-5.4.62
	make

linux-5.4.62.tar.xz :
	wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.62.tar.xz

busybox-1.31.1.tar.bz2 :
	wget https://busybox.net/downloads/busybox-1.31.1.tar.bz2

