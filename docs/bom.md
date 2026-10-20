# Parts list (BOM)

Names and quantities only. No links: these are all common parts.

Cost: I built mine from parts I already had. If you buy everything new, it's roughly $100 (estimate).

The same list is also in the YouTube video description: https://youtu.be/MyfvZeevY5c

## Mechanical

- 2020 aluminum extrusion, 1300 mm ×3: X rail, assembled as a triangle with middle supports (carriage is 200 mm wide; travel on the original build is 1050 mm)
- Bottom rail brackets ×4 (printed, `连接件.STL`)
- Carriage wheel, 24 mm diameter ×8
- O-ring, 22 mm outer diameter × 1 mm cord ×32 (4 per wheel)
- GT2 timing belt (open), 6 mm wide, 1.4 m for the 1300 mm rail ×1: adjust to your rail length
- GT2 closed-loop belt, 6 mm wide, 208 mm loop ×1: pan axis
- GT2 20T drive pulley ×1: slide (X)
- GT2 16T or 20T drive pulley ×1: pan; 16T → `$102=44.444`, 20T → `$102=35.556`
- GT2 idler pulley ×2: on the carriage (omega drive). A flanged bearing also works as an idler

## Hardware (screws, nuts, bearings)

- M5×8 screw ×40
- M5×16 screw ×10
- M5×40 screw ×8
- M5 T-nut ×50
- M5 lock nut ×10
- M3×6 screw ×18
- M3×12 screw ×30
- M3×25 screw ×2
- M3×30 screw ×3
- M3 T-nut ×30
- M3 nut ×10
- 625ZZ bearing ×16
- 6800 bearing (10 × 19 × 5 mm) ×2: turntable
- 2020 corner bracket ×20

## Motors

- Stepper motor NEMA 17 (42 mm) ×1: slide (X)
- Stepper motor NEMA 14 (35 mm) ×1: pan. No NEMA 14? A NEMA 17 works too (print the NEMA 17 pan motor mount)

## 3D printed (PETG, see `stl/`)

Carriage, wheels, X motor mount, belt tensioners, end caps, turntable (base + shafts), pan motor mount (NEMA 14 or NEMA 17 version), board mount, limit switch mount, connectors.

## Electronics

- Arduino Uno ×1
- CNC Shield V3 ×1
- A4988 stepper driver ×2 (1/16, all three MS jumpers fitted)
- NodeMCU (ESP8266), flashed with esp-link ×1: Wi-Fi control from your PC
- 1K resistor ×1 + 2K resistor ×1: voltage divider on Uno TX → ESP RX
- (optional) small perfboard + 4-pin header ×1: soldered divider adapter
- Mechanical limit switch, normally open ×2 (X, pan)
- 12 V DC power supply ×1
- Dupont jumper wires ×1 set (also the no-solder divider option)
