@----------------------------------------------------------
@ Autor: Luis Diego Fernandez, 16344 
@ Autor: María Mercedes Retolaza, 16339 
@ Seccion: 1011
@ Descripcion: Se hace el llamado al proyecto que contiene las subrutinas y se maneja aquí la interacción con el usuario
@----------------------------------------------------------

.global _start
_start:



.data
  opcion: .asciz "  "
  nota1: .asciz "   "
  nota2: .asciz "   "
  nota3: .asciz "   "
  tamA: .asciz "    "
  tamB: .asciz "    "
  notanum1: .word 0
  notanum2: .word 0
  notanum3: .word 0
  str1: .asciz "Bienvenid@ al ingreso de Notas:\n  1. Ingreso de notas\n  2. Nota mayor\n  3. Salir\nOpcion:\n"
  str2: .asciz "Ingrese tres notas:\n"