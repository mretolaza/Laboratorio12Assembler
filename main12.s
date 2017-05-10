@----------------------------------------------------------
@ Laboratorio no.12 
@ Autor: María Mercedes Retolaza, 16339 
@ Seccion: 10
@ Descripcion: Se utilizan subrutinas para realizar la aplicacion del float. Se ingresan notas de un estudiante y 
@ se devuelve si el estudiante ha aprobado o no. 
@----------------------------------------------------------

.global _start
_start:

menu:  
  @ Inicio del programa 
  mov r7, #4 @ Indicar que es un print
  mov r0, #1 @ indicar que sera un output del monitor
  mov r2, #89 @ Tamanio de la cadena
  ldr r1, =str1 @ Valor de cadena
  swi 0

 @ Solicitar ingreso de datos
  mov r7, #3 @ Indicar que es un scan
  mov r0, #0 @ Indicar que sera del teclado
  mov r2, #2 @ Tamaño del input (2 numeros + enter)
  ldr r1, =opcion @ Direccion a donde se guardara
  swi 0

  ldr r0, =opcion
  bl str_to_num_1_digit









salir:
  mov r7, #1
  swi 0

.data
  opcion: .asciz "  "
  nota1:  .asciz "   "
  nota2:  .asciz "   "
  nota3:  .asciz "   "
  tamA:   .asciz "    "
  tamB:   .asciz "    "
  notanum1: .word 0
  notanum2: .word 0
  notanum3: .word 0
  str1: .asciz "Bienvenid@ al ingreso de Notas:\n  1. Ingreso de notas\n  2. Nota mayor\n  3. Salir\nOpcion:\n"
  str2: .asciz "Ingrese tres notas:\n"

