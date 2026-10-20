; E1-03  SUBJECT_X=500 SUBJECT_D=690  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt +5 deg (set by hand), focal 24 mm, BPM 107, start delay 6 s, beat 1, lead 2
; static camera: the slider holds this position; push-in / pull-out is done in the edit (4K only)
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-500.0 Z-130.00
; vertical check: near 7.5 / far 7.5 <= 13.8 deg  OK
