# Oxide EGLFS snap

This is a snap package of Qt5 and Oxide, with default `EGLFS` QPA, so the WebView works without display server. 

The `amd64` version is using `eglfs_kms` backend (KMS/DRM), and the RPi2/3 version is using `eglfs_brcm` backend from Broadcom's dispmanx/EGL driver.

![](http://i.imgur.com/L7GWZiF.jpg)

## Build 

    snapcraft snap 
    
## Install

    sudo snap install oxide-digitalsignage_1_amd64.snap --force-dangerous --devmode 

The `--devmode` parameter is required since EGLFS scans video devices, and currently there's no plug for that. 

## Details 

There's [prebuilt Qt5 binaries](https://github.com/penk/oxide-eglfs-snap/releases) needed that's linked against OpenGLES, that will be extracted via `tar-content` plugin and copied over to `prime/`. We could try to use stage packages like `libqt5gui5-gles` in the future. 

For Raspberry Pi2/3 please refer to `rpi2` branch.
