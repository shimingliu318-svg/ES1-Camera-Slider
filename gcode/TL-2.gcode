; TL-2  SUBJECT_X=500 SUBJECT_D=600  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt +0 deg (set by hand), focal 24 mm, BPM 107, start delay 6 s, beat 1, lead 0
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-250.0 Z-107.38
G4 P9.93
G1 X-350.0 Z-115.96 F50.2
G1 X-450.0 Z-125.24 F50.2
G1 X-550.0 Z-134.76 F50.2
G1 X-650.0 Z-144.04 F50.2
G1 X-750.0 Z-152.62 F50.2
G4 P1
G0 X-500 Z-130
; vertical check: near 5.7 / far 5.3 <= 13.8 deg  OK
