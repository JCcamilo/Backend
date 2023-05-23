//	Se debe realizar un programa que:
//	1o) Pida por teclado un número (entero positivo).
//	2o) Pregunte al usuario si desea introducir o no otro número.
//	3o) Repita los pasos 1o y 2o mientras que el usuario no responda n/N (no).
//	4o) Muestre por pantalla la suma de los números introducidos por el usuario.

Algoritmo ingresarNum
	Definir num, suma Como Entero
	Definir condicion Como Caracter
	suma = 0
	Hacer
		Escribir "Ingrese un número entero positivo"
		Leer num
		suma = suma + num
		Escribir "Ingrese n/N para detener"
		Leer condicion
	Mientras Que Mayusculas(condicion) <> "N"
	Escribir "La suma de los números es ", suma
FinAlgoritmo
