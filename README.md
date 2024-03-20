[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://supportukrainenow.org/)

# Yaesu FH2 keyboard-based voice memory keyer

Your Yaesu radio has memory banks for voice/CW messages but unfortunately, you have to control them manually by radio or external keyboard.
It is a bit annoying in contests with CQ. This small device handles this instead of you and takes care of sending desired voice/CW memory in the desired interval without your assistance.

## DISCLAIMER
- The author of this device is not responsible for any injury, damage, or improper use of your radio equipment
- If you are not sure what you are doing please consider taking a guidance from more experienced fellow
- [![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)

## How it works
- this is a semi-automatic voice keyer for Yaesu MEM1-MEM5 voice memory banks based on external FH2 keyboard input
- run your contest CQ in desired intervals without manually annoying triggering of voice memories
- just press one of the desired MEMs buttons and your radio will send voice messages in chosen 3s or 5s intervals concerning PTT from your radio

## Hardware

- Arduino Nano (v.2, v.3, original, Chinese...)
- USB mini cable for programming Arduino Nano
- PTT cable for your radio - this is required otherwise this device has no clue that the radio is in PTT mode !!!
- See schematic diagram (https://github.com/tomasgeci/yaesu-fh2-voice-mem-keyer/blob/master/KiCad_schema/yaesu-voice-keyer.png)
- You don't need an FH2 keyboard but this one is well-documented (https://github.com/rfrht/RFH-2)

## Software

- Arduino IDE 1.8+
- Arduino sketch (https://github.com/tomasgeci/yaesu-fh2-voice-mem-keyer/blob/master/FH2-yaesu-mem-control/FH2-yaesu-mem-control.ino)
- select your board "Arduino NANO", choose port, load sketch, and "UPLOAD"

## how to use

- see the Radio setup and record Voice Memories as you need
- set BK-IN mode in your radio to ensure your memories are transmitted with radio MEM buttons
- switch TUN/LIN input mode to accept FH2 keyboard as input
- WARNING: if your external ATU requires TUN/LIN input it will not work simultaneously with this device
- now you can press any of MEM1 - MEM5 button on this keyer to simulate MEM1-MEM5 buttons on your rig
- appropriate memory will be repeated in 3s or 5s interval (based on delay jumper: off(default) - 3s, on - 5s) with sync of radio PTT signal
- no matter how long is your voice message, the device will wait until after your radio finishes the current MEM transmit
- after pressing the STOP button keyer finishes the current MEM and no next message will be played
- if you wish to use manual MEM mode (same as FH2 keyboard) feel free to use FH2_Mode jumper: on - FH2 mode, off(default) - keyer mode

## Radio setup

- FT991A English manual FT-991A_OM_ENG_EH067M205_2006J-FS-1.pdf, pages [70, 71, 144]
- see sections:
    - VOICE MEMORY (SSB/AM) - page 70, 71
    - TUNER SELECT - page 144, set OFF or INTERNAL 
    
## Compatible rigs

- Yaesu FT991A (tested)
- maybe any Yaesu FH2 keyboard-compatible radio with voice memory

## Credits

- thanks to Rodrigo Freire (https://github.com/rfrht) for his RFH-2 keyboard project (https://github.com/rfrht/RFH-2)

## License:

- GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007

## VY 73 de OM5AST
