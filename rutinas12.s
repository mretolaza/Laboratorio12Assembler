@----------------------------------------------------------
@ rutinas.s
@ Autor: María Mercedes Retolaza, 16339 
@ Laboratorio no.12 
@ Seccion: 10
@ Descripcion: 
@----------------------------------------------------------
@ *************************************************************
@Subrutina que realiza una division entre 4 numeros (A+B+C+D/4)
@Parametros:
@  r0: numero 1 (A)
@  r1: numero 2 (B)
@  r2: numero 3 (C)
@  r3: numero 4 (D)
@Retorna:
@  r0: resultado
@  r1: residuo
@ *************************************************************
.global dividir
dividir:
    push {lr}

    @ se reinician los valores de los registros donde iran a guardar  los resultados
    mov r2, #0
    mov r3, r0 @asignamos el residuo como A

    inicio_div:
        cmp r3,r1
        blt fin_div     @terminar ya que B es mas grande que el residuo
        sub r3,r3,r1    @residuo = residuo-B
        add r2,r2,#1    @resultado = resultado+1
        b inicio_div
    fin_div:

    mov r0, r2
    mov r1, r3

    pop {pc}


    @subrutina str_to_num (Convierte un valor string en un valor integer)
    @r0: cadena
    @salida r0: numero