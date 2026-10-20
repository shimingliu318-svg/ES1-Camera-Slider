; E1-06  SUBJECT_X=500 SUBJECT_D=800  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt +0 deg (set by hand), focal 35 mm, BPM 107, start delay 6 s, beat 49, lead 2
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-200.0 Z-109.44
G4 P34.04
G1 X-300.0 Z-115.96 F2680.7
G1 X-400.0 Z-122.87 F2681.4
G1 X-500.0 Z-130.00 F2681.8
G1 X-600.0 Z-137.13 F2681.8
G1 X-700.0 Z-144.04 F2681.4
G1 X-800.0 Z-150.56 F2680.7
G4 P1
G0 X-500 Z-130
; vertical check: near 2.9 / far 2.7 <= 9.6 deg  OK
