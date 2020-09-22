
ORG 100H
.DATA
    MSG1 DB "Lower-case: $"
    MSG2 DB "Upper-case: $"
.CODE
     MOV AX, @DATA   
     MOV DS, AX
     LEA DX, MSG1    
     MOV AH, 9
     INT 21H
     MOV AH, 1      
     INT 21H
     MOV BL, AL
     MOV AH, 2        
     MOV DL, 0DH
     INT 21H       
     MOV DL, 0AH              
     INT 21H
     LEA DX, MSG2  
     MOV AH, 9
     INT 21H
     SUB BL, 20H
     MOV AH, 2       
     MOV DL, BL
     INT 21H
RET