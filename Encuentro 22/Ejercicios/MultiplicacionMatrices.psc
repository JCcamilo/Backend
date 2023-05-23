Funcion ProductoMatrices(A, M1, N1, B, M2, N2, C)
	Definir i, j, k, num Como Entero
	
	Para i = 0 Hasta M1-1
		Para j = 0 Hasta N2-1
			C[i,j] = 0
			
			Escribir "(" Sin Saltar
			Para k = 0 Hasta N1-1
				Escribir A[i,k], "*", B[k,j] Sin Saltar
				Si k < N1-1
					Escribir  " + " Sin Saltar
				FinSi
				
				C[i,j] = C[i,j] + A[i,k]*B[k,j]
			FinPara
			Escribir ") " Sin Saltar
		FinPara
		Escribir ""
	FinPara
FinFuncion

Algoritmo MultiplicacionMatrices
	Definir i, j, M1, N1, M2, N2 Como Entero
	
	Hacer
		Escribir "Ingrese las dimensiones de la matriz 1"
		Leer M1, N1
		Escribir "Ingrese las dimensiones de la matriz 2"
		Leer M2, N2
	Mientras Que N1 <> M2 O (M1 < 1 O N1 < 1 O M2 < 1 O N2 < 1)
	
	Definir matrizA, matrizB, resultado Como Entero
	Dimension matrizA[M1,N1], matrizB[M2,N2], resultado[M1, N2]
	
	LlenarMatriz(matrizA, M1, N1, 1, 9)
	LlenarMatriz(matrizB, M2, N2, 1, 9)
	
	Escribir "A"
	EscribirMatriz(matrizA, M1, N1)
	Escribir "B"
	EscribirMatriz(matrizB, M2, N2)
	
	ProductoMatrices(matrizA, M1, N1, matrizB, M2, N2, resultado)
	Escribir "C"
	EscribirMatriz(resultado, M1, N2)
FinAlgoritmo

//// SubProcesos Auxiliares

SubProceso LlenarMatriz(matriz, M, N, limInf, limSup)
	Definir i, j Como Entero
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			matriz(i, j) = Aleatorio(limInf, limSup)
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