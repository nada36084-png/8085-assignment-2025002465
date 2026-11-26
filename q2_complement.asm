; Name: Nada Yasser Ramadan
; Student ID: 2025002465
; Section: 3
; Question: Q2 1's and 2's Complement

LDA 2500H       ; Load 8-bit input from 2500H into Accumulator
CMA             ; Invert all bits in A to get 1's complement
STA 2501H       ; Store 1's complement at 2501H
ADI 01H         ; Add 1 to get 2's complement
STA 2502H       ; Store 2's complement at 2502H
HLT             ; Stop program execution