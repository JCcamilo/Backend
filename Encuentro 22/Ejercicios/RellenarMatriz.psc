//Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//los muestre por pantalla.
SubProceso DefinirMatriz(matriz, M, N)
	Definir i, j, num Como Entero 
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			Escribir "Ingrese el valor de la posición (", i, ", ", j, ")" Sin Saltar
			Leer num
			matriz(i, j) = num
		FinPara
	FinPara
FinSubProceso

SubProceso EscribirMatriz(matriz, M, N)
	Definir i, j Como Entero
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			Escribir matriz(i, j), " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

Algoritmo RellenarMatriz
	Definir M, N Como Entero
	
	Escribir "Ingrese las dimensiones M y N respectivamente"
	Leer M, N
	
	Definir matriz Como Entero
	Dimension matriz[M, N]
	
	DefinirMatriz(matriz, M, N)
	EscribirMatriz(matriz, M, N)
FinAlgoritmo
