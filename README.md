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