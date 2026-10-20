; E1-19  SUBJECT_X=500 SUBJECT_D=300  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt +0 deg (set by hand), focal 50 mm, BPM 107, start delay 6 s, beat 22, lead 2
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-480.0 Z-126.19
G4 P18.90
G1 X-500.0 Z-130.00 F363.1
G1 X-520.0 Z-133.81 F363.1
G4 P1
G0 X-500 Z-130
; vertical check: near 3.8 / far 3.8 <= 6.0 deg  OK
