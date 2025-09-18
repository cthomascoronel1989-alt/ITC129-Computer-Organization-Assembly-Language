;THOMAS JOSHUA R. CORONEL
;SEPTEMBER 13, 2025
TITLE prog13.asm
DOSSEG
.MODEL SMALL
.STACK 0100H
.DATA
.CODE
        MOV AX, @DATA
        MOV DS, AX

        MOV AX, 0600H
        MOV BH, 07H             ;CLEAR SCREEN
        MOV CX, 0000H
        MOV DX, 184FH
        INT 10H

        MOV AH, 02H             ;SET CURSOR
        MOV BH, 00H
        MOV DH, 0CH             ;ROW 12
        MOV DL, 28H             ;COL 40
        INT 10H

        MOV AH, 09H             ;REQUEST CHARACTER DISPLAY

        MOV AL, 00H             ;DO NOT ADVANCE CUSROR
        MOV BH, 00H             ;PAGE 0
        MOV BL, 9EH             ;2(GREEN BG) 3(CYAN TC)
        MOV CX, 000AH           ;NUMBER OF CHARACTERS
        MOV AL, 41H
        INT 10H

        MOV AX, 4C00H
        INT 21H
END