//	Realizar un programa que muestre la cantidad de n�meros que son m�ltiplos de 2 o de 3
//	comprendidos entre 1 y 100.
Algoritmo multiplos2y3
	Definir i, i2, i3 Como Entero
	i2 = 0
	i3 = 0
	Para i <- 1 Hasta 100 Con Paso 1 Hacer
		Si i % 2 == 0
			i2 = i2 + 1
		FinSi
		Si i % 3 == 0
			i3 = i3 + 1
		FinSi
	FinPara
	Escribir "Los m�ltiplos de 2 entre 1 y 100 son ", i2
	Escribir "Los m�ltiplos de 3 entre 1 y 100 son ", i3
FinAlgoritmo
