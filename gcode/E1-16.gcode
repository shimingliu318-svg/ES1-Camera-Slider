; E1-16  SUBJECT_X=500 SUBJECT_D=500  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt +0 deg (set by hand), focal 35 mm, BPM 107, start delay 6 s, beat 13, lead 2
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-440.0 Z-123.16
G4 P13.85
G1 X-500.0 Z-130.00 F1292.3
G1 X-560.0 Z-136.84 F1292.3
G4 P1
G0 X-500 Z-130
; vertical check: near 6.8 / far 6.8 <= 9.6 deg  OK
