# rpi-setup

Setting up a freshly flashed Raspberry Pi. Tested on macOS with a Raspberry Pi Zero W.

## SD card setup

* Mount an SD card that has been imaged with [Raspbian Stretch Lite](https://www.raspberrypi.org/downloads/raspbian/) onto your PC
* Modify `boot/wpa_supplicant.conf` with your WiFi network credentials
* Run `scripts/copy-to-boot.sh`
* Unmount from PC and insert SD card into the Pi, then power on the Pi

## SSH-ing into the Pi

You should now be able to ssh into if you are on the same WiFi network as the Pi:

```bash
ssh pi@raspberrypi.local
```

The default password is **raspberry**.

## Configuring the Pi

Update the libraries:

```bash
sudo apt-get update && sudo apt-get upgrade
```

Change password, set up language and regional settings, etc.:

```bash
sudo raspi-config
```

## References

* [Getting Started with the Raspberry Pi Zero W without a Monitor](https://www.losant.com/blog/getting-started-with-the-raspberry-pi-zero-w-without-a-monitor)