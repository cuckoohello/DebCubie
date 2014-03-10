mkdir -p /root/firmware/
( cd /root/u-boot-sunxi && make distclean && make cubietruck && cp u-boot.bin spl/sunxi-spl.bin /root/firmware )
