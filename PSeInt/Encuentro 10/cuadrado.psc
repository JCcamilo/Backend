////	Realizar un programa que lea un n�mero entero (tama�o del lado) y a partir de �l cree
////	un cuadrado de asteriscos de ese tama�o. Los asteriscos s�lo se ver�n en el borde del
////	cuadrado, no en el interior. Por ejemplo, si se ingresa el n�mero 4 se debe mostrar:
////		* * * *
////		*     *
////		*     *
////		* * * *
////	Nota: Recordar el uso del escribir sin saltar en PseInt.
//Algoritmo cuadradoA
//	Definir dim, i Como Entero
//	Definir exterior, interior Como Caracter
//	exterior = ""
//	interior = ""
//	Hacer
//		Escribir "Ingrese la longitud del lado de un cuadrado"
//		Leer dim
//	Mientras Que dim <= 0
//	Para i = 1 Hasta dim Hacer
//		exterior = exterior + "*"
//		Si i = 1 O i = dim
//			interior = interior + "*"
//		SiNo
//			interior = interior + " "
//		FinSi
//	FinPara
//	Para i = 1 Hasta dim Con Paso 1 Hacer
//		Si i = 1 O i = dim
//			Escribir exterior
//		SiNo
//			escribir interior
//		FinSi
//	FinPara
//FinAlgoritmo

Algoritmo cuadradoB
	Definir dim, i, j Como Entero
	Hacer
		Escribir "Ingrese la longitud del lado de un cuadrado"
		Leer dim
	Mientras Que dim <= 0
	Para i = 1 Hasta dim Hacer
		Para j = 1 Hasta dim Hacer
			Si (i = 1 O i = dim) O (j = 1 O j = dim)
				Escribir Sin Saltar "*"
			SiNo
				Escribir Sin Saltar " "
			FinSi
		FinPara
		Escribir ""
	FinPara
FinAlgoritmo
