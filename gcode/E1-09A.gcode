; E1-09A  SUBJECT_X=500 SUBJECT_D=500  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt +5 deg (set by hand), focal 18 mm, BPM 107, start delay 6 s, beat 1, lead 2
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-266.8 Z-105.00
G4 P7.12
G1 X-344.5 Z-112.73 F4179.3
G1 X-422.3 Z-121.16 F4183.1
G1 X-500.0 Z-130.00 F4185.5
G1 X-577.7 Z-138.84 F4185.5
G1 X-655.5 Z-147.27 F4183.1
G1 X-733.2 Z-155.00 F4179.3
G4 P1
G0 X-500 Z-130
; vertical check: near 8.4 / far 8.1 <= 18.1 deg  OK
