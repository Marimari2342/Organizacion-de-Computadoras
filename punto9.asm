; 9) Escribir un programa que, utilizando las mismas variables y datos que el programa
; del punto anterior (TABLA, FIN,TOTAL, MAX), determine cuántos de los elementos de 
; TABLA son menores o iguales que MAX. Dicha cantidad debe almacenarse en la celda TOTAL.


        ORG 1000H
    TOTAL DB ?
    TABLA DB 2,13,6,8,10,12,14,16,18,20
    FIN DB ?
    MAX DB 13

        ORG 2000H
    MOV AL, 0
    MOV CL, OFFSET FIN - OFFSET TABLA
    MOV BX, OFFSET TABLA
    MOV TOTAL,0
LOOP:   MOV AL, [BX]
        CMP AL,MAX
        JS NOCUMP
        INC TOTAL
NOCUMP: INC BX
        DEC CL
        JNZ LOOP
    HLT
    END