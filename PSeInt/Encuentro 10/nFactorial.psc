////	La función factorial se aplica a números enteros positivos. El factorial de un número
////	entero positivo (n!) es igual al producto de los enteros positivos desde 1 hasta n:
////		n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
////	Escriba un programa que calcule las factoriales de todos los números enteros desde el 1
////	hasta el 5. El programa deberá mostrar la siguiente salida:
////		1! = 1
////		2! = 1*2 = 2
////		...
////		5! = 1*2*3*4*5 = 120
//Algoritmo nFactorialA
//	Definir num, i, j, factorial Como Entero
//	Definir text Como Caracter
//	factorial = 1
//	Hacer
//		Escribir "Ingrese un número entero"
//		Leer num
//	Mientras Que num <= 0
//	Para i <- 1 Hasta num Con Paso 1 Hacer
//		text = ""
//		Para j <- 1 Hasta i Con Paso 1 Hacer
//			Si j < i
//				text = text + ConvertirATexto(j) + "*"
//			SiNo
//				text = text + ConvertirATexto(j) + " = "
//			FinSi
//		FinPara
//		factorial = factorial * i
//		Si i > 1
//			Escribir i, "! = ", text, factorial
//		SiNo
//			Escribir i, "! = ", factorial
//		FinSi
//	FinPara
//FinAlgoritmo

Algoritmo nFactorialB
	Definir num, factorial, j, i Como Entero
	factorial = 1
	Hacer
		Escribir "Ingrese un número entero"
		Leer num
	Mientras Que num <= 0
	Para i = 1 Hasta num
		factorial = factorial * i
		Escribir i, "! = " Sin Saltar
		Para j = 1 Hasta i
			Si j = i
				Escribir j, " = " Sin Saltar
			SiNo
				Escribir j, "*" Sin Saltar
			FinSi
		FinPara
		Escribir factorial
	FinPara
FinAlgoritmo
	