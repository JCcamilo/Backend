//Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las
//coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En
//caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.
SubProceso BuscarMatriz(matriz, M, N, num)
	Definir i, j Como Entero
	Definir existencia Como Logico
	
	existencia = Falso
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			Si matriz(i, j) == num
				Escribir num, " se encuentra en (", i, ", ", j, ")"
				existencia = Verdadero
			FinSi
		FinPara
	FinPara
	
	Si No(existencia)
		Escribir num, " no existe en la matriz"
	FinSi
FinSubProceso

Algoritmo BusquedaLineal
	Definir M, N Como Entero
	
	M = 5
 	N = 5
	
	Definir matriz Como Entero
	Dimension matriz[M, N]
	
	LlenarMatriz(matriz, M, N, 0, 9)
	EscribirMatriz(matriz, M, N)
	BuscarMatriz(matriz, M, N, 7)
	
	
FinAlgoritmo

//// SubProcesos auxiliares

SubProceso EscribirMatriz(matriz, M, N)
	Definir i, j Como Entero
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			Escribir matriz(i, j), " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso LlenarMatriz(matriz, M, N, limInf, limSup)
	Definir i, j Como Entero
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			matriz(i, j) = Aleatorio(limInf, limSup)
		FinPara
	FinPara
FinSubProceso