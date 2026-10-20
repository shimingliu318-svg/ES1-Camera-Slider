; E1-04  SUBJECT_X=450 SUBJECT_D=606  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt +0 deg (set by hand), focal 24 mm, BPM 107, start delay 6 s, beat 13, lead 2
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-100.0 Z-100.00
G4 P13.85
G1 X-600.0 Z-100.00 F4458.3
G4 P1
G0 X-500 Z-130
; vertical check: near 5.5 / far 4.9 <= 13.8 deg  OK
