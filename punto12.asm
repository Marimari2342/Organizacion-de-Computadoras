; 12) Escribir un programa que, dado un número X, genere un arreglo con todos los 
; resultados que se obtienen hasta llegar a 0, aplicando la siguiente fórmula: si X 
; es par, se le resta 7; si es impar, se le suma 5, y al resultado se le aplica
; nuevamente la misma fórmula. Ej: si X = 3 entonces el arreglo tendrá: 
; 8, 1, 6, -1, 4, -3, 2, -5, 0.

        ORG 1000H
    X   DB 3
    ARR DB ?

        ORG 2000H
    MOV AL,X
    MOV BX,1002H
LOOP:   MOV AH,AL
        AND AH,1
        JNZ IMPAR
        SUB AL,7 ;PAR
        JMP SIG
IMPAR:  ADD AL,5
SIG:    MOV [BX],AL
        JZ FIN
        INC BX
        JMP LOOP
FIN:    HLT
    END