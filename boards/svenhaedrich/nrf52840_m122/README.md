# nrf52840_m122

Driver board for the IBM M122 mechanical keyboard, based on the nrf52840.
The board schematics and PCB is available at: <https://github.com/SvenHaedrich/m122_keyboard>

## Building nrf52840_m122 Firmware

Build the standard version locally using, assuming your board files are found in the (..) directory:

```bash
west build --board nrf52840_m122//zmk \ . -- -DBOARD_ROOT=(..)/m122_keyboard -DCONFIG_ZMK_STUDIO=y
```

To enable ZMK-Studio support use the following command to build:

```bash
west build --board nrf52840_m122//zmk -S studio-rpc-usb-uart  . -- -DBOARD_ROOT=(..)/m122_keyboard -DCONFIG_ZMK_STUDIO=y
```
