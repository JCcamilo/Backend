////	Escribir un programa que calcule la suma de los N primeros números naturales.
////	El valor de N se leerá por teclado.
Algoritmo sumaNenteros
	Definir num, i, suma Como Entero
	suma = 0
	Hacer
		Escribir "Ingrese un número entero"
		Leer num
	Mientras Que num <= 0
	Para i <- 1 Hasta num Con Paso 1 Hacer
		suma = suma + i
	FinPara
	Escribir "La suma de los primeros ", num, " números, es: ", suma
FinAlgoritmo