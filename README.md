# DIY Camera Slider: Arduino + ESP8266 Motorized Camera Slider (2 axes, GRBL)

A motorized camera slider with a 1050 mm slide (X) and a pan turntable, built from aluminum extrusion, bearings, screws, 2 stepper motors, 3D printed parts and off-the-shelf modules. Soldering is optional.

Video: https://youtu.be/MyfvZeevY5c

**Cost:** I built it from parts I already had. If you buy everything new, it's **roughly $100 (estimate)**. You may already have some of the parts.

> **Note on the footage:** two-axis linked moves (slide + pan at the same time) show slight jitter. The demo footage is unstabilised raw footage.

## Features
- 2 axes: slide (X, 1050 mm of travel) and pan turntable (GRBL Z axis, in degrees).
- Arduino Uno + CNC Shield V3 running unmodified GRBL 1.1.
- Wi-Fi via an ESP8266 (NodeMCU) running esp-link: control it from your PC with Universal Gcode Sender (UGS) over TCP port 23, no USB cable.
- The belt stays still: the motors, boards and wiring all ride on the carriage. **No drag chain needed: only one power cable moves.**
- One limit switch per axis for homing.

## Why it runs smoothly
- **Rigid rail:** the X rail is three aluminum extrusions in a triangle, with middle supports. For the 1300 mm rail, the calculated deflection with this structure is about 0.2 mm.
- **Soft wheels:** the carriage runs on 8 wheels (24 mm diameter), each fitted with 4 O-rings, 32 O-rings in total. Nothing hard touches the extrusion, so vibration is damped and it runs quieter.

### Changing the length
You can make the rail shorter or longer. If you lengthen it, recalculate the deflection for this triangle structure, then update GRBL `$130` (max X travel) and the belt length (the X belt is 1.4 m for the 1300 mm rail).

## Pan turntable: options
- Drive pulley **16T or 20T** GT2. The **80T big pulley is a printed part.**
  - 16T → 1:5 → `$102 = 44.444` steps/deg (1/16 microstep)
  - 20T → 1:4 → `$102 = 35.556` steps/deg
- 2 × 6800 bearings in the turntable.
- Motors: 1 × NEMA 17 (42 mm) for the slide and 1 × NEMA 14 (35 mm) for the pan. **No NEMA 14? A NEMA 17 works on the pan too.** The STL pack includes two pan motor mounts (NEMA 14 and NEMA 17). Print the one that matches your motor.

## Driver current tip
Set the pan (NEMA 14) A4988 Vref to **0.3–0.4 V**. With too much current, my pan axis vibrated and moved unevenly at mid speeds; at 0.3–0.4 V it runs smoothly at every speed.

## Wiring (summary)
- ESP8266 TX → Uno RX (D0). Uno TX (D1) → 1K → ESP RX, with 2K from ESP RX to GND (5 V → 3.3 V).
- Both come from the CNC Shield V3 yellow UART header (RX/TX/5V/3.3V). ESP 3.3V comes from the header. ESP GND goes to any black GND pin on the shield.
- Two ways to build the divider: a small soldered perfboard adapter, or plain Dupont jumper wires with no soldering.
- 12 V DC goes into the shield's power terminal. A4988 drivers, all three MS jumpers fitted (1/16).
- Wiring diagram: [docs/wiring-diagram.png](docs/wiring-diagram.png)

## GRBL settings
See [`grbl/settings.txt`](grbl/settings.txt). Key values:
- `$100 = 80` steps/mm (20T GT2, 1/16)
- `$102 = 44.444` steps/deg (16T:80T)
- `$5 = 0`: limit switches wired normally open.
- `$21 = 1`, `$22 = 1`, `$23 = 1`: X homes at the LEFT end. After homing, X = 0 at the left end and moving right gives negative X (right end about -1030 on the original build). The included G-code files stay between X 0 and X -1030.
- `$130 = 1050` (original build). If your rail is a different length, measure your own travel and adjust `$130` and the G-code.

## G-code examples
See [`gcode/`](gcode/). Each file homes (`$H`), then runs one move. Test with a dry run in UGS first, and adjust X values to your rail length.

## Parts list
See [`docs/bom.md`](docs/bom.md) (names and quantities; no links, they are all common parts).

## Printed parts (`stl/`)

| File | Part | Qty |
|---|---|---|
| `滑车.STL` | Carriage plate | 2 |
| `滑轮.STL` | Carriage wheel (fit with O-rings) | 8 |
| `X轴电机座.STL` | X motor mount (NEMA 17) | 2 (print one mirrored) |
| `皮带张紧座.STL` | X belt tensioner block | 2 (one per end; print one mirrored) |
| `端盖.STL` | X belt end cap | 2 (one per end) |
| `转台底座.STL` | Turntable base | 1 |
| `转台转轴上.STL` | Pan head quick-release adapter (top of the turntable shaft) | 1 |
| `转台转轴下.STL` | Pan drive pulley 80T (bottom of the turntable shaft) | 1 |
| `转台电机座.STL` | Pan motor mount (NEMA 14). Choose this or the NEMA 17 mount | 1 |
| `转台电机座（42步进）.STL` | Pan motor mount (NEMA 17 / 42 mm). Choose this or the NEMA 14 mount | 1 |
| `主板座.STL` | Board mount | 1 |
| `限位座.STL` | Limit switch mount | 1 |
| `连接件.STL` | Bottom rail bracket (joins the triangle rails) | 4 |

## Print settings
- Material: **PETG**
- Layer height: **0.2 mm**
- Walls: **4**
- Infill: **40%**
- Supports: minimal (only where needed)

## License
- The STL files, README, wiring diagram and G-code examples are licensed under **CC BY-NC-SA 4.0** (non-commercial). See [`LICENSE`](LICENSE).
- **NOTICE:** GRBL firmware is used **unmodified** and remains © its authors under **GPLv3** (https://github.com/gnea/grbl). It is not included in this repository.
- esp-link is used unmodified under its own license.

