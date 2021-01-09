# Yaesu FH2 keyboard-based voice memory keyer

Your Yaesu radio has memory banks for voice/CW messages but unfortunately you have to controll them manually by radio or external keyboard.
It is a bit annoing in contests with CQ. This small device handles this instead of you and take care of sending desired voice/CW memory in desired interval without your assistance.

## DISCLAIMER
- Author of this device is not responsible for any injury, damage or improper use of your radio equipment
- If you are not sure what you are doing please consider to take a guidance of more experienced fellow

## How it works
- this is semi-automatic voice keyer for Yaesu MEM1-MEM5 voice memory banks based on external FH2 keyboard input
- run your contest CQ in desired intervals without manual annoing trigerring of voice memories
- just press one of desired MEMs button and your radio will send voice messages in choosen 3s or 5s interval with respect of PTT from your radio

## Hardware

- Arduino Nano (v.2, v.3, original, chinese...)
- USB mini cable for programming Arduino Nano
- PTT cable for your radio - this is really required otherwise this device has no clue that radio is in PTT mode !!!
- See schematic diagram (https://github.com/tomasgeci/yaesu-fh2-voice-mem-keyer/blob/master/KiCad_schema/yaesu-voice-keyer.png)
- You don't need FH2 keyboardbut but this one is really good documented (https://github.com/rfrht/RFH-2)

## Software

- Arduino IDE 1.8+
- Arduino sketch (https://github.com/tomasgeci/yaesu-fh2-voice-mem-keyer/blob/master/FH2-yaesu-mem-control/FH2-yaesu-mem-control.ino)
- select your board "Ardunino NANO", choose port, load sketch and "UPLOAD"

## how to use

- see Radio setup and record Voice Memories as you need
- set BK-IN mode in your radio to ensure your memories are transmitted with radio MEM buttons
- switch TUN/LIN input mode to accept FH2 keyboard as input
- WARNING: if your external ATU requires TUN/LIN input it will not work simultaneosly with this device
- now you can press any of MEM1 - MEM5 button on this keyer to simulate MEM1-MEM5 buttons on your rig
- appropriate memory will be repeated in 3s or 5s interval (based on delay jumper: off(default) - 3s, on - 5s) with sync of radio PTT signal
- does not matter how long is your voice message, device will waits after your radio finish current MEM transmit
- after presing STOP button keyer finish current MEM and no next message will be played
- if you wish to use manual MEM mode (same as FH2 keyboard) feel free to use FH2_Mode jumper: on - FH2 mode, off(default) - keyer mode

## Radio setup

- FT991A english manual FT-991A_OM_ENG_EH067M205_2006J-FS-1.pdf, pages [70, 71, 144]
- see sections:
    - VOICE MEMORY (SSB/AM) - page 70, 71
    - TUNER SELECT - page 144, set OFF or INTERNAL 
    
## Compatible rigs

- Yaesu FT991A (tested)
- maybe any Yaesu FH2 keyboard compatible radio with voice memory

## Credits

- thanks to Rodrigo Freire (https://github.com/rfrht) for his RFH-2 keyboard project (https://github.com/rfrht/RFH-2)

## License:

- GNU GENERAL PUBLIC LICENSE Version 3, 29 June 2007

## VY 73 de OM5AST
