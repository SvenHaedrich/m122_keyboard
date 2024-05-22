# m122_keyboard
Project for an IBM M122 keyboard controller

This is a project that replaces the original part from IBM with a nice modern solution.
It features a nRF52840 microcontroller and allows to use the keyboard
via USB connector, or via Bluetooth.

The firmware is based on the [ZMK](https://github.com/zmkfirmware) project.

![Assembled PCB](docs/pcb_assembled.png)

## Parts

Beside the assembled PCB you require:
- A matching IBM Keyboard
- An external LiPO cell - the unit was designed with a LP103048JU 1.500 m Ah cell in mind
- One 8 pin connector for the flat flex coming from the keyboad 5-520315-8 from [AMP](doc/ENG_CD_520355_L2.pdf) DigiKey P/N 5-520315-8-ND
- One 20 pin connector for the flat flex coming from the keyboad 7-520355-0 from [AMP](doc/ENG_CD_520355_L2.pdf) DigiKey P/N A144436-ND

## Tools

You need a debug adapter (JLink) with 6 pin [Tag-Connect](https://www.tag-connect.com) for the initial flash programming of the board

## Order

When ordering the pcb from [JLC](https://jlcpcb.com) you need to specify
- Via Covering Epoxy Filled & Capped
- Min via hole size 0.2 mm

## Setup

* Use the nrf-Flash-Tool to flash the bootloader to the nrf52840
* Use drag-and-drop of the uf2 build output to flash the keyboard firmware

## Build the firmware

Set the zmk project up in a seperate directory as described in [Toolchain Setup](https://zmk.dev/docs/development/setup).
Go to the zmk base directory, then run

    cd app
    west build --board nrf52840_m122 . -- -DZMK_EXTRA_MODULE=(..)/m122_keyboard/zmk-config

Replace `(..)` with the path of this project.

## Bootloader

The project uses a modified [Adafruit](https://github.com/SvenHaedrich/Adafruit_nRF52_Bootloader.git) bootloader.


## Testing

You might want to test the basic electric functionality of the PCB. To do so, flash the firmware and connect the PCB to a computer´s USB port.
To view detailled event codes start

    sudo evtest

Select your M122 controller as event source. Now, you can short individual rows and columns. Expected results are given for German keyboard layout.

| Row | Column | Keycode        |
|-----|--------|----------------|
|  1  |   16   | KEY_KP0        |
|  1  |    8   | KEY_B          |
|  2  |    8   | KEY_V          |
|  3  |   13   | KEY_RIGHTBRACE |
|  4  |    5   | KEY_Q          |
|  5  |    9   | KEY_6          |
|  6  |   12   | KEY_F5         |
|  7  |    1   | KEY_PPLUS      |
|  8  |   15   | KEY_APOSTROPHE |
|  2  |    2   | KEY_KP1        |
|  2  |    3   | KEY_CAPSLOCK   |
|  1  |    4   | KEY_LEFTSHIFT  |
|  1  |   20   | KEY_ENTER      |
|  1  |   19   | KEY_KPCOMMA    |
|  2  |   18   | KEY_KP2        |
|  2  |   17   | KEY_INSERT     |
|  4  |   15   | KEY_P          |
|  6  |   14   | KEY_9          |
|  4  |   11   | KEY_F7         |
|  3  |   10   | KEY_F20        |
|  7  |    6   | KEY_S          |
|  7  |    7   | KEY_D          |