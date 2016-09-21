# Oxide EGLFS snap

This is a snap package consists Qt5 and Oxide, with default QPA `EGLFS`, so the setup works without display server. 
The `x86_64` version is using EGLFS KMS/DRM (`eglfs_kms`) backend, and the RPi2/3 version is using `eglfs_brcm`. 

![](http://i.imgur.com/L7GWZiF.jpg)

## Build 

    snapcraft snap 
    
## Install

    sudo snap install oxide-digitalsignage_1_amd64.snap --force-dangerous --devmode 

`devmode` is required since EGLFS scans video devices, and currently there's no plugs for that. 

## Details 

There's prebuilt Qt5 linked against OpenGLES, that will be extracted via `tar-content` plugin and copied over to `prime/`. 
We could try to use stage packages like `libqt5gui5-gles:amd64` in the future. 

Raspberry Pi2/3 please refer to `rpi2` branch. 
