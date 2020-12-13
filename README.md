# vgavt1593
 Marco Maccaferri's Propeller VT100 Terminal, in a box
![Assembled VGA terminal](/img/assembled.jpg)

## Overview
This is a remix of Marco Maccaferri's [VGA Serial Terminal](https://github.com/maccasoft/propeller-vt100-terminal) for RC2014. It is specifically adapted to be used with Stephen C Cousins' [SC131](https://smallcomputercentral.wordpress.com/sc131-z180-pocket-computer/) Z180 pocket computer. It fits into the same Hammond 1593N enclosure, making for a neat and tidy setup when combined with an SC131. Of course, it can also be used with any other retrocomputer or device that expects a VT100-like terminal, connected over "TTL-Serial" raw RS232.

![Stacked with SC131](/img/stacked.jpg)
VGA terminal stacked with SC131 computer

## Terminal description
Details about the terminal itself are covered by Marco's project (this remix largely just changes the form factor). For detailed information, see his [project page](https://github.com/maccasoft/propeller-vt100-terminal).

## Serial interfaces
Connection to a computer is provided through an FTDI-style pin header, wired to the same pinout. Specifically, it is wired as a DTE (just like an FTDI dongle), so it can be wired directly to a DCE (like an SC131). A second *passthrough* port is provided to permit a PC connection to the same computer. This passthrough port is wired as a DCE, so FTDI cables can be connected directly. An AND gate mixes the terminal and passthrough connections together, so both can be used simultaneously. Transmitting from both at the same time will send gibberish; in testing this is relatively rare, and XMODEM at least will retransmit if this happens.

## Usage
This terminal lets you use your SC131 (or other retrocomputer) standalone, without dependency on another computer. In addition, a modern computer can be connected to the passthrough port as needed. This is useful for sending files over XMODEM, for example.

### Power
5V power is received through a standard 5.5/2.1mm barrel jack connection, center positive. The device optionally sends power to the connected computer (selectable by a jumper on JP1 - this is expected by SC131). In most cases, JP1 should be left installed. Wall adapters in this voltage and configuration are common, or a USB to 5.5mm cable can be used (examples [here](https://www.ebay.com/sch/i.html?_nkw=usb+to+5.5mm)).

### Why are the plugs on the front?
Because I ran out of room on the enclosure's panels. Between two FTDI headers, 5V in, reset, power switch, VGA, and USB, there wasn't even room left for a power LED. The serial ports are on the same side as the SC131 ones at least, so those can be connected together cleanly with a 6-wire "Dupont" cable.

### Initial setup
The parts specified are not pre-programmed; they will need to be programmed before use. Either a [Prop-Plug](https://www.mouser.com/ProductDetail/32201) can be used on the assembled board, or a [TL866](https://www.ebay.com/sch/i.html?_nkw=tl866ii+plus) or [CH341](https://www.ebay.com/sch/i.html?_nkw=ch341a+programmer) can be used on the bare EEPROM. Instructions (and firmware) for programming can be found at the same [link](https://github.com/maccasoft/propeller-vt100-terminal) as above.

## Part selection
Bill Of Materials and part references are below. Note that the right-angle headers have to be a specific type to align with the panel PCBs - they need to have the plastic "end stopper" on the "business" side of the angle, *not* the side you solder to the PCB. Headers from [Pololu](https://www.pololu.com/product/967), [Sparkfun](https://www.sparkfun.com/products/553), and [Adafruit](https://www.adafruit.com/product/1540) are like this, as is the Mouser listing below. Most eBay etc listings are ***not*** like this, and will not align correctly. The other headers can be snapped from regular breakaway header, for which eBay is substantially cheaper; the Mouser listings are provided for convenience.

The specified parts are just the ones I used, and can be substituted as needed - Mouser links provided for convenience and reference. The case is available in other colours!

| Reference | Value | Qty | Mouser link |
| --------- | ----- | --- | ----------- |
| BZ1 | Piezo buzzer | 1 | [TDK PS1240P02BT](https://www.mouser.com/ProductDetail/810-PS1240P02BT) |
| C1, C2 | 1μF ceramic | 2 | [TDK FG18X5R1H105KRT06](https://www.mouser.com/ProductDetail/FG18X5R1H105KRT06) |
| C3-C7 | 100nF ceramic | 5 | [KEMET C315C104M5U5TA](https://www.mouser.com/ProductDetail/C315C104M5U5TA7303) |
| C8 | 10μF electrolytic | 1 | [Nichicon UMA1E100MDD](https://www.mouser.com/ProductDetail/UMA1E100MDD) |
| J1 | 5.5/2.1mm barrel socket | 1 | [CUI PJ-002A](https://www.mouser.com/ProductDetail/490-PJ-002A) |
| J2 | 1x4 header | 1 | [Amphenol 10129378-904002BLF](https://www.mouser.com/ProductDetail/10129378-904002BLF) |
| J3, J4 | 1x6 right-angle header | 2 | [Amphenol 10129379-906003BLF](https://www.mouser.com/ProductDetail/10129379-906003BLF) |
| J5 | USB A socket | 1 | [Amphenol FCI 87520-1110BLF](https://www.mouser.com/ProductDetail/649-87520-1110BLF) |
| J6 | D-Sub HD-15 Female | 1 | [TE 2311763-1](https://www.mouser.com/ProductDetail/571-2311763-1) |
| JP1 | 1x2 header | 1 | [Amphenol 10129378-902002BLF](https://www.mouser.com/ProductDetail/10129378-902002BLF) |
| | jumper | 1 | [Harwin M7583-46](https://www.mouser.com/ProductDetail/M7583-46)
| R1, R4 | 10kΩ resistor | 2 | [Yageo CFR-25JT-52-10K](https://www.mouser.com/ProductDetail/CFR-25JT-52-10K) |
| R2, R3 | 4k7Ω resistor | 2 | [Yageo CFR-25JT-52-4K7](https://www.mouser.com/ProductDetail/CFR-25JT-52-4K7) |
| R5, R8 | 47kΩ resistor | 2 | [Yageo CFR-25JT-52-47K](https://www.mouser.com/ProductDetail/CFR-25JT-52-47K) |
| R6, R7 | 47Ω resistor | 2 | [Yageo CFR-25JT-52-47R](https://www.mouser.com/ProductDetail/CFR-25JT-52-47R) |
| R9, R12, R15 | 261Ω resistor | 3 | [Yageo MFR-25FRF52-261R](https://www.mouser.com/ProductDetail/603-MFR-25FRF52-261R) |
| R10, R13, R16 | 510Ω resistor | 3 | [Yageo MFR-25FTE52-510R](https://www.mouser.com/ProductDetail/603-MFR-25FTE52-510R) |
| R11, R14, R17-R19 | 120Ω resistor | 5 | [Yageo MFR-25FTF52-120R](https://www.mouser.com/ProductDetail/603-MFR-25FTF52-120R) |
| SW1 | SPDT toggle sw, right-angle | 1 | [Grayhill 34CMSP12B2M7QT](https://www.mouser.com/ProductDetail/706-34CMSP12B2M7QT) |
| SW2 | Right-angle tact sw 8.3mm | 1 | [C&K PTS645VL832LFS](https://www.mouser.com/ProductDetail/611-PTS645VL832) |
| U1 | Parallax Propeller | 1 | [Parallax Propeller P8X32A-D40](https://www.mouser.com/ProductDetail/619-P8X32A-D40) |
| | socket | 1 | [Amphenol DILB40P-223TLF](https://www.mouser.com/ProductDetail/DILB40P-223TLF) |
| U2 | 24LC256 EEPROM | 1 | [Microchip 24LC256](https://www.mouser.com/ProductDetail/579-24LC256-I-P) |
| | socket | 1 | [Amphenol DILB8P-223TLF](https://www.mouser.com/ProductDetail/DILB8P-223TLF) |
| U3 | MCP1700-330 | 1 | [Microchip MCP1700-3302E/TO](https://www.mouser.com/ProductDetail/579-MCP1700-3302E-TO) |
| U4 | 74HC08 | 1 | [TI SN74HC08AN](https://www.mouser.com/ProductDetail/595-SN74HC08AN) |
| X1 | 5MHz HC-49 crystal | 1 | [ECS ECS-50-18-4XEN](https://www.mouser.com/ProductDetail/520-50-18-4XEN) |
| Case | Hammond 1593N | 1 | [Hammond 1593NTBU](https://www.mouser.com/ProductDetail/546-1593NTBU) |
| Screws | Hammond self-tapping | (some of) | [Hammond 1593ATS](https://www.mouser.com/ProductDetail/546-1593ATS100) |