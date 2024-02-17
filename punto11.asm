; 11) Escribir un programa que genere una tabla a partir de la dirección de memoria
; almacenada en la celda DIR con los múltiplos de 5 desde cero hasta MAX.

ORG 1000H
MAX DW 15
DIR DW 1002H

ORG 2000H
MOV AX,0
MOV BX,DIR
CARGA:  MOV [BX],AX
        ADD BX,2
        ADD AX,5
        CMP MAX,AX
        JNS CARGA
HLT
END