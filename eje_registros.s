@---------------
@ Data Section
@---------------

.data

@ Variables que se usaran durante la operacion
@ .word significa que es formato de 16-bits
@ Nota: son valores hexadecimales
var1 : .word 0x12345678
var2 : .word 0x87654321

.text
.global main

@---------------
@ Code Section
@---------------

	@ Empezamos copiando el posicionamiento de las variables a los siguientes registros
	@ Nota: el valor de la variables no se mueve, se copia
	@ Estos valores representan la parte de los registros ax (16bits)
main : 	ldr r0, = var1
	ldr r1, = var2

	@ la h al final de ldrh significa halfword
	@ Es decir copiaremos la parte baja del valor
	@ Ejemplo si el valor es 12345678, su halfword es 5678
	@ Como el valor original era 16bits  ahora son 8bits
	@ Estos valores representan los registros al (8bits parte baja)
	ldrh r3, [ r0 ]
	ldrh r4, [ r1 ]

	@ 16bits = 8x8bits
	muls r5, r3, r4
	@ flags N=0 Z=0 C=1 V=0

	@ Se sobreescriben los valores, a los valores originales
	@ Aqui utilisamos los valores  en formato de 16bits
	@ Es decir estamos en los registros ax
	ldr r3, [ r0 ]
	ldr r4, [ r1 ]

	@ 32bits representan los registros eax = 16*16bits  sin signo
	umulls r5, r6, r3, r4
        @ flags N=0 Z=0 C=1 V=0

	@ 32bits representan los registros eax = 16*16bits con signo
	smulls r5, r6, r3, r4
        @ flags N=1 Z=0 C=1 V=0
