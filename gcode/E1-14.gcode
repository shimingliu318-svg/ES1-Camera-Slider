; E1-14  SUBJECT_X=500 SUBJECT_D=1000  pan Z = atan2(SUBJECT_X - x, SUBJECT_D) in degrees
; tilt +0 deg (set by hand), focal 35 mm, BPM 107, start delay 6 s, beat 39, lead 0
G21
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030); X = -(mm from left), Z = design Z - 130
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-54.8 Z-106.00
G4 P29.55
G1 X-143.8 Z-110.40 F5961.8
G1 X-232.9 Z-115.04 F5962.7
G1 X-321.9 Z-119.90 F5963.4
G1 X-411.0 Z-124.91 F5964.0
G1 X-500.0 Z-130.00 F5964.3
G1 X-589.0 Z-135.09 F5964.3
G1 X-678.1 Z-140.10 F5964.0
G1 X-767.1 Z-144.96 F5963.4
G1 X-856.2 Z-149.60 F5962.7
G1 X-945.2 Z-154.00 F5961.8
G4 P1
G0 X-500 Z-130
; vertical check: near 3.4 / far 3.1 <= 9.6 deg  OK
