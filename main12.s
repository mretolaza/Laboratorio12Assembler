@----------------------------------------------------------
@ Autor: María Mercedes Retolaza, 16339 
@ Laboratorio no.12 
@ Seccion: 1011
@ Descripcion: Se hace el llamado al proyecto que contiene las subrutinas y se maneja aquí la interacción con el usuario
@ Este es el menu principal, por lo tanto, no se tienen muchas instrucciones más que el manejo de notas. 
@----------------------------------------------------------

 .text
 .align 2
 .global main rutinas12
 
 
 main:
    stmfd sp!, {lr}
    mov r10,#10
    mov r9,#0
	
	
	@@parte de lectura de notas
	
	ldr r0,=mensaje
	ldr r1,=num1
	bl scanf
	mov r1,r0
	
	
	ldr r0,=mensaje
	ldr r1,=num2
	bl scanf
	mov r2,r0
	
	
	
	ldr r0,=mensaje
	ldr r1,=num3
	bl scanf
	mov r3,r0
	
	
	ldr r0,=mensaje
	ldr r1,=num4
	bl scanf
	mov r4,r0
	
	bl calculos
	
	VLDR S0,[R0]	@@retorno de subrutina
	LDR R1, =notaProyecto
	VMOV S1, [R1]
	VSUB.f32 S0,S0,F1
	VSTR R3, [S0]
	
	ldr r0,=num1
	ldr r1,R3
	bl scanf
	mov r1,r0
	
	
	
 .data:
 
 mensaje .asciz "A continuacion Ingrese una nota"
 num1: .word "%f/n"
 num2: .word "%f/n"
 num3: .word "%f/n"
 num4: .word "%f/n"
 
 notaProyecto: .float 0.61