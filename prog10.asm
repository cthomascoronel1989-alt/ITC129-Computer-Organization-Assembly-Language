;THOMAS JOSHUA R. CORONEL
;SEPTEMBER 13, 2025
TITLE prog10.asm
DOSSEG
.MODEL SMALL
.STACK 100H
.DATA
.CODE
    MOV AX, @DATA
    MOV DS, AX

    MOV AX, 0600H           ;Clear the screen
    MOV BH, 07H
    MOV CX, 0000H
    MOV DX, 184FH
    INT 10H

    MOV AH, 02H             ;request for setting cursor
    MOV BH, 00H             ;page number 0
    MOV DH, 0CH             ;ROW = 12 in decimal
    MOV DL, 28H             ;COL = 40 in decimal
    INT 10H                 ;interrupt service

    MOV AH, 02H
    MOV DL, 41H
    INT 21H

    MOV AX, 4C00H
    INT 21H
END
