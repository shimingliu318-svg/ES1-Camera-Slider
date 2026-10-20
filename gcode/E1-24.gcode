; E1-24  SUBJECT_X=500 SUBJECT_D=700  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt -13 deg (set by hand), focal 18 mm, BPM 107, start delay 6 s, beat 62, lead 2
; static camera: the slider holds this position; push-in / pull-out is done in the edit (4K only)
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-500.0 Z-130.00
; vertical check: near 6.6 / far 6.6 <= 18.1 deg  OK
