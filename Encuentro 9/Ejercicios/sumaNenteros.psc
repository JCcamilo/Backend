////	Escribir un programa que calcule la suma de los N primeros n�meros naturales.
////	El valor de N se leer� por teclado.
Algoritmo sumaNenteros
	Definir num, i, suma Como Entero
	suma = 0
	Hacer
		Escribir "Ingrese un n�mero entero"
		Leer num
	Mientras Que num <= 0
	Para i <- 1 Hasta num Con Paso 1 Hacer
		suma = suma + i
	FinPara
	Escribir "La suma de los primeros ", num, " n�meros, es: ", suma
FinAlgoritmo