# rpi-setup

Setting up a freshly flashed Raspberry Pi. Tested on macOS with a Raspberry Pi Zero W.

## SD card setup

* Insert an SD card into your PC and install [Raspbian Lite](https://www.raspberrypi.org/downloads/raspbian/); follow the [installation guide](https://www.raspberrypi.org/documentation/installation/installing-images/README.md)
* The freshly imaged SD card should now have the name `boot`; you may need to remove and re-insert the SD card after flashing
* Modify `boot/wpa_supplicant.conf` with your WiFi network credentials
* Navigate to `scripts/` and run `copy-to-boot.sh`; when prompted, type in the path to your SD card
* Eject the SD card from your PC and insert it into the Pi; then, power on the Pi

## SSH-ing into the Pi

You should now be able to ssh into the Pi if you are on the same WiFi network as the Pi:

```bash
ssh pi@raspberrypi.local
```

The default password is **raspberry**.

## Configuring the Pi

First, make sure the Pi is up to date:

```bash
sudo apt-get update
sudo apt-get -y upgrade
sudo reboot
```

To change the password, set up language and regional settings, etc.:

```bash
sudo raspi-config
```

To change the hostname, open `/etc/hosts` & edit the following line:

```bash
# Replace raspberrypi with your desired hostname
127.0.1.1		raspberrypi
```

Then, reboot.

## References

* [Getting Started with the Raspberry Pi Zero W without a Monitor](https://www.losant.com/blog/getting-started-with-the-raspberry-pi-zero-w-without-a-monitor)