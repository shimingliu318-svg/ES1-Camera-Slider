; CHECK-500-90  calibration check (old plan ES1-08): slide exactly 500 mm, then pan exactly 90 deg
; R153 machine space: LEFT end = 0 after $H, right = negative (right end about -1030)
G21
G90
$H
G10 L2 P1 X0 Z0
G92.1
G54
G0 X-100.0 Z-130.00
G4 P5
; 500 mm against the tape measure: X-100 -> X-600 (moves right)
G1 X-600.0 F1000
G4 P3
; 90 deg against the protractor: Z-130 (lens square) -> Z-40
G1 Z-40.00 F500
G4 P3
G0 X-500 Z-130
