; 7) Escribir un programa en lenguaje assembly del MSX88 que implemente la 
; sentencia condicional de un lenguaje de alto nivel: 
;          IF A < B THEN C = A ELSE C = B. 
; Considerar que las variables de la sentencia están almacenadas en los
; registros internos de la CPU del siguiente modo A en AL, B en BL y C en CL.
; Determine las modificaciones que debería hacer al programa si la condición de la
; sentencia IF fuera:a) A ≤ B b) A = B

        ORG 1000H
    A DB 6
    B DB 5
    C DB 7

        ORG 2000H
    MOV AL,A
    MOV BL,B
    MOV CL,C
    CMP AL,BL
    JS THEN
    JMP ELSE
THEN:   MOV CL,AL
        JMP FINAL
ELSE:   MOV CL,BL
FINAL:  HLT
    END

;si la condición de la sentencia IF fuera:a) A ≤ B
;       ORG 2000H
;   MOV AL,A
;   MOV BL,B
;   MOV CL,C
;   CMP BL,AL
;   JNS THEN
;   JMP ELSE
;THEN:  MOV CL,AL
;       JMP FINAL
;ELSE:  MOV CL,BL
;FINAL: HLT
;   END

;si la condición de la sentencia IF fuera:b) A = B
;       ORG 2000H
;   MOV AL,A
;   MOV BL,B
;   MOV CL,C
;   CMP AL,BL
;   JZ THEN
;   JMP ELSE
;THEN:  MOV CL,AL
;       JMP FINAL
;ELSE:  MOV CL,BL
;FINAL: HLT
;   END