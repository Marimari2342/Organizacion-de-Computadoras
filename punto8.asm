; Punto 8 - Práctica 4

        ORG 1000H
TOTAL DB 0
TABLA DB 2,4,6,8,10,12,14,16,18,20
FIN DB ?
MAX DB 13

        ORG 2000H
    MOV AL, 0
    MOV CL, OFFSET FIN - OFFSET TABLA
    MOV BX, OFFSET TABLA
SUMA:   ADD AL, [BX]
        INC BX
        DEC CL
        JNZ SUMA
    MOV TOTAL,AL
    HLT
    END