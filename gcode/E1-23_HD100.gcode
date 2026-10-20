; E1-23_HD100  SUBJECT_X=500 SUBJECT_D=500  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt +5 deg (set by hand), focal 24 mm, BPM 107, start delay 6 s, beat 1, lead 0
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-318.0 Z-110.00
G4 P7.68
G1 X-411.8 Z-120.00 F10093.4
G1 X-455.9 Z-124.96 F9497.0
G1 X-500.0 Z-130.00 F9498.8
G1 X-544.1 Z-135.04 F9498.8
G1 X-588.2 Z-140.00 F9497.0
G1 X-682.0 Z-150.00 F10093.4
G4 P1
G0 X-500 Z-130
; vertical check: near 11.8 / far 11.4 <= 12.3 deg  OK
