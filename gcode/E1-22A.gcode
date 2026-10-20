; E1-22A  SUBJECT_X=500 SUBJECT_D=900  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt +0 deg (set by hand), focal 18 mm, BPM 107, start delay 6 s, beat 25, lead 2
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-200.0 Z-111.57
G4 P20.58
G1 X-275.0 Z-115.96 F4019.4
G1 X-350.0 Z-120.54 F4020.0
G1 X-425.0 Z-125.24 F4020.4
G1 X-500.0 Z-130.00 F4020.6
G1 X-575.0 Z-134.76 F4020.6
G1 X-650.0 Z-139.46 F4020.4
G1 X-725.0 Z-144.04 F4020.0
G1 X-800.0 Z-148.43 F4019.4
G4 P1
G0 X-500 Z-130
; vertical check: near 3.8 / far 3.6 <= 18.1 deg  OK
