; 13) Dada la frase "Organización y la Computación", almacenada en la memoria, 
; escriba un programa que determine cuantas letras ‘a’ seguidas de ‘c’ hay en ella.

ORG 1000H
LET_A DB  "a"
LET_C DB  "c"
MJE   DB  "Organizacion y la computacion"
FIN   DB  ?
TOT   DB  ?

ORG 2000H
MOV AL,0
MOV CL,OFFSET FIN - OFFSET MJE
MOV BX,OFFSET MJE
LOOP: MOV DL,[BX]
      CMP DL,LET_A
      JNZ NOCUMP
      INC BX
      DEC CL
      MOV DL,[BX]
      CMP DL,LET_C
      JZ CUMPLE
CUMPLE: INC AL
NOCUMP: INC BX
        DEC CL
        JNZ LOOP
      MOV TOT,AL
HLT
END