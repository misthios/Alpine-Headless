

apkovl:
	sed -i 's#<url>#$(URL)#' ./overlay/etc/local.d/setup.start
	chmod +x overlay/etc/local.d/setup.start
	tar czvf setup.apkovl.tar.gz -C overlay etc
iso:
	mkisofs -o overlay-latest.iso setup.apkovl.tar.gz

all: apkovl iso
