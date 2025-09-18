;THOMAS JOSHUA R. CORONEL
;SEPTEMBER 13, 2025
TITLE prog16.asm
DOSSEG
.MODEL SMALL
.STACK 0100h
.DATA
    str1 db "ASCII TABLE $"
    str2 db "CHAR:HEX:CHAR:HEX:CHAR:HEX:CHAR:HEX:CHAR:HEX:CHAR:HEX:CHAR:HEX:CHAR:HEX $"
    str3 db "L E G E N D $"
    str4 db "Special Characters: $"
    str5 db "Numbers: $"
    str6 db "Letters: $"
.CODE
    MOV AX,@DATA
    MOV DS,AX
    MOV ES,AX
    MOV AX,0600h
    MOV BH,07h
    MOV CX,0000h
    MOV DX,184Fh
    INT 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,06h ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,02Fh ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
A:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    inc DH ;row=12
    mov DL,06h ;col=40
    INT 10h
    loop A
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,07h ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,07h ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
A2:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,07h ;col=40
    INT 10h
    loop A2
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,0fh ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,02Fh ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
B:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,0fh ;col=40
    INT 10h
    LOOP B
    ;numbers
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,07h ;row=12
    MOV DL,0fh ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,04Fh ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000ah ;number of characters to be displayed
B3:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,0fh ;col=40
    INT 10h
    LOOP B3
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,10h ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,07h ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
B2:
    MOV AH,09h ;request character display with attributes
    INT 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,10h ;col=40
    INT 10h
    LOOP B2
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,18h ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,02Fh ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
C:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,18h ;col=40
    INT 10h
    LOOP C
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,0bh ;row=12
    MOV DL,18h ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,01Fh ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,0007h ;number of characters to be displayed
C2:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,18h ;col=40
    INT 10h
    loop C2
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,19h ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,07h ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
C3:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,19h ;col=40
    INT 10h
    LOOP C3
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,21h ;col=40
    INT 10
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,01Fh ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
D:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    inc DH ;row=12
    mov DL,21h ;col=40
    INT 10h
    loop D
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,22h ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,07h ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
D2:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,22h ;col=40
    INT 10h
    LOOP D2
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,2ah ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,01Fh ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
D3:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,2ah ;col=40
    INT 10h
    LOOP D3
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,2ah ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,02Fh ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000ch ;number of characters to be displayed
D4:
    MOV AH,09h ;request character display with attributes
    INT 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,2ah ;col=40
    INT 10h
    LOOP D4
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,2ah ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,01Fh ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,0006h ;number of characters to be displayed
D5:
    MOV AH,09h ;request character display with attributes
    INT 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,2ah ;col=40
    INT 10h
    loop D5
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,2bh ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,07h ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
D6:
    MOV AH,09h ;request character display with attributes
    INT 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,2bh ;col=40
    INT 10h
    LOOP D6
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,33h ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,01Fh ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
E1:
    MOV AH,09h ;request character display with attributes
    INT 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,33h ;col=40
    INT 10h
    loop E1
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,34h ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,07h ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
FF:
    MOV AH,09h ;request character display with attributes
    INT 10
    MOV AH,02h ;set cursor
    MOV BH,00h
    INC DH ;row=12
    MOV DL,34h ;col=40
    INT 10h
    LOOP FF
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,3ch ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,02Fh ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
hhh:
    MOV AH,09h ;request character display with attributes
    int 10
    MOV AH,02h ;set cursor
    MOV BH,00h
    inc DH ;row=12
    mov DL,3ch ;col=40
    INT 10h
    loop hhh
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,3ch ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL, 01Fh ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000ch ;number of characters to be displayed
hh:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    inc DH ;row=12
    mov DL,3ch ;col=40
    INT 10h
    loop hh
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,3dh ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,07h ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,000dh ;number of characters to be displayed
hh2:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    inc DH ;row=12
    mov DL,3dh ;col=40
    INT 10h
    loop hh2
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,45h ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,02Fh ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,0003h ;number of characters to be displayed
ii:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    inc DH ;row=12
    mov DL,45h ;col=40
    INT 10h
    loop ii
    MOV AH,02h ;set cursor
    MOV BH,00h
    MOV DH,05h ;row=12
    MOV DL,46h ;col=40
    INT 10h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,07h ;(GREEN BG)(YELLOW BLINKING TC)
    MOV CX,0003h ;number of characters to be displayed
ii2:
    MOV AH,09h ;request character display with attributes
    int 10h
    MOV AH,02h ;set cursor
    MOV BH,00h
    inc DH ;row=12
    mov DL,46h ;col=40
    INT 10h
    loop ii2
    MOV AH,13h ;request for string display w/ attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,08Bh ;BLACK bg L RED tc blinking
    MOV BP,OFFSET str1 ;address of str variable
    MOV CX,0000Bh ;number of characters of str
    MOV DH,01h
    MOV DL,25h
    INT 10h ;interrupt service
    MOV AH,02h
    MOV BH,00h
    MOV DH,03h
    MOV DL,03h
    INT 10h
    ;border left up
    MOV AH,02h
    MOV DL,218
    INT 21h
    ;border between right/left up
    MOV AH,02h
    MOV CX,47h
E:MOV DL,196
    INT 21h
    LOOP E
    ;border left down
    MOV AH,02h
    MOV DL,191
    INT 21h
    ;border left between up/down
    MOV AX,02h
    MOV CX,0Eh
    MOV BL,04h
F:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,03h
    INT 10h
    MOV DL,179
    INT 21h
    INC BL
    LOOP F
    ;request
    MOV AH,02h
    MOV BH,00h
    MOV DH,12h
    MOV DL,03h
    INT 10h
    ;border right up
    MOV AH,02h
    MOV DL,192
    INT 21h
    ;border between right/left down
    MOV AH,02h
    MOV CX,47h
G:MOV DL,196
    INT 21h
    LOOP G
    ;border right down
    MOV AH,02h
    MOV DL,217
    INT 21h
    ;border right between up/down
    MOV AX,02h
    MOV CX,0Eh
    MOV BL,04h
H:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,4Bh
    INT 10h
    MOV DL,179
    INT 21h
    INC BL
    LOOP H
    MOV AH,13h ;request for string display w/ attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,00Bh ;BLACK bg L RED tc
    MOV BP,OFFSET str2 ;address of str variable
    MOV CX,00047h ;number of characters of str
    MOV DH,04h
    MOV DL,04h
    INT 10h ;interrupt service
    ;!--
    MOV AH,02h
    MOV CX,0Dh
    MOV BL,21h
    MOV DH,04h
I:MOV AH,02h
    MOV BH,00h
    INC DH
    MOV DL,06h
    INT 10h
    MOV AH,02h
    MOV DL,BL
    INT 21h
    INC BL
    INT 10h
    LOOP I
    ;vertical "-" from f0-f14
    MOV AX,02h
    MOV CX,0Dh
    MOV BL,05h
f0:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,08h
    INT 10h
    MOV DL,2Dh
    INT 21h
    INC BL
    LOOP f0
    MOV AX,02h
    MOV CX,0Eh
    MOV BL,04h
f1:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,0Ch
    INT 10h
    MOV DL,186
    INT 21h
    INC BL
    LOOP f1
    MOV AX,02h
    MOV CX,0Dh
    MOV BL,05h
f2:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,11h
    INT 10h
    MOV DL,2Dh
    INT 21h
    INC BL
    LOOP f2
    MOV AX,02h
    MOV CX,0Eh
    MOV BL,04h
f3:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,15h
    INT 10h
    MOV DL,186
    INT 21h
    INC BL
    LOOP f3
    MOV AX,02h
    MOV CX,0Dh
    MOV BL,05h
f4:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,1Ah
    INT 10h
    MOV DL,2Dh
    INT 21h
    INC BL
    LOOP f4
    MOV AX,02h
    MOV CX,0Eh
    MOV BL,04h
f5:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,1Eh
    INT 10h
    MOV DL,186
    INT 21h
    INC BL
    LOOP f5
    MOV AX,02h
    MOV CX,0Dh
    MOV BL,05h
f6:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,23h
    INT 10h
    MOV DL,2Dh
    INT 21h
    INC BL
    LOOP f6
    MOV AX,02h
    MOV CX,0Eh
    MOV BL,04h
f7:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,27h
    INT 10h
    MOV DL,186
    INT 21h
    INC BL
    LOOP f7
    MOV AX,02h
    MOV CX,0Dh
    MOV BL,05h
f8:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,2Ch
    INT 10h
    MOV DL,2Dh
    INT 21h
    INC BL
    LOOP f8
    MOV AX,02h
    MOV CX,0Eh
    MOV BL,04h
f9:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,30h
    INT 10h
    MOV DL,186
    INT 21h
    INC BL
    LOOP f9
    MOV AX,02h
    MOV CX,0Dh
    MOV BL,05h
f10:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,35h
    INT 10h
    MOV DL,2Dh
    INT 21h
    INC BL
    LOOP f10
    MOV AX,02h
    MOV CX,0Eh
    MOV BL,04h
f11:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,39h
    INT 10h
    MOV DL,186
    INT 21h
    INC BL
    LOOP f11
    MOV AX,02h
    MOV CX,0Dh
    MOV BL,05h
f12:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,3Eh
    INT 10h
    MOV DL,2Dh
    INT 21h
    INC BL
    LOOP f12
    MOV AX,02h
    MOV CX,0Eh
    MOV BL,04h
f13:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,42h
    INT 10h
    MOV DL,186
    INT 21h
    INC BL
    LOOP f13
    MOV AX,02h
    MOV CX,03h
    MOV BL,05h
f14:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,47h
    INT 10h
    MOV DL,2Dh
    INT 21h
    INC BL
    LOOP f14
    ;21-29
    MOV AH,02h
    MOV CX,04h
    MOV DH,0Eh
    MOV BL,41h
I1:MOV AH,02h
    MOV BH,00h
    MOV DL,0Ah
    INT 10h
    MOV DL,32h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I1
    ;2A-2D
    MOV AH,02h
    MOV CX,09h
    MOV DH,05h
    MOV BL,31h
I2:MOV AH,02h
    MOV BH,00h
    MOV DL,0Ah
    INT 10h
    MOV DL,32h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I2
    ;2E-2F
    MOV AH,02h
    MOV CX,02h
    MOV DH,05h
    MOV BL,45h
I3:MOV AH,02h
    MOV BH,00h
    MOV DL,13h
    INT 10h
    MOV DL,32h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I3
    ;30-39
    MOV AH,02h
    MOV CX,0Ah
    MOV DH,07h
    MOV BL,30h
I4:MOV AH,02h
    MOV BH,00h
    MOV DL,13h
    INT 10h
    MOV DL,33h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I4
    ;3A
    MOV AH,02h
    MOV CX,01h
    MOV DH,11h
    MOV BL,41h
I5:MOV AH,02h
    MOV BH,00h
    MOV DL,13h
    INT 10h
    MOV DL,33h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I5
    ;3B-3F
    MOV AH,02h
    MOV CX,05h
    MOV DH,05h
    MOV BL,42h
I6:MOV AH,02h
    MOV BH,00h
    MOV DL,1Ch
    INT 10h
    MOV DL,33h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I6
    ;40-47
    MOV AH,02h
    MOV CX,08h
    MOV DH,0Ah
    MOV BL,30h
I7:MOV AH,02h
    MOV BH,00h
    MOV DL,1Ch
    INT 10h
    MOV DL,34h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I7
    ;48-49
    MOV AH,02h
    MOV CX,02h
    MOV DH,05h
    MOV BL,38h
I8:MOV AH,02h
    MOV BH,00h
    MOV DL,25h
    INT 10h
    MOV DL,34h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I8
    ;4A-4F
    MOV AH,02h
    MOV CX,06h
    MOV DH,07h
    MOV BL,41h
I9:MOV AH,02h
    MOV BH,00h
    MOV DL,25h
    INT 10h
    MOV DL,34h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I9
    ;50-54
    MOV AH,02h
    MOV CX,05h
    MOV DH,0Dh
    MOV BL,30h
I0:MOV AH,02h
    MOV BH,00h
    MOV DL,25h
    INT 10h
    MOV DL,35h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I0
    ;55-59
    MOV AH,02h
    MOV CX,05h
    MOV DH,05h
    MOV BL,35h
I01:MOV AH,02h
    MOV BH,00h
    MOV DL,2Eh
    INT 10h
    MOV DL,35h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I01
    ;5A-5F
    MOV AH,02h
    MOV CX,06h
    MOV DH,0Ah
    MOV BL,41h
I02:MOV AH,02h
    MOV BH,00h
    MOV DL,2Eh
    INT 10h
    MOV DL,35h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I02
    ;60-61
    MOV AH,02h
    MOV CX,02h
    MOV DH,10h
    MOV BL,30h
I03:MOV AH,02h
    MOV BH,00h
    MOV DL,2Eh
    INT 10h
    MOV DL,36h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I03
    ;62-69
    MOV AH,02h
    MOV CX,08h
    MOV DH,05h
    MOV BL,32h
I04:MOV AH,02h
    MOV BH,00h
    MOV DL,37h
    INT 10h
    MOV DL,36h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I04
    ;6A-6E
    MOV AH,02h
    MOV CX,05h
    MOV DH,0Dh
    MOV BL,41h
I05:MOV AH,02h
    MOV BH,00h
    MOV DL,37h
    INT 10h
    MOV DL,36h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I05
    ;6F
    MOV AH,02h
    MOV CX,01h
    MOV DH,05h
    MOV BL,46h
I06:MOV AH,02h
    MOV BH,00h
    MOV DL,40h
    INT 10h
    MOV DL,36h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I06
    ;70-79
    MOV AH,02h
    MOV CX,0Ah
    MOV DH,06h
    MOV BL,30h
I07:MOV AH,02h
    MOV BH,00h
    MOV DL,40h
    INT 10h
    MOV DL,37h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I07
    ;7A-7B
    MOV AH,02h
    MOV CX,02h
    MOV DH,10h
    MOV BL,41h
I08:MOV AH,02h
    MOV BH,00h
    MOV DL,40h
    INT 10h
    MOV DL,37h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I08
    ;7C-7E
    MOV AH,02h
    MOV CX,03h
    MOV DH,05h
    MOV BL,43h
I09:MOV AH,02h
    MOV BH,00h
    MOV DL,49h
    INT 10h
    MOV DL,37h
    INT 21h
    MOV DL,BL
    INT 21h
    INC BL
    INC DH
    LOOP I09
    ;.-:
    MOV AH,02h
    MOV CX,0Dh
    MOV BL,2Eh
    MOV DH,04h
qw:MOV AH,02h
    MOV BH,00h
    INC DH
    MOV DL,0Fh
    INT 10h
    MOV AH,02h
    MOV DL,BL
    INT 21h
    INC BL
    LOOP qw
    ;;-G
    MOV AH,02h
    MOV CX,0Dh
    MOV BL,3Bh
    MOV DH,04h
qwe:MOV AH,02h
    MOV BH,00h
    INC DH
    MOV DL,18h
    INT 10h
    MOV AH,02h
    MOV DL,BL
    INT 21h
    INC BL
    LOOP qwe
    ;H-T
    MOV AH,02h
    MOV CX,0Dh
    MOV BL,48h
    MOV DH,04h
we:MOV AH,02h
    MOV BH,00h
    INC DH
    MOV DL,21h
    INT 10h
    MOV AH,02h
    MOV DL,BL
    INT 21h
    INC BL
    LOOP we
    ;U-a
    MOV AH,02h
    MOV CX,0Dh
    MOV BL,55h
    MOV DH,04h
wer:MOV AH,02h
    MOV BH,00h
    INC DH
    MOV DL,2Ah
    INT 10h
    MOV AH,02h
    MOV DL,BL
    INT 21h
    INC BL
    LOOP wer
    ;b-n
    MOV AH,02h
    MOV CX,0Dh
    MOV BL,62h
    MOV DH,04h
er:MOV AH,02h
    MOV BH,00h
    INC DH
    MOV DL,33h
    INT 10h
    MOV AH,02h
    MOV DL,BL
    INT 21h
    INC BL
    LOOP er
    ;o-{
    MOV AH,02h
    MOV CX,0Dh
    MOV BL,6Fh
    MOV DH,04h
ert:MOV AH,02h
    MOV BH,00h
    INC DH
    MOV DL,3Ch
    INT 10h
    MOV AH,02h
    MOV DL,BL
    INT 21h
    INC BL
    LOOP ert
    ;|-~
    MOV AH,02h
    MOV CX,03h
    MOV BL,7Ch
    MOV DH,04h
rt:MOV AH,02h
    MOV BH,00h
    INC DH
    MOV DL,45h
    INT 10h
    MOV AH,02h
    MOV DL,BL
    INT 21h
    INC BL
    LOOP rt
    MOV AH,13h ;request for string display w/ attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,008Bh ;BLACK bg L RED blinking
    MOV BP,OFFSET str3 ;address of str variable
    MOV CX,0001Fh ;number of characters of str
    MOV DH,14h
    MOV DL,1Ah
    INT 10h ;interrupt service
    ;request
    MOV AH,02h
    MOV BH,00h
    MOV DH,13h
    MOV DL,19h
    INT 10h
    ;border left up
    MOV AH,02h
    MOV DL,218
    INT 21h
    ;border between right/left up
    MOV AH,02h
    MOV CX,01Fh
J:MOV DL,196
    INT 21h
    LOOP J
    ;border left down
    MOV AH,02h
    MOV DL,191
    INT 21h
    ;border left between up/down
    MOV AX,02h
    MOV CX,04h
    MOV BL,14h
K:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,19h
    INT 10h
    MOV DL,179
    INT 21h
    INC BL
    LOOP K
    MOV AH,02h
    MOV BH,00h
    MOV DH,15h
    MOV DL,1Ah
    INT 10h
    MOV AH,09h
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,00Bh ;(BLACK BG)(L RED TC)
    MOV CX,0019h ;number of characters to be displayed
    INT 10h
    MOV AH,09h
    MOV DX,OFFSET str4
    INT 21h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,020h ;(L CYAN BG)(BLACK TC)
    MOV CX,000Bh ;number of characters to be displayed
    INT 10h
    MOV AH,02h
    MOV BH,00h
    MOV DH,16h
    MOV DL,1Ah
    INT 10h
    MOV AH,09h
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,00Bh ;(BLACK BG)(L RED TC)
    MOV CX,0010h ;number of characters to be displayed
    INT 10h
    MOV AH,09h
    MOV DX,OFFSET str5
    INT 21h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,040h ;(Magenta BG)(BLACK TC)
    MOV CX,00016h ;number of characters to be displayed
    INT 10h
    ;request
    MOV AH,02h
    MOV BH,00h
    MOV DH,18h
    MOV DL,19h
    INT 10h
    ;border right up
    MOV AH,02h
    MOV DL,192
    INT 21h
    ;border between right/left down
    MOV AH,02h
    MOV CX,01Fh
L:MOV DL,196
    INT 21h
    LOOP L
    ;border right down
    MOV AH,02h
    MOV DL,217
    INT 21h
    ;border left between up/down
    MOV AX,02h
    MOV CX,04h
    MOV BL,14h
M:MOV AH,02h
    MOV BH,00h
    MOV DH,0Dh
    MOV DH,BL
    MOV DL,39h
    INT 10h
    MOV DL,179
    INT 21h
    INC BL
    LOOP M
    MOV AH,02h
    MOV BH,00h
    MOV DH,17h
    MOV DL,1Ah
    INT 10h
    MOV AH,09h
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,00Bh ;(BLACK BG)(L RED TC)
    MOV CX,0010h ;number of characters to be displayed
    INT 10h
    MOV AH,09h
    MOV DX,OFFSET str6
    INT 21h
    MOV AH,09h ;request character display with attributes
    MOV AL,00h ;do not advance cursor
    MOV BH,00h ;page=0
    MOV BL,010h ;(HIGH I-W BG)(BLACK TC)
    MOV CX,00016h ;number of characters to be displayed
    MOV AX,4C00h
    INT 21h
END