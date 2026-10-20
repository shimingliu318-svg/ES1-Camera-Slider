; E1-05  SUBJECT_X=500 SUBJECT_D=800  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt +0 deg (set by hand), focal 24 mm, BPM 107, start delay 6 s, beat 41, lead 2
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-208.8 Z-110.00
G4 P29.55
G1 X-305.9 Z-116.36 F2602.1
G1 X-402.9 Z-123.08 F2602.8
G1 X-500.0 Z-130.00 F2603.1
G1 X-597.1 Z-136.92 F2603.1
G1 X-694.1 Z-143.64 F2602.8
G1 X-791.2 Z-150.00 F2602.1
G4 P1
G0 X-500 Z-130
; vertical check: near 4.3 / far 4.0 <= 13.8 deg  OK
