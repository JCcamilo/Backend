//Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos y ceros. 
//Llenando el marco o la delimitación externa de la matriz de unos y la parte interna de ceros.
//Por ejemplo, nuestro matriz final debería verse así:
//	111111111111111
//	100000000000001
//	100000000000001
//	100000000000001
//	111111111111111

Algoritmo MatrizExterior
	Definir i, j, N, M Como Entero
	
	Escribir "Ingrese las dimensiones de la matriz M y N respectivamente"
	Leer M, N
	
	Definir matriz Como Entero
	Dimension matriz[M,N]
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			Si i = 0 O j = 0 O i = M-1 O j = N-1
				matriz[i,j] = 1
			SiNo
				matriz[i,j] = 0
			FinSi
		FinPara
	FinPara
	
	EscribirMatriz(matriz, M, N)
FinAlgoritmo

//// SubProcesos auxiliares

SubProceso EscribirMatriz(matriz, M, N)
	Definir i, j Como Entero
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			Escribir matriz(i, j), "" Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinSubProceso