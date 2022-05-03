   # Registros

Tipos de regitros

   # Registros generales: 
Su función es el almacenamiento temporal de datos. Son los 13 registros que van R0 hasta R12

![image](https://user-images.githubusercontent.com/99301599/166501086-0c7ec7f4-1085-46bc-8b61-66e26ca7dbf7.png)


   # Registros especiales: 
Son los últimos 3 registros principales: R13, R14 y R15. Como son de propósito especial, tienen nombres alternativos

SP/R13. Stack Pointer ó Puntero de Pila: Sirve como puntero para almacenar variables locales y registros en llamadas a funciones.

LR/R14. Link Register ó Registro de Enlace: Almacena la dirección de retorno cuando una instrucción BL ó BLX ejecuta una llamada a una rutina

PC/R15. Program Counter ó Contador de Programa: Es un registro que indica la posición donde está el procesador en su secuencia de instrucciones.

![cc47f80e-f98e-4d82-b80a-254291cd5ad3](https://user-images.githubusercontent.com/99301599/166501032-58332c6e-b2a1-4fb6-9fe9-d47cde0f1a43.png)

   # Registros CPSR: 
Almacena las banderas condicionales y los bits de control. Los bits de control definen la habilitación de interrupciones normales (I), interrupciones rápidas (F), modo Thumb (T) y el modo de operación de la CPU

Existen 4 banderas y son las siguientes:
- N. Se activa cuando el resultado es negativo.
- Z. Se activa cuando el resultado es cero o una comparación es cierta.
- C. Indica acarreo en las operaciones aritméticas.
- V. Desbordamiento aritmético.

![image](https://user-images.githubusercontent.com/99301599/166501357-789bb8df-6c11-4ab4-9dbc-f50564dd2b66.png)



