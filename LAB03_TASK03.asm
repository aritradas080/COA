.MODEL SMALL
.STACK 100h
.DATA

MSG1 DB 'POSITIVE$'     
MSG2 DB 'NEGATIVE$'


.CODE

MAIN PROC

MOV AX,@DATA
MOV DS,AX   

MOV AH,1
INT 21H         
MOV BL,AL   

MOV AH,1
INT 21H
MOV BH,AL

MOV CL,30H

CMP BL,CL
JE POSITIVE
JL NEGATIVE
JG POSITIVE

POSITIVE:
LEA DX,MSG1
MOV AH,9
INT 21H
JMP END

NEGATIVE:
LEA DX,MSG2
MOV AH,9
INT 21H
JMP END



;PRINT_LOOP:
  
;LEA DX, MSG1
;MOV AH, 9
;INT 21h
;DEC CX

;JG PRINT_LOOP 



END:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN     




