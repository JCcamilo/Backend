//Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro
//subproceso para imprimir la matriz.
SubProceso Diagonal(matriz, DIM, elem) // Solo funciona con matrices cuadradas
	Definir i Como Entero
	
	Para i = 0 Hasta DIM-1
		matriz[i, i] = elem
	FinPara
FinSubProceso

Algoritmo DiagonalPrincipal
	Definir DIM Como Entero
	
	Escribir "Ingrese la dimension de la matriz cuadrada"
	Leer DIM
	
	Definir matriz Como Entero	
	Dimension matriz[DIM, DIM]

	LlenarMatriz(matriz, DIM, DIM, 1, 9)
	EscribirMatriz(matriz, DIM, DIM)
	Escribir ""
	Escribir "Se cambian la diagonal de la matriz"
	Escribir ""
	Diagonal(matriz, DIM, 0)
	EscribirMatriz(matriz, DIM, DIM)
	
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