//	Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar
//	una clave. S�lo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deber�
//	mostrar un mensaje indic�ndonos que hemos agotado esos 3 intentos. Si acertamos la
//	clave se deber� mostrar un mensaje que indique que se ha ingresado al sistema correctamente.
Algoritmo eureka
	Definir intento Como Real
	Definir contrasena Como Caracter
	Definir condicion Como Logico
	intento = 0
	Hacer
		Escribir "Ingrese la clave"
		Leer contrasena
		condicion = contrasena == "eureka"
		Si condicion
			Escribir "Ha ingresado al sistema correctamente"
		FinSi
		intento = intento + 1
	Mientras Que intento < 3 Y No(condicion)
FinAlgoritmo
	