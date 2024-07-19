# Corne-ish Zen

## Keymap

See [`config/corne-ish_zen.keymap`](config/corne-ish_zen.keymap)

<img src="./asavoy-corne-mx.png" width="50%">

### Notes

- TODO - explain why the keymaps is this way

## Updating the keyboard

- `./build.sh` builds the keymap, using Docker.
- `./flash.sh` will flash the compiled keymap to the keyboard

## Other notes

- Only need the left keymap to be flashed (to the left hand side)

## Troubleshooting Bluetooth connection

> If you are having issue with a lost Bluetooth connection or keyboard halves no longer communicating, and you have tried deleting host connections and re-establishing connections without avail, please try following the steps below to fix this.
>
> - Delete all the Corne-ish Zen connections on your host devices (PC, phone, tablet etc.)
> - Flash the [settings reset firmware](https://cdn.shopify.com/s/files/1/0523/0847/6068/files/Corne-ish_Zen_settings_reset_firmware.zip?v=1684845614) to both halves of the keyboard. Use the same ".uf2" file on both halves. Ignore the .hex file.
> - Flash your custom (or stock) firmware to the left half. After it has been flashed and restarted, disconnect the USB cable and turn off this half.
> - Flash your custom (or stock) firmware to the right half. After it has been flashed and restarted, disconnect the USB cable.
> - Turn on the left half again and ensure that the "X" symbol on the right half display turns to a checkmark instead.
> - Re-establish connections to your host devices.

From [Corne-ish Zen Support](https://lowprokb.ca/pages/corne-ish-zen-support)

## Resources

- [The Corne-ish Zen source repo](https://github.com/LOWPROKB/zmk-config-Corne-ish-Zen)

## Credits

- [rstacruz/my-zmk-config](https://github.com/rstacruz/my-zmk-config)

---

# Original docs

## Resources

- The [official ZMK Firmware GitHub](https://github.com/zmkfirmware/zmk) repository. View the keymaps for other boards and shields as a starting point for your keymap.
- The [official ZMK Documentation](https://zmk.dev/docs) web site. Find the answers to many of your questions about ZMK Firmware.
- The [official ZMK Discord Server](https://discord.gg/8cfMkQksSB). Instant conversations with other ZMK developers and users. Great technical resource!

## Instructions

1. Log into, or sign up for, your personal GitHub account.
2. Fork this repository to your local computer, and then push it to your GitHub personal account. ([instructions](https://docs.github.com/en/get-started/quickstart/fork-a-repo))
3. Edit the keymap file(s) to suit your needs
4. Commit and push your changes to your personal repo. Upon pushing it, GitHub Actions will start building a new version of your firmware with the updated keymap.

## Firmware Files

To locate your firmware files...

1. log into GitHub and navigate to your personal config repository you just uploaded your keymap changes to.
2. Click "Actions" in the main navigation, and in the left navigation click the "Build" link.
3. Select the desired workflow run in the centre area of the page (based on date and time of the build you wish to use). You can also start a new build from this page by clicking the "Run workflow" button.
4. After clicking the desired workflow run, you should be presented with a section at the bottom of the page called "Artifacts". This section contains the results of your build, in a file called "firmware.zip"
5. Download the firmware zip archive and extract the two .uf2 files. They are named according to which side they need to be flashed to.
6. Flash the firmware to your keyboard by double-clicking the reset button to put the it in bootloader mode. A window should pop up showing the contents of the storage on the keyboard. Drag and drop the correct .uf2 file into the window. When the upload is complete the window will close and the keyboard will exit bootloader mode.

Your keyboard is now ready to use.
