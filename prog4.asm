;THOMAS JOSHUA R. CORONEL
;SEPTEMBER 13, 2025
TITLE prog4.asm
DOSSEG
.MODEL SMALL
.STACK 0100H
.DATA
    str1 db "Uppercase Letters: $"
    str2 db "Lowercase Letters: $"
    str3 db "Numbers: $"
    str4 db "Special Characters: $"
.CODE
    MOV AX, @DATA 
    MOV DS, AX 

    MOV AH, 09H 
    MOV DX, OFFSET str1 
    INT 21H

    MOV AH, 02H
    MOV CX, 1AH
    MOV DL, 41H 
    A: INT 21H 
    INC DL
    LOOP A

    MOV BL, DL
    MOV DL, 0AH 
    INT 21H 

    MOV DL, 0DH 
    INT 21H 

    MOV AH, 09H
    MOV DX, OFFSET str2 
    INT 21H 

    MOV AH, 02H 
    MOV CX, 1AH 
    MOV DL, 61H 
    B: INT 21H 
    INC DL 
    LOOP B

    MOV BL, DL 
    MOV DL, 0AH 
    INT 21H 

    MOV DL, 0DH 
    INT 21H 

    MOV AH, 09H
    MOV DX, OFFSET str3 
    INT 21H 

    MOV AH, 02H 
    MOV CX, 0AH 
    MOV DL, 30H
    C: INT 21H
    INC DL 
    LOOP C

    MOV BL, DL 
    MOV DL, 0AH 
    INT 21H

    MOV DL, 0DH 
    INT 21H

    MOV AH, 09H
    MOV DX, OFFSET str4
    INT 21H 

    MOV AH, 02H 
    MOV CX, 0FH 
    MOV DL, 21H 
    D: INT 21H 
    INC DL
    LOOP D

    MOV AH, 02H 
    MOV CX, 07H 
    MOV DL, 3AH
    E: INT 21H 
    INC DL 
    LOOP E

    MOV AH, 02H 
    MOV CX, 06H 
    MOV DL, 5BH
    F: INT 21H 
    INC DL
    LOOP F

    MOV AH, 02H 
    MOV CX, 04H
    MOV DL, 7BH
    G: INT 21H 
    INC DL
    LOOP G

    MOV AX, 4C00H
    INT 21H
END