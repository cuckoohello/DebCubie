sudo apt-get update
sudo apt-get install -y qemu-user-static git debootstrap uboot-mkimage pkg-config build-essential libusb-1.0-0-dev
mkdir -p ./firmware/source/
( cd ./firmware/source && git clone https://github.com/linux-sunxi/sunxi-tools.git && cd sunxi-tools && make && cp fex2bin ../../ ) 
( cd ./firmware/source && git clone https://github.com/linux-sunxi/sunxi-boards.git && cp sunxi-boards/sys_config/a20/cubietruck.fex ../ )
