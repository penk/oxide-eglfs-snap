# Oxide EGLFS snap

This is a snap package of Qt5 and Oxide, with default `EGLFS` QPA, so the WebView works without display server. 

The `amd64` version is using `eglfs_kms` backend (KMS/DRM), and the RPi2/3 version is using `eglfs_brcm` backend from Broadcom's dispmanx/EGL driver.

![](http://i.imgur.com/L7GWZiF.jpg)

## Build 

You'll need to add `ppa:ci-train-ppa-service/stable-phone-overlay` PPA for more recent packages: 

    sudo add-apt-repository ppa:ci-train-ppa-service/stable-phone-overlay
    
Then build it with:

    snapcraft snap 
    
## Install

    sudo snap install oxide-digitalsignage_1_amd64.snap --force-dangerous --devmode 

The `--devmode` parameter is required since EGLFS scans video devices, and currently there's no plug for that. 

## Run

If you have more than one graphic card, you'll need to disable the other one (`nouveau` for nVidia, `radeon` for AMD), and stop X11 session:

    systemctl stop lightdm
    sudo modprobe -r nouveau

And execute the browser by:

    /snap/bin/oxide-digitalsignage.start-oxide

## Details 

There's [prebuilt Qt5 binaries](https://github.com/penk/oxide-eglfs-snap/releases) needed that's linked against OpenGLES, that will be extracted via `tar-content` plugin and copied over to `prime/`. We could try to use stage packages like `libqt5gui5-gles` in the future. 

For Raspberry Pi2/3 please refer to `rpi2` branch.
