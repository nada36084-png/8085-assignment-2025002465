; Name: Nada Yasser Ramadan
; Student ID: 2025002465
; Section: 3
; Question: Q3 Count Even and Odd Numbers

LDA 2500H       ; Load array length N from 2500H
MOV C, A        ; Use C as loop counter
MVI D, 00H      ; D = Even counter (starts at 00H)
MVI E, 00H      ; E = Odd counter (starts at 00H)
LXI H, 2501H    ; HL points to the first array element at 2501H

CHECK_LOOP:
MOV A, M        ; Load current element into Accumulator
ANI 01H         ; Mask all bits except LSB (bit 0)
JZ EVEN_FOUND   ; If LSB is 0 (Zero flag set), element is even

INR E           ; Increment odd count
JMP ADVANCE     ; Proceed to next element

EVEN_FOUND:
INR D           ; Increment even count

ADVANCE:
INX H           ; Move pointer to next memory address
DCR C           ; Decrement remaining element count
JNZ CHECK_LOOP  ; Continue loop until C reaches 0

MOV A, D        ; Load even count
STA 2600H       ; Store even count at 2600H
MOV A, E        ; Load odd count
STA 2601H       ; Store odd count at 2601H
HLT             ; Stop program execution