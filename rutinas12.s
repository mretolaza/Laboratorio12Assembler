@----------------------------------------------------------
@ rutinas.s
@ Autor: María Mercedes Retolaza, 16339 
@ Laboratorio no.12 
@ Seccion: 1011
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

.text
 .align 2
 .global rutinas12

 @En la siguiente Subrutina se realiza el procedimiento de obtener el promedio de las 
 @notas del estudiante 
 
 rutinas12:
 	@ingreso de datos (se transfieren a los registros que manejan floats)
	VLRD S0, [r0] 
	VLRD S1, [r1]
	VLRD S2, [r2]
	VLRD S3, [r3]
	@se realiza la suma de los datos y se convierten a .32 bytes 
	VADD.f32 S0, S0,S1
	VADD.f32 S2, S2,S3

	VADD.f32 S0,S1  	@@Aqui se realiza la suma de las cuatro notas
	
	LDR R1, =numerodiv
	VLDR S1, [R1]		@@Aqui se almacena el registro por el cual lo vamos a dividir que esta en s1->0.4
	VMUL.f32 S0,S0,S1	@@Aqui se realiza la suma de las notas x 0.4
	VSTR R0,[S0]			@@Aqui se encuentra el valor final esta  en el registro --> r0
	
	MOV PC LR  

.data

numerodiv: float 0.4