; Name: Nada Yasser Ramadan
; Student ID: 2025002465
; Section: 3
; Question: Q1 8-Bit Addition with Carry

LDA 2500H       ; Load first 8-bit number from 2500H into Accumulator
MOV B, A        ; Save first number in register B
LDA 2501H       ; Load second 8-bit number from 2501H into Accumulator
ADD B           ; Add B to A (A = A + B) and update Carry flag
STA 2502H       ; Store 8-bit sum at 2502H
MVI A, 00H      ; Initialize carry result to 00H
JNC STORE_CARRY ; Jump if no carry occurred
INR A           ; Set A = 01H if carry occurred

STORE_CARRY:
STA 2503H       ; Store carry status (00H or 01H) at 2503H
HLT             ; Stop program execution