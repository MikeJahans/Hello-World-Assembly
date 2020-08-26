DATA SEGMENT    ; declare data segment (declare variables)
     MESSAGE DB "Hello, World!$"   ; variable named message of type db (Define Byte), stores string "Hello, World!" - $ tells the compiler to stop
DATA ENDS     ; declare end point of data segment

CODE SEGMENT  ; declare code segment (code of program)
    ASSUME DS:DATA CS:CODE    ; assume the data and code segments belong to their respective registers (DS and CS)
START:       ; starting point of the code to be written in the code segment
        
      ; initialize data segment   
      MOV AX,DATA    
      MOV DS,AX  
       
      ; load and print the data stored in the "MESSAGE" variable 
      LEA DX,MESSAGE       
      MOV AH,9
      INT 21H           
      
      ; return to operating system (return control)
      MOV AH,4CH
      INT 21H  
          
CODE ENDS  ; declare end point of code segment

END START  ; ending point of start