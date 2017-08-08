cd linux
KERNEL=kernel7
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- bcm2709_defconfig

make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage modules dtbs

Install:
sudo make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- INSTALL_MOD_PATH=/media/zewen/62ca0b6d-6291-4c40-b1fd-11bc291e4a38  modules_install

sudo cp arch/arm/boot/zImage mnt/fat32/kernel7.img


arecord  -r 8000 -D hw:1,0  test1.wav -f S16_LE -c 1
