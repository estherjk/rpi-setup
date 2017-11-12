# rpi-setup

Setting up a freshly flashed Raspberry Pi. Tested on macOS with a Raspberry Pi Zero W.

## Instructions

* Mount an SD card that has been imaged with [Raspbian Stretch Lite](https://www.raspberrypi.org/downloads/raspbian/) onto your PC
* Modify `boot/wpa_supplicant.conf` with your WiFi network credentials
* Run `scripts/copy-to-boot.sh`
* Unmount from PC and insert SD card into the Pi, then power on the Pi

You should now be able to ssh into if you are on the same WiFi network as the Pi:

```bash
ssh pi@raspberrypi.local
```

The default password is **raspberry**.

## References

* [Getting Started with the Raspberry Pi Zero W without a Monitor](https://www.losant.com/blog/getting-started-with-the-raspberry-pi-zero-w-without-a-monitor)