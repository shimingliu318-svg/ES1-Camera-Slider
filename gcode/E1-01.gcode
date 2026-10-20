; E1-01  SUBJECT_X=500 SUBJECT_D=600  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt +5 deg (set by hand), focal 24 mm, BPM 107, start delay 6 s, beat 1, lead 2
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-460.0 Z-126.19
G4 P7.12
G1 X-540.0 Z-133.81 F537.4
G4 P1
G0 X-500 Z-130
; vertical check: near 7.8 / far 7.8 <= 12.3 deg  OK
