; E1-10  SUBJECT_X=650 SUBJECT_D=650  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt +0 deg (set by hand), focal 24 mm, BPM 107, start delay 6 s, beat 1, lead 2
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-250.0 Z-98.39
G4 P7.12
G1 X-300.0 Z-101.70 F893.6
G1 X-350.0 Z-105.22 F893.9
G1 X-400.0 Z-108.96 F894.2
G1 X-450.0 Z-112.90 F894.4
G4 P1
G0 X-500 Z-130
; vertical check: near 5.0 / far 4.5 <= 13.8 deg  OK
