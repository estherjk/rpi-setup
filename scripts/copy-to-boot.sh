#!/bin/bash

# Prompt user for input
read -p "Enter SD card path (e.g. /Volumes/boot): " sd_card_path

echo "Copying files to SD card..."
rsync -rv ../boot/ $sd_card_path