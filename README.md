## Build 

You'll need to add `ppa:ubuntu-raspi2/ppa` PPA for dependency (`libraspberrypi0`):

    add-apt-repository ppa:ubuntu-raspi2/ppa

Then build the snap by: 

    snapcraft snap 

This repository consists a prebuilt `eglfs_brcm` driver, under `data/usr/lib/arm-linux-gnueabihf/qt5/plugins/egldeviceintegrations/libqeglfs-brcm-integration.so`. 
You can build it from the source of `libqt5gui5` package with `libraspberrypi-dev` headers. 

## Install 

    sudo snap install --force-dangerous --devmode oxide-digitalsignage_1_armhf.snap 

## Config 

If you encountered `glGetError 0x505` error while opening some page, please increase the GPU memory setting based on your Pi's model. 
Edit `/boot/firmware/config.txt` and add one line: 

    gpu_mem=448 
