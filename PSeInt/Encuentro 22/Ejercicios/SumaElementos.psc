//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro
//subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y
//los resultados por pantalla.
Funcion resultado <- SumaElementosMatriz(matriz, M, N)
	Definir i, j, resultado Como Entero
	
	resultado = 0
	
	Para i = 0 Hasta M-1
		Para j = 0 Hasta N-1
			resultado = resultado + matriz[i, j]
		FinPara
	FinPara
FinFuncion

Algoritmo SumaElementos
	Definir M, N, suma Como Entero
	
	Escribir "Ingrese M y N respectivamente"
	Leer M, N 
	
	Definir matriz Como Entero
	Dimension matriz[M,N]
	
	LlenarMatriz(matriz, M, N, -10, 10)
	suma = SumaElementosMatriz(matriz, M, N)
	
	Escribir "La matriz es:"
	EscribirMatriz(matriz, M, N)
	Escribir "La suma de sus elementos es ", suma
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