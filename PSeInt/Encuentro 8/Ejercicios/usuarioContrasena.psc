//Realizar un programa que solicite al usuario su c�digo de usuario (un n�mero entero
//mayor que cero) y su contrase�a num�rica (otro n�mero entero positivo). El programa no
//le debe permitir continuar hasta que introduzca como c�digo 1024 y como contrase�a
//4567. El programa finaliza cuando ingresa los datos correctos.

Algoritmo usuarioContrasena
	Definir usuario, contrasena Como Entero
	Hacer
		Escribir "Ingrese su usuario:"
		Leer usuario
		Escribir "Ingrese su contrase�a:"
		Leer contrasena
	Mientras Que (usuario <> 1024) O (contrasena <> 4567) // No(usuario = 1024 Y contrasena = 4567)
FinAlgoritmo
