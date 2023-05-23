////	Escriba un programa que lea un número entero (altura) y a partir de él cree una escalera
////	invertida de asteriscos con esa altura. Por ejemplo, si ingresamos una altura de 5 se
////	deberá mostrar:
////	*****
////	****
////	***
////	**
////	*

Algoritmo escaleraA
	Definir altura, i Como Entero
	Definir text Como Caracter
	text = ""
	Hacer
		Escribir "Ingrese un número entero para la altura"
		Leer altura
	Mientras Que altura <= 0
	Para i = 1 Hasta altura Hacer
		text = text + "*"
	FinPara
	Para i = altura-1 Hasta 0 Con Paso -1 Hacer
		Escribir Subcadena(text,0,i)
	FinPara
FinAlgoritmo

//Algoritmo escaleraB
//	Definir altura, i, j Como Entero
//	Hacer
//		Escribir "Ingrese un número entero para la altura"
//		Leer altura
//	Mientras Que altura <= 0
//	Para i = altura Hasta 1 Con Paso -1 Hacer
//		Para j = 1 Hasta i Hacer
//			Escribir Sin Saltar "*"		
//		FinPara
//		Escribir ""
//	FinPara
//FinAlgoritmo
